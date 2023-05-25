<!-- load file layout.blade.php vao day -->
@extends("backend.layout")
<!-- do du lieu ben duoi vao file layout.blade.php, do vao tag do-du-lieu -->
@section("do-du-lieu")
<div class="col-md-12">
<h5 class="card-header"><a href="{{route('export',$order->id)}}" 
            class=" btn btn-sm btn-primary shadow-sm float-right"><i class="fas fa-download fa-sm text-white-50"></i>
                Xuất hóa đơn</a>
        </h5>
    <div class="panel panel-default" style="margin-bottom:5px;">
        <div class="panel-heading">Thông tin đơn hàng</div>
        <div class="panel-body">
            <table class="table table-bordered">
                <tr>
                    <th style="width:150px;">Họ tên</th>
                    <th>{{ $customer->name}}</th>
                </tr>
                <tr>
                    <th style="width:150px;">Email</th>
                    <th>{{$customer->email}}</th>
                </tr>
                <tr>
                    <th style="width:150px;">Địa chỉ</th>
                    <th>{{$customer->address}}</th>
                </tr>
                <tr>
                    <th style="width:150px;">Điện thoại</th>
                    <th>{{$customer->phone_number}}</th>
                </tr>
            </table>            
        </div>
        <div class="panel-footer"><a href="#" onclick="history.go(-1);" class="btn btn-primary">Quay lại</a></div>
    </div>
    <div class="panel panel-primary">
        <div class="panel-heading">Danh sách sản phẩm</div>
        <div class="panel-body">
            <table class="table table-bordered table-hover">
                <tr>
                    <th style="width:100px;">Ảnh</th>
                    <th>Tên sản phẩm</th>
                    
                    <th style="width:80px;">Số lượng</th>
                    <th style="width:80px;">Giá</th>
                    <th style="width:80px;">Thành tiền</th>
                </tr>
                @foreach($orderDetail as $row)
                <tr>
                    <td>
                        
                    @if(file_exists('upload/product/'.$row->product->image))
                    <img src="{{ asset('upload/product/'.$row->product->image) }}" style="width:100px;">
                    @endif
                    </td>
                    <td>{{$row->product->name}}</td>
                    <td>{{$row->quantity}}</td>
                    <td>{{$row->product->price}}</td>
                    <td>{{$row->price}}</td>
                    <!-- <td style="text-align:center;">{{$row->product->price}} %</td> -->
                </tr>
                @endforeach
            </table>
        </div>
    </div>
</div>
@endsection