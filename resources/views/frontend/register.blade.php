@extends("frontend.layout")
@section("do-du-lieu")
<link rel="stylesheet" href="{{ asset('EvoWatch/assets/css/login.css') }}" />

<main class="loginForm">
	@if(Request::get("notify") == "emailExists")
    <div class="alert alert-danger">Email đã tồn tại, mời chọn email khác</div>
    @endif
        <div class="grid wide row">
          <form method="post" action="{{ route('action') }}">
          	<!-- trong laravel, muon bat duoc du lieu thi co tag csrf() -->
            <!-- viet tuong minh ham csrf(): <input type='hidden' name='csrf_token' value='...' -->
          	@csrf
            <span class="loginForm-title d-block text-center">Đăng kí</span>
            <div class="userInforRow">
              <label for="txtName" class="d-block">Họ tên</label>
              <input type="text" name="name" id="txtName" class="d-block form-input">
            </div>

            <div class="userInforRow">
              <label for="txtUserEmail" class="d-block">Email</label>
              <input type="email" name="email" id="txtUserEmail" class="d-block form-input">
            </div>

            <div class="userInforRow">
              <label for="txtUserPass" class="d-block">Mật khẩu</label>
              <input type="password" name="password" id="txtUserPass" class="d-block form-input">
            </div>
            <div class="userInforRow">
              <label for="txtName" class="d-block">Địa chỉ</label>
              <input type="text" name="address" id="txtName" class="d-block form-input">
            </div>
            <div class="userInforRow">
              <label for="txtName" class="d-block">Số điện thoại</label>
              <input type="text" name="phone_number" id="txtName" class="d-block form-input">
            </div>

            <div class="userInforRow btn-wrapper d-flex-h">
              <input type="submit" value="Đăng ký" class="d-flex-v btn form-input btn-login">
            </div>
            <p class="loginForm-check d-block text-center">
              Bạn đã có tài khoản? Đăng nhập
              <a href="{{ url('login') }}" class="loginForm-link link-color">tại đây</a>
            </p>
          </form>
        </div>
      </main>
@endsection