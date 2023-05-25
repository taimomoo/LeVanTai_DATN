@extends("frontend.layout")
@section("do-du-lieu")
<link rel="stylesheet" href="{{ asset('EvoWatch/assets/css/login.css') }}" />
<main class="loginForm">
	

<div class="grid wide row">
  <form method="post" action="{{ URL::to('login-customer') }}">
  	@csrf
    <span class="loginForm-title d-block text-center">Đăng nhập</span>
    <div class="userInforRow">
      <label for="txtUserEmail" class="d-block">Email</label>
      <input type="email" name="userEmail" id="txtUserEmail" required class="d-block form-input">
      @error('userEmail')
        <span>{{$message}}</span>
      @enderror
    </div>

    <div class="userInforRow">
      <label for="txtUserPass" class="d-block">Mật khẩu</label>
      <input type="password" name="userPass" id="txtUserPass" class="d-block form-input">
    </div>

    <div class="userInforRow btn-wrapper d-flex-h">
      <input type="submit" value="Đăng nhập" class="d-flex-v btn form-input btn-login">
    </div>

    <a href="" class="loginForm-action d-block text-center">Quên mật khẩu?</a>
    <p class="loginForm-check d-block text-center">
      Bạn chưa có tài khoản? Đăng kí
      <a href="{{ url('register') }}" class="loginForm-link link-color">tại đây</a>
    </p>
  </form>
</div>
</main>
@endsection