<!-- load file layout.blade.php vao day -->
@extends("backend.layout")
<!-- do du lieu ben duoi vao file layout.blade.php, do vao tag do-du-lieu -->
@section("do-du-lieu")
<div class="col-md-12">
    <div class="panel panel-primary">
        <div class="panel-heading">Danh sách đơn hàng</div>
        <div class="panel-body">
            <table class="table table-bordered table-hover">
                <tr>
                    <th>STT</th>
                    <th>Họ và tên</th>
                    <th>Địa chỉ</th>
                    <th>Điện thoại</th>
                    <th>Ngày mua</th>
                    <th>Giá</th>
                    <th style="width:150px;">Trạng thái</th>
                    <th style="width:150px;"></th>
                </tr>
                @foreach($data as $rows)
                <tr>
                    <td>{{ $rows->id }}</td>
                    <td>{{$rows->customer->name}}</td>
                    <td>{{$rows->customer->address}}</td>
                    <td>{{$rows->customer->phone_number}}</td>
                    <td>{{ $rows->date }}</td>
                    <td>{{ $rows->price }}</td>
                    <td class="">{{ $rows->status }}</td>   
                    </td>
                    <td style="text-align:center;">
                        <?php if($rows->status == "Đang chờ xử lý"){ ?>
                        <a href="{{ url('admin/orders/delivery/'.$rows->id) }}" class="label label-info">Giao hàng</a>
                        &nbsp;&nbsp;
                    <?php } ?>
                        <a href="{{ url('admin/orders/detail/'.$rows->id) }}" class="label label-success">Chi tiết</a>
                    </td>
                </tr>
                @endforeach
            </table>
            
            
        </div>
    </div>
</div>
@endsection