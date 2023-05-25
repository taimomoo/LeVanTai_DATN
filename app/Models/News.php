<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

//trong Model muon su dung doi tuong nao thi phai khai bao doi tuong do
//su dung doi tuong DB de thao tac csdl
use DB;
//doi tuong de lay GET,POST,FILE
use Request; 

class News extends Model
{
    //ham lay cac ban ghi co phan trang
    public function modelRead(){
        $data = DB::table("news")->orderBy("id","desc")->paginate(10);
        return $data;
    }
    //update
    public function modelGetRecord($id){
        $record = DB::table("news")->where("id","=",$id)->first();
        return $record;
    }
    //update
    public function modelUpdate($id){
        $name = request("name");
        $description = request("description");
        $content = request("content");
        $hot = request("hot") != "" ? 1 : 0;
        //update ban ghi
        DB::table("news")->where("id","=",$id)->update(["name"=>$name,"description"=>$description,"content"=>$content,"hot"=>$hot]);
        //neu co anh thi upload anh
        if(Request::hasFile("photo")){
            //---
            //lay anh de xoa
            //select("photo") -> chi lay truong du lieu co ten la photo trong table news
            $oldPhoto = DB::table("news")->where("id","=",$id)->select("photo")->first();
            if(isset($oldPhoto->photo) && file_exists('upload/news/'.$oldPhoto->photo)&&$oldPhoto!="")
                unlink('upload/news/'.$oldPhoto->photo);
            //---
            $photo = time()."_".Request::file("photo")->getClientOriginalName();
            //thuc hien upload anh
            Request::file("photo")->move("upload/news",$photo);
            //update ban ghi
            DB::table("news")->where("id","=",$id)->update(["photo"=>$photo]);
        }
    }
    //create
    public function modelCreate(){
        $name = Request::get("name");
        $description = Request::get("description");
        $content = Request::get("content");
        $hot = Request::get("hot") != "" ? 1 : 0;
        $photo = "";        
        //neu co anh thi upload anh
        if(Request::hasFile("photo")){
            $photo = time()."_".Request::file("photo")->getClientOriginalName();
            //thuc hien upload anh
            Request::file("photo")->move("upload/news",$photo);
        }
        //update ban ghi
        DB::table("news")->insert(["name"=>$name,"description"=>$description,"content"=>$content,"hot"=>$hot,"photo"=>$photo]);
    }
    public function modelDelete($id){
        //---
        //lay anh cu de xoa
        $oldPhoto = DB::table("news")->where("id","=",$id)->select("photo")->first();
        if(isset($oldPhoto->photo) && file_exists('upload/news/'.$oldPhoto->photo)&&$oldPhoto->photo!="")
            unlink('upload/news/'.$oldPhoto->photo);
        //---
        DB::table("news")->where("id","=",$id)->delete();
    }
}
