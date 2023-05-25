<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

//trong Model muon su dung doi tuong nao thi phai khai bao doi tuong do
//su dung doi tuong DB de thao tac csdl
use DB;
//doi tuong de lay GET,POST,FILE
use Request; 
class Categories extends Model
{
    //ham lay cac ban ghi co phan trang
    protected $table = 'category';
    public function modelRead(){
        $data = DB::table("category")->orderBy("id","desc")->paginate(10);
        return $data;
    }
    
        //lay mot ban ghi tuong ung voi id truyen vao
        public function modelGetRecord($id){
            $record = DB::table("category")->where("id","=",$id)->first();
            return $record;
        }
    public function modelUpdate($id){
        $name = request("name");
        $description = request("description");
        
        
        //update ban ghi
        DB::table("category")->where("id","=",$id)->update(["name"=>$name,"description"=>$description]);
        //neu co anh thi upload anh
        if(Request::hasFile("image")){
            //---
            //lay anh de xoa
            //select("image") -> chi lay truong du lieu co ten la image trong table category
            $oldimage = DB::table("category")->where("id","=",$id)->select("image")->first();
            if(isset($oldimage->image) && file_exists('upload/category/'.$oldimage->image)&&$oldimage!="")
                unlink('upload/category/'.$oldimage->image);
            //---
            $image = time()."_".Request::file("image")->getClientOriginalName();
            //thuc hien upload anh
            Request::file("image")->move("upload/category",$image);
            //update ban ghi
            DB::table("category")->where("id","=",$id)->update(["image"=>$image]);
        }
    }
    //create
    public function modelCreate(){
        $name = Request::get("name");
        $description = Request::get("description");      
        $image = "";        
        //neu co anh thi upload anh
        if(Request::hasFile("image")){
            $image = time()."_".Request::file("image")->getClientOriginalName();
            //thuc hien upload anh
            Request::file("image")->move("upload/category",$image);
        }
        //update ban ghi
        DB::table("category")->insert(["name"=>$name,"description"=>$description,"image"=>$image]);
    }
    public function modelDelete($id){
        //---
        //lay anh cu de xoa
        $oldimage = DB::table("category")->where("id","=",$id)->select("image")->first();
        if(isset($oldimage->image) && file_exists('upload/category/'.$oldimage->image)&&$oldimage->image!="")
            unlink('upload/category/'.$oldimage->image);
        //---
        DB::table("category")->where("id","=",$id)->delete();
    }
}