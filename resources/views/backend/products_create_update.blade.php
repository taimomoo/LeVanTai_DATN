<!-- load file layout.blade.php vao day -->
@extends("backend.layout")
@section("do-du-lieu")
<div class="col-md-12"> 
    <div class="panel panel-primary">
        <div class="panel-heading">Thêm sửa sản phẩm</div>
        <div class="panel-body">
            <!-- muon upload duoc anh thi phai co thuoc tinh enctype="multipart/form-data" -->
        <form method="post" enctype="multipart/form-data" action="{{ $action }}">
            <!-- trong laravel, muon bat duoc du lieu thi co tag csrf() -->
            <!-- viet tuong minh ham csrf(): <input type='hidden' name='csrf_token' value='...' -->
        	@csrf
            <!-- rows -->
            <div class="row" style="margin-top:5px;">
                <div class="col-md-2">Tên Sản phẩm</div>
                <div class="col-md-10">
                    <input type="text" value="{{ isset($record->name)?$record->name:'' }}" name="name" class="form-control" required>
                </div>
            </div>
            <!-- end rows -->
            
            <!-- rows -->
            <div class="row" style="margin-top:5px;">
                <div class="col-md-2">Giá</div>
                <div class="col-md-10">
                    <input type="text" value="{{ isset($record->price)?$record->price:'' }}" name="price" class="form-control" required>
                </div>
            </div>
            <!-- end rows -->
            <!-- rows -->
            <div class="row" style="margin-top:5px;">
                <div class="col-md-2">Số lượng</div>
                <div class="col-md-10">
                    <input type="text" value="{{ isset($record->sl)?$record->sl:'' }}" name="sl" class="form-control" required>
                </div>
            </div>
            <!-- end rows -->
            <!-- rows -->
            <div class="row" style="margin-top:5px;">
                <div class="col-md-2">Phần trăm giảm giá</div>
                <div class="col-md-10">
                    <input type="text" value="{{ isset($record->discount)?$record->discount:'' }}" name="discount" class="form-control" required>
                </div>
            </div>
            <!-- end rows -->
            <!-- rows -->
            <div class="row" style="margin-top:5px;">
                <div class="col-md-2">Trạng thái</div>
                <div class="col-md-10">
                    <input type="text" value="{{ isset($record->status)?$record->status:'' }}" name="status" class="form-control" required>
                </div>
            </div>
            <!-- end rows -->
            <!-- rows -->
            <div class="row" style="margin-top:5px;">
                <div class="col-md-2">Bảo hành</div>
                <div class="col-md-10">
                    <input type="text" value="{{ isset($record->baohanh)?$record->baohanh:'' }}" name="baohanh" class="form-control" required>
                </div>
            </div>
            <!-- end rows -->
            <!-- rows -->
            <div class="row" style="margin-top:5px;">
                <div class="col-md-2">Danh mục</div>
                <div class="col-md-10">
                    <select name="category_id" class="form-control" style="width: 300px;">
                        <?php 
                            //co the dung cau lenh sql de truy van
                            $categories = DB::select("select * from category order by id desc");
                         ?>
                         @foreach($categories as $rows)
                        <option @if(isset($record->category_id)&&$record->category_id==$rows->id) selected @endif value="{{ $rows->id }}">{{ $rows->name }}</option>
                        @endforeach
                    </select>
                </div>
            </div>
            <!-- end rows -->
            <!-- rows -->
            <div class="row" style="margin-top:5px;">
                <div class="col-md-2"></div>
                <div class="col-md-10">
                    <input type="checkbox" @if(isset($record->hot)) checked @endif name="hot" id="hot"> <label for="hot">Hot</label>
                </div>
            </div>
            <!-- end rows -->
            <!-- rows -->
            <div class="row" style="margin-top:5px;">
                <div class="col-md-2">Tải ảnh</div>
                <div class="col-md-10">
                    <input type="file" name="image">
                </div>
            </div>
            <!-- end rows -->
            <!-- rows -->
            <div class="row" style="margin-top:5px;">
                <div class="col-md-2">Mô tả</div>
                <div class="col-md-10">
                    <input type="text" value="{{ isset($record->description)?$record->description:'' }}" name="description" class="form-control" required>
                </div>
            </div>
            <!-- end rows -->
            <!-- rows -->
            <div class="row" style="margin-top:5px;">
                <div class="col-md-2">Chi tiết</div>
                <div class="col-md-10">
                    <textarea name="content" id="content">{{ isset($record->content)?$record->content:"" }}</textarea>
                    <script type="text/javascript">CKEDITOR.replace('content');</script>
                </div>
            </div>
            <!-- end rows -->
            <!-- rows -->
            <div class="row" style="margin-top:5px;">
                <div class="col-md-2"></div>
                <div class="col-md-10">
                    <input type="submit" value="Process" class="btn btn-primary">
                </div>
            </div>
            <!-- end rows -->
        </form>
        </div>
    </div>
</div>
@endsection("do-du-lieu")