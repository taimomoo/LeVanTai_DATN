<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

//tao model: php artisan make:model Products

//doi tuong thao tac csdl
use DB;
//muon su dung model Products thi phai khai bao o day - > su dng eloquent
use App\Models\Products;
//doi tuong kiem tra du lieu
use Validator;


class ProductsController extends Controller
{
    //tao bien $model (la mot bien ben trong class ProductsController)
    public $model;
    //ham tao
    public function __construct(){
        //gan bien $model tro thanh bien object cua class Products
        $this->model = new Products();
    }
    //lay danh sach cac ban ghi
    public function read(){
        //lay du lieu tuham modelRead cua class Products
        $data = $this->model->modelRead();
        //goi view, truyen du lieu ra view
        return view("backend.Products_read",["data"=>$data]);
    }
    //update
    public function update($id){
        //tao mot action de dua vao thuoc tinh action cua the form
        $action = url("admin/products/update/$id");
        //lay mot ban ghi
        $record = $this->model->modelGetRecord($id);
        return view("backend.Products_create_update",["record"=>$record,"action"=>$action]);
    }
    //update post
    public function updatePost($id){
        $this->model->modelUpdate($id);
        return redirect(url('admin/products'));
    }
    //create
    public function create(Request $request){
        //tao mot action de dua vao thuoc tinh action cua the form
        $action = url("admin/products/create");
        return view("backend.Products_create_update",["action"=>$action]);
    }
    //create post
    public function createPost(Request $request){
        $this->model->modelCreate();
        return redirect(url('admin/products'));
    }
    //delete
    public function delete(Request $request,$id){
        $this->model->modelDelete($id);
        return redirect(url('admin/products'));
    }

    public function search(Request $request){
        $product = Products::where('name', 'LIKE', '%' . $request->key . '%')->paginate(20);
        return view('frontend.search', compact('product'));
    }
}
