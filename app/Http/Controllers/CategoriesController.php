<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;


//tao model: php artisan make:model Categories

//doi tuong thao tac csdl
use DB;
//muon su dung model Categories thi phai khai bao o day - > su dng eloquent
use App\Models\Categories;
//doi tuong kiem tra du lieu
use Validator;


class CategoriesController extends Controller
{
    //tao bien $model (la mot bien ben trong class categoriesController)
    public $model;
    //ham tao
    public function __construct(){
        //gan bien $model tro thanh bien object cua class categories
        $this->model = new categories();
    }
    //lay danh sach cac ban ghi
    public function read(){
        //lay du lieu tuham modelRead cua class categories
        $data = $this->model->modelRead();
        //goi view, truyen du lieu ra view
        return view("backend.categories_read",["data"=>$data]);
    }
    //update
    public function update($id){
        //tao mot action de dua vao thuoc tinh action cua the form
        $action = url("admin/categories/update/$id");
        //lay mot ban ghi
        $record = $this->model->modelGetRecord($id);
        return view("backend.categories_create_update",["record"=>$record,"action"=>$action]);
    }
    //update post
    public function updatePost($id){
        $this->model->modelUpdate($id);
        return redirect(url('admin/categories'));
    }
    //create
    public function create(Request $request){
        //tao mot action de dua vao thuoc tinh action cua the form
        $action = url("admin/categories/create");
        return view("backend.categories_create_update",["action"=>$action]);
    }
    //create post
    public function createPost(Request $request){
        $this->model->modelCreate();
        return redirect(url('admin/categories'));
    }
    //delete
    public function delete(Request $request,$id){
        $this->model->modelDelete($id);
        return redirect(url('admin/categories'));
    }
}
