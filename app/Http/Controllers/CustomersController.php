<?php

namespace App\Http\Controllers;

use App\Models\Customer;
use App\Models\Products;
use Illuminate\Http\Request;
//trong controller muon su dung doi tuong nao thi phai khai bao o day
//doi tuong thao tac csdl
use DB;
//doi tuong ma hoa password
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Redirect;

use Hash;

//thuc hien Query Builder: su dung doi tuong DB

class CustomersController extends Controller
{
    public function create()
    {
        //tao mot action de dua vao thuoc tinh action cua the form
        $action = url("register");
        return view("frontend.register", ["action" => $action]);
    }
    //create - POST
    public function createPost()
    {
        $email = request("email");
        $name = request("name");
        $password = request("password");
        $address = request("address");
        $phone_number = request("phone_number");

        //ma hoa password
        $password = Hash::make($password);
        //kiem tra xem email da ton tai chua, nua chua ton tai thi moi cho insert
        //Count() -> tra ve so luong ban ghi truy van
        $countEmail = DB::Table("customer")->where("email", "=", $email)->Count();
        if ($countEmail == 0) {
            //update name
            DB::Table("customer")->insert(["name" => $name, "email" => $email, "password" => $password, "address" => $address, "phone_number" => $phone_number]);
            //di chuyen den mot url khac
            return redirect(url(""));
        } else
            return redirect(url("register/create?notify=emailExists"));

    }

    public function login_customer(Request $req)
    {
        $req->validate(
            [
                'userEmail' => 'exists:customer,email'
            ],
            [
                'exists' => 'Email không đúng.'
            ]
        );
        $email = $req->userEmail;
        $pass = Hash::make($req->userPass);
        $res = Customer::where('email', $email)->first();
        if ($res) {
            Session::put('id', $res->id);
            Session::put('email', $req->userEmail);
            return Redirect::to('/');
        } else {
            return Redirect('/login');
        }
    }
    public function return_login()
    {
        return view('frontend.login');
    }
    public function logout_checkout()
    {
        Session::flush();
        return Redirect('/login');
    }

    // public function search(Request $request)
    // {
    //     $products = Products::where('name', 'like', '%' . $request->key . '%')->paginate(20);

    //     return view('frontend.category', compact('products'));
    // }
}