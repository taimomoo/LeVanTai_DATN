<!-- load file layout.blade.php vao day -->
@extends("backend.layout")
<!-- do du lieu ben duoi vao file layout.blade.php, do vao tag do-du-lieu -->
@section("do-du-lieu")
<div class="col-md-12">
    <div style="margin-bottom:5px;">
        <a href="{{ url('admin/categories/create') }}" class="btn btn-primary">Thêm danh mục</a>
    </div>
    <div class="panel panel-primary">
        <div class="panel-heading">Danh mục</div>
        <div class="panel-body">
            <table class="table table-bordered table-hover">
                <tr>
                    <th style="width:200px;">Ảnh</th>
                    <th>Tên danh mục</th>
                    <th>Mô tả</th>
                    <th style="width:100px;"></th>
                </tr>
                @foreach($data as $rows)
                <tr>
                    <td>
                        @if(file_exists('upload/category/'.$rows->image))
                        <img src="{{ asset('upload/category/'.$rows->image) }}" style="width:200px;">
                        @endif
                    </td>
                    <td>{{ $rows->name }}</td>
                    <td>{{ $rows->description }}</td>
                    <td style="text-align:center;">
                        <a href="{{ url('admin/categories/update/'.$rows->id) }}">Sửa</a>&nbsp;
                        <a href="{{ url('admin/categories/delete/'.$rows->id) }}" onclick="return window.confirm('Bạn có muốn xóa anh mục này?');">Xóa</a>
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