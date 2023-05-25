<?php

namespace App\Http\Controllers;

use App\Models\Categories;
use App\Models\Customer;
use App\Models\Orders;
use App\Models\Products;
use DB;

class homeAdminConrtroller extends Controller
{
    public function index()
    {
        $order = Orders::count();
        $pro = Products::count();
        $cate = Categories::count();
        $cus = Customer::count();
       // biểu đồ
       $currentMonthYear = date('F Y');
       $revenues = DB::table('orders')
           ->where('status', 'Đã giao hàng')
           ->select(DB::raw('DATE(date) as date'), DB::raw('SUM(REPLACE(price, ",", "")) as revenue'))
           ->groupBy(DB::raw('DATE(date)'))
           ->get();

       $chartData = [['Date', 'Revenue']];
       foreach ($revenues as $revenue) {
           if (date('F Y', strtotime($revenue->date)) == $currentMonthYear) {
               $formattedDate = date('d', strtotime($revenue->date)); // Định dạng ngày thành "dd"
               $chartData[] = [$formattedDate, $revenue->revenue];
           }
       }
        return view('backend.index',['chartData' => json_encode($chartData)], compact('order', 'currentMonthYear', 'pro', 'cate', 'cus'));
    }
}