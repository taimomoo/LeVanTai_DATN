<!-- load file layout.blade.php vao day -->
@extends("backend.layout")
<!-- do du lieu ben duoi vao file layout.blade.php, do vao tag do-du-lieu -->
@section("do-du-lieu")
<div class="col-md-12">
    <div style="margin-bottom:5px;">
        <a href="{{ url('admin/products/create') }}" class="btn btn-primary">Thêm sản phẩm</a>
    </div>
    <div class="panel panel-primary">
        <div class="panel-heading">Danh sách sản phẩm</div>
        <div class="panel-body">
            <table class="table table-bordered table-hover">
                <tr>
                    <th style="width:100px;">Ảnh</th>
                    <th>Tên sản phẩm</th>
                    <th>Giá</th>
                    <th>Số lượng còn</th>
                    <th>Phần trăm giảm giá</th>
                    <!-- <th>Trạng thái</th> -->
                    <th>Bảo hành</th>
                    <th>Sản phẩm hot</th>
                    <th>Danh mục</th>
                    <th style="width:100px;"></th>
                </tr>
                @foreach($data as $rows)
                <tr>
                    <td>
                        @if(file_exists('upload/product/'.$rows->image))
                        <img src="{{ asset('upload/product/'.$rows->image) }}" style="width:100px;">
                        @endif
                    </td>
                    <td>{{ $rows->name }}</td>
                    <td>{{ $rows->price }}</td>
                    <td>{{ $rows->sl }}</td>
                    <td>{{ $rows->discount }}</td>
                    <!-- <td>{{ $rows->status }}</td> -->
                    <td>{{ $rows->baohanh }}</td>
                    <td style="text-align:center;">
                        @if($rows->hot == 1)
                        Hot
                        @endif
                    </td>
                    <td>
                    	<?php 
                            $category = DB::table("category")->where("id","=",$rows->category_id)->first();
                            echo isset($category->name) ? $category->name : "";
                         ?> 	
                    </td>
                    
                    <td style="text-align:center;">
                        <a href="{{ url('admin/products/update/'.$rows->id) }}">Sửa</a>&nbsp;
                        <a href="{{ url('admin/products/delete/'.$rows->id) }}" onclick="return window.confirm('Bạn có chắc muốn xóa sản phẩm này?');">Xóa</a>
                    </td>
                </tr>
                @endforeach
            </table>
            <style type="text/css">
                .pagination{padding:0px; margin:0px;}
            </style>
            <!-- laravel ho tro ham phan trang nhu sau -->
            {{ $data->render() }}
        </div>
    </div>
</div>
@endsection