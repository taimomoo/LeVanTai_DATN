<?php

namespace App\Http\Controllers;

use App\Models\Customer;
use App\Models\orderDetail;
use Illuminate\Http\Request;

use PDF;
use DB;

use App\Models\Orders;
//doi tuong kiem tra du lieu
use Validator;


class OrdersController extends Controller
{
    //tao bien $model (la mot bien ben trong class ProductsController)
    public $model;
    //ham tao
    public function __construct(){
        //gan bien $model tro thanh bien object cua class Products
        $this->model = new Orders();
    }
    //lay danh sach cac ban ghi
    public function read(){
        // $data = $this->model->modelRead();
        $data = Orders::orderBy('id', 'DESC')->paginate(20);
        // dd($data->customer->name);
        //goi view, truyen du lieu ra view
        return view("backend.orders_read",["data"=>$data]);
    }
    public function detail($order_id){
        $order = Orders::where('id', $order_id)->first();
        // dd($order->customer_id);
        $orderDetail = orderDetail::where('order_id', $order_id)->get();
        // dd($orderDetail);
        $customer = Customer::where('id', $order->customer_id)->first();
        // dd($customer);
        //goi view, truyen du lieu ra view
        return view("backend.ordersdetail_read", compact('order', 'orderDetail', 'customer'));
    }
    public function delivery($order_id){
        $data = $this->model->modelDelivery($order_id);
        //goi view, truyen du lieu ra view
        return redirect(url('admin/orders'));
    }
    public function export($id)
    {
        $order = Orders::find($id);
        $customer = Customer::where('id', $order->customer_id)->first();
        $orderDetails = orderDetail::where('order_id', $id)->get();
        $file_name = $customer->id . '-' . $customer->name . '.pdf';
        $pdf = PDF::loadview('backend.export', ['order' => $order, 'orderDetails' => $orderDetails, 'customer' => $customer]);
        return $pdf->download($file_name);
    }

}
