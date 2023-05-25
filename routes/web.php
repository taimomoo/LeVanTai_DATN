<?php

use App\Http\Controllers\homeAdminConrtroller;
use Illuminate\Support\Facades\Route;
//khai bao cac class controller o day
use App\Http\Controllers\UsersController;
use App\Http\Controllers\CustomersController;
use App\Http\Controllers\CategoriesController;
use App\Http\Controllers\ProductsController;
use App\Http\Controllers\NewsController;
use App\Http\Controllers\OrdersController;
use App\Http\Controllers\cartController;


//url: public/login
Route::get('admin/login',function(){
    return view('backend.login');
});
//sau khi an nut submit login
Route::post('admin/login',function(){
    $email = request("email");
    $password = request("password");
    //Auth::Attempt -> tra ve true neu email, password khop voi bang users
    if(Auth::Attempt(["email"=>$email,"password"=>$password]))
        return redirect(url('admin/users'));
    else
        return redirect(url('admin/login'));
});
//url: public/logout -> dang xuat
Route::get("admin/logout",function(){
    Auth::logout(); //Auth la doi tuong co san cua laravel
    return redirect(url('admin/login'));//di chuyen den mot url khac
});
Route::group(["prefix"=>"admin","middleware"=>"checklogin"],function(){
    //---
    //chuc nang users - CRUD
    route::get('index', [homeAdminConrtroller::class, 'index'])->name('index');
    //read
    Route::get("users",[UsersController::class,"read"]);
    //update - GET
    Route::get("users/update/{id}",[UsersController::class,"update"]);
    //update - POST
    Route::post("users/update/{id}",[UsersController::class,"updatePost"]);
    //create - GET
    Route::get("users/create",[UsersController::class,"create"]);
    //create - POST
    Route::post("users/create",[UsersController::class,"createPost"]);
    //delete
    Route::get("users/delete/{id}",[UsersController::class,"delete"]);
    //---
    //---
    //chuc nang news - CRUD
    //read
    Route::get("news",[NewsController::class,"read"]);
    //update - GET
    Route::get("news/update/{id}",[NewsController::class,"update"]);
    //update - POST
    Route::post("news/update/{id}",[NewsController::class,"updatePost"]);
    //create - GET
    Route::get("news/create",[NewsController::class,"create"]);
    //create - POST
    Route::post("news/create",[NewsController::class,"createPost"]);
    //delete
    Route::get("news/delete/{id}",[NewsController::class,"delete"]);
    //---
    //---
    //chuc nang categories - CRUD
    //read
    Route::get("categories",[CategoriesController::class,"read"]);
    //update - GET
    Route::get("categories/update/{id}",[CategoriesController::class,"update"]);
    //update - POST
    Route::post("categories/update/{id}",[CategoriesController::class,"updatePost"]);
    //create - GET
    Route::get("categories/create",[CategoriesController::class,"create"]);
    //create - POST
    Route::post("categories/create",[CategoriesController::class,"createPost"]);
    //delete
    Route::get("categories/delete/{id}",[CategoriesController::class,"delete"]);
    //---

    //---
    //chuc nang products - CRUD
    //read
    Route::get("products",[ProductsController::class,"read"]);
    //update - GET
    Route::get("products/update/{id}",[ProductsController::class,"update"]);
    //update - POST
    Route::post("products/update/{id}",[ProductsController::class,"updatePost"]);
    //create - GET
    Route::get("products/create",[ProductsController::class,"create"]);
    //create - POST
    Route::post("products/create",[ProductsController::class,"createPost"]);
    //delete
    Route::get("products/delete/{id}",[ProductsController::class,"delete"]);
    //---
    //---
    //chuc nang products - CRUD
    //read
    Route::get("orders",[OrdersController::class,"read"]);
    //delivery
    Route::get("orders/delivery/{order_id}",[OrdersController::class,"delivery"]);
    //detail
    Route::get("orders/detail/{order_id}",[OrdersController::class,"detail"]);
    
    route::get('export/{id}', [OrdersController::class, 'export'])->name('export');

    Route::get('/revenue-chart', [homeAdminConrtroller::class, 'index'])->name('revenue.chart');

    
    //---
    
});

//----------------------frontend-----------------------

//trang chu
Route::get('/', function () {
    return view('frontend.home');
});
//login
Route::get('login', function () {
    return view('frontend.login');
});
// //sau khi an nut submit login
// Route::post('login',function(){
//     $email = request("email");
//     $password = request("password");
//     //Auth::Attempt -> tra ve true neu email, password khop voi bang users
//     if(Auth::Attempt(["email"=>$email,"password"=>$password]))
//         return redirect(url(''));
//     else
//         return redirect(url('login'));
// });
Route::post('/login-customer',[CustomersController::class, 'login_customer'])->name('login-customer');
Route::get('logout',[CustomersController::class, 'logout_checkout'])->name('logout');
Route::get('login',[CustomersController::class, 'return_login'])->name('login');
//url: public/logout -> dang xuat
route::post('register', [CustomersController::class, 'createPost'])->name('action');
//regiter
Route::get('register', function () {
    return view('frontend.register');
});
//chuc nang users - CRUD
    //create - GET
    Route::get("register/create",[CustomersController::class,"create"]);
    //create - POST
    Route::post("register/create",[CustomersController::class,"createPost"]);
    //---
//trang danh muc
Route::get('category/{category_id}', function ($category_id) {
    return view('frontend.category',["category_id"=>$category_id]);
});
//trang chi tiet
Route::get('detail/{id}', function ($id) {
    return view('frontend.detail',["id"=>$id]);
});
Route::get('news', function () {
    return view('frontend.news');
});
Route::get('news/detail/{id}', function ($id) {
    return view('frontend.newsdetail',["id"=>$id]);
});
// Route::get('cart', function () {
//     return view('frontend.cart');
// });

// cart
Route::post('/cart', [cartController::class, 'save'])->name('cart');
Route::get('/cart', [cartController::class, 'showCart'])->name('cart');
Route::get('/delete_cart/{rowId}', [cartController::class, 'delete'])->name('delete_cart');
Route::post('/update_cart', [cartController::class, 'update'])->name('update_cart');
Route::post('/order-place',[cartController::class, 'order_place'])->name('order-place');
route::get('/search', [ProductsController::class, 'search'])->name('search');


