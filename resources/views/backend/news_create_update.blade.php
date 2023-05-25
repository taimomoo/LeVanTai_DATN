<!-- load file layout.blade.php vao day -->
@extends("backend.layout")
@section("do-du-lieu")
<div class="col-md-12"> 
    <div class="panel panel-primary">
        <div class="panel-heading">Thêm - Sửa tin</div>
        <div class="panel-body">
            <!-- muon upload duoc anh thi phai co thuoc tinh enctype="multipart/form-data" -->
        <form method="post" enctype="multipart/form-data" action="{{ $action }}">
            <!-- trong laravel, muon bat duoc du lieu thi co tag csrf() -->
            <!-- viet tuong minh ham csrf(): <input type='hidden' name='csrf_token' value='...' -->
        	@csrf
            <!-- rows -->
            <div class="row" style="margin-top:5px;">
                <div class="col-md-2">Tên tin</div>
                <div class="col-md-10">
                    <input type="text" value="{{ isset($record->name)?$record->name:'' }}" name="name" class="form-control" required>
                </div>
            </div>
            <!-- end rows -->
            <!-- rows -->
            <div class="row" style="margin-top:5px;">
                <div class="col-md-2">Mô tả</div>
                <div class="col-md-10">
                    <textarea name="description" id="description">{{ isset($record->description)?$record->description:"" }}</textarea>
                    <script type="text/javascript">CKEDITOR.replace('description');</script>
                </div>
            </div>
            <!-- end rows -->
            <!-- rows -->
            <div class="row" style="margin-top:5px;">
                <div class="col-md-2">Tiêu đề</div>
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
                    <input type="checkbox" @if(isset($record->hot)) checked @endif name="hot" id="hot"> <label for="hot">Hot</label>
                </div>
            </div>
            <!-- end rows -->
            <!-- rows -->
            <div class="row" style="margin-top:5px;">
                <div class="col-md-2">Tải ảnh</div>
                <div class="col-md-10">
                    <input type="file" name="photo">
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