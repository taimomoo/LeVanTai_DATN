<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

//trong Model muon su dung doi tuong nao thi phai khai bao doi tuong do
//su dung doi tuong DB de thao tac csdl
use DB;
//doi tuong de lay GET,POST,FILE
use Request; 

class Orders extends Model
{
    //ham lay cac ban ghi co phan trang
    protected $table = 'orders';
    // protected $filltable = 'date, price, status, customer_id';
    public function modelRead(){
        $data = DB::table("orders")->orderBy("id","desc")->paginate(20);
        return $data;
    }
    // public function modelGetCustomer($id){
    // 	$data = DB::table("customer")->where("id","=",$id)->first();
    //     return $data;
    // }
    public function modelOrderDetails($order_id){
    	$data = DB::table("orderdetails")->where("id","=",$order_id);
        return $data;
    }
    // public function modelGetProduct($product_id){
    // 	$data = DB::table("product")->where("id","=",$product_id);
    //     return $data;
    // }
    //giao hang
	public function modelDelivery($order_id){
		$status = "Đã giao hàng";
		$data = DB::table("orders")->where("id","=",$order_id)->update(["status"=>$status]);
	}
    public function customer(){
        return $this->belongsTo(Customer::class);
    }
    public function orderdetail(){
        return $this->hasMany(orderDetail::class);
    }
}
