<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <style>
        body{
        font-family: 'DejaVu Sans', sans-serif;
                font-size: 14px;
    }
    </style>
</head>
<body>
    <tag><h3 style="text-align:center;">Hóa đơn bán hàng</h3>
    <p>Họ và tên khách hàng: {{ $customer->name }} </br>
    Email: {{ $customer->email }} </br>
    Địa chỉ: {{ $customer->address }} </br>
    SĐT: {{ $customer->phone_number }} </br> </p>
</br>
    <!-- @foreach ($orderDetails as $data)
        Tên sản phẩm: {{$data->product->name}}
        GIá: {{$data->product->price}} -->
        
        <table class="table table-bordered table-hover" style="boder:1">
                <tr>
                    <th style="width:150px;">Tên sản phẩm</th>
                    <th style="width:100px;">Giá</th>
                     <th style="width:90px;">Số lượng</th> 
                     <th style="width:100px;">Thành tiền</th> 
                </tr>
                @foreach($orderDetails as $row)
                <tr>                    
                    <td>{{$row->product->name}}</td>
                    <td>{{$row->product->price}}</td>
                    <td>{{$row->quantity}}</td>
                    <td>{{$row->price}}</td>
                </tr>
                @endforeach
            </table>  
    @endforeach
</body>
</html>