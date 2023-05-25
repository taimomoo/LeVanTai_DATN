<?php

namespace App\Http\Controllers;

use App\Models\orderDetail;
use App\Models\Orders;
use Illuminate\Support\Facades\DB;

;
use Illuminate\Support\Facades\Session;
use Illuminate\Http\Request;
use App\Models\Categories;
use App\Models\Products;
use Gloudemans\Shoppingcart\Facades\Cart;
use Illuminate\Support\Facades\Redirect;

session_start();

class CartController extends Controller
{
    //
    public function save(Request $request)
    {


        $productID = $request->productid_hidden;
        $quantity = $request->qty;

        $products_info = DB::table('product')->where('id', $productID)->first();

        $data['id'] = $products_info->id;
        $data['options']['image'] = $products_info->image;
        $data['name'] = $products_info->name;
        $data['price'] = $products_info->price - ($products_info->price * $products_info->discount / 100);
        $data['qty'] = $quantity;
        $data['weight'] = 0;

        Cart::add($data);
        Cart::setGlobalTax(0); //Tính thuế

        return Redirect::to('cart');
    }
    public function showCart()
    {

        return view('frontend.cart');
    }

    public function delete($rowId)
    {
        Cart::update($rowId, 0);
        return Redirect::to('cart');
    }
    public function update(Request $request)
    {

        $count = Products::where('id', $request->id)->first();
        if ((int)$request->quantity < $count->sl) {
            $rowId = $request->rowId_pro;
            $qty = $request->quantity;
            Cart::update($rowId, $qty);

            return Redirect::to('cart');
        }else{

            return back();
        }

    }
    public function login_customer(Request $req)
    {
        $email = $req->userEmail;
        $pass = $req->userPass;

        $res = DB::table('customer')->where('email', $email)->where('password', $pass)->first();

        if ($res) {
            Session::put('id', $res->id);
            Session::put('email', $req->userEmail);
            return Redirect::to('/');
        } else {
            return Redirect('/login');
        }
    }
    public function order_place(Request $request)
    {
        $content = Cart::content();
        //insert order
        $order_data = array();
        // $order_data['id'] = "8"; 
        $order_data['date'] = now();
        $order_data['price'] = Cart::total();
        $order_data['status'] = "Đang chờ xử lý";
        $order_data['customer_id'] = Session::get('id');

        $id = DB::table('orders')->insertGetId($order_data);
        //inser order_detail
        foreach ($content as $v_content) {
            $order_d_data = array();
            $order_d_data['order_id'] = $id;
            $order_d_data['product_id'] = $v_content->id;

            $order_d_data['price'] = $v_content->price;
            $order_d_data['quantity'] = $v_content->qty;
            DB::table('orderdetails')->insert($order_d_data);
        }
        Cart::destroy();

        $orderdetail = orderDetail::where('order_id', $id)->get();
        foreach ($orderdetail as $order) {
            $product = Products::where('id', $order->product_id)->first();
            $product->sl -= $order->quantity;
            $product->save();
        }
        return Redirect::to('/');
    }


    public function orders_read()
    {

        $all_order = DB::table('orders')
            ->join('customer', 'orders.id', '=', 'customer.id')
            ->select('orders.*', 'customer.name')
            ->orderBy('orders.order_id', 'asc')->get();
        $orders_read = view('backend.orders_read', compact('all_order'));
        return view('backend.layout')->with('backend.orders_read', $orders_read);
    }

    public function view_order($orderID)
    {

        $order_by_id = DB::table('orders')
            ->join('customer', 'orders.id', '=', 'customer.id')
            ->join('order_detail', 'orders.order_id', '=', 'order_detail.order_id')
            ->select('orders.*', 'customer.*', 'order_detail.*')->first();
        $orders_read_by_id = view('backend.ordersdetail_read', compact('order_by_id'));
        return view('backend.layout')->with('backend.ordersdetail_read', $orders_read_by_id);
    }
}