<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

//trong Model muon su dung doi tuong nao thi phai khai bao doi tuong do
//su dung doi tuong DB de thao tac csdl
use DB;
//doi tuong de lay GET,POST,FILE
use Request; 

class Products extends Model
{
    protected $table = 'product';
    //ham lay cac ban ghi co phan trang
    public function modelRead(){
        $data = DB::table("product")->orderBy("id","desc")->paginate(20);
        return $data;
    }
    //update
    public function modelGetRecord($id){
        $record = DB::table("product")->where("id","=",$id)->first();
        return $record;
    }
    //update
    public function modelUpdate($id){
        $name = request("name");
        $description = request("description");
        $content = request("content");
        $price = request("price");
        $sl = request("sl");
        $discount = request("discount");
        $baohanh = request("baohanh");
        $status = request("status");
        $category_id = request("category_id");
        $hot = request("hot") != "" ? 1 : 0;
        //update ban ghi
        DB::table("product")->where("id","=",$id)->update(["name"=>$name,"description"=>$description,"content"=>$content,"price"=>$price,"discount"=>$discount,"baohanh"=>$baohanh,"status"=>$status,"category_id"=>$category_id,"hot"=>$hot]);
        //neu co anh thi upload anh
        if(Request::hasFile("image")){
            //---
            //lay anh de xoa
            //select("image") -> chi lay truong du lieu co ten la image trong table product
            $oldimage = DB::table("product")->where("id","=",$id)->select("image")->first();
            if(isset($oldimage->image) && file_exists('upload/product/'.$oldimage->image)&&$oldimage!="")
                unlink('upload/product/'.$oldimage->image);
            //---
            $image = time()."_".Request::file("image")->getClientOriginalName();
            //thuc hien upload anh
            Request::file("image")->move("upload/product",$image);
            //update ban ghi
            DB::table("product")->where("id","=",$id)->update(["image"=>$image]);
        }
    }
    //create
    public function modelCreate(){
        $name = Request::get("name");
        $description = Request::get("description");
        $content = Request::get("content");
        $price = Request::get("price");
        $sl = Request::get("sl");
        $discount = Request::get("discount");
        $baohanh = Request::get("baohanh");
        $status = Request::get("status");
        $category_id = Request::get("category_id");
        $hot = Request::get("hot") != "" ? 1 : 0;
        $image = "";        
        //neu co anh thi upload anh
        if(Request::hasFile("image")){
            $image = time()."_".Request::file("image")->getClientOriginalName();
            //thuc hien upload anh
            Request::file("image")->move("upload/product",$image);
        }
        //update ban ghi
        DB::table("product")->insert(["name"=>$name,"description"=>$description,"content"=>$content,"price"=>$price, "sl"=>$sl,"discount"=>$discount,"baohanh"=>$baohanh,"status"=>$status,"category_id"=>$category_id,"hot"=>$hot,"image"=>$image]);
    }
    public function modelDelete($id){
        //---
        //lay anh cu de xoa
        $oldimage = DB::table("product")->where("id","=",$id)->select("image")->first();
        if(isset($oldimage->image) && file_exists('upload/product/'.$oldimage->image)&&$oldimage->image!="")
            unlink('upload/product/'.$oldimage->image);
        //---
        DB::table("product")->where("id","=",$id)->delete();
    }
}
