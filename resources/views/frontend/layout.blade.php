<!DOCTYPE html>
<html lang="vi">

  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="{{ asset('EvoWatch/assets/css/reset.css') }}" />
    <link rel="stylesheet" href="{{ asset('EvoWatch/assets/css/grid.css') }}" />
    <link rel="stylesheet" href="{{ asset('EvoWatch/assets/css/base.css') }}" />
    <link rel="stylesheet" href="{{ asset('EvoWatch/assets/fonts/FA5PRO-master/css/all.min.css') }}" />
    <link rel="stylesheet" href="{{ asset('EvoWatch/assets/css/base.css') }}" />
    <link rel="stylesheet" href="{{ asset('EvoWatch/assets/css/home.css') }}" />
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&family=Source+Sans+Pro:wght@300;400;700&display=swap"
          rel="stylesheet" />
    <link rel="icon" href="{{ asset('EvoWatch/assets/img/icon_logo.jpg') }}" type="image/x-icon" />
    <title>TMWATCH</title>
  </head>

  <body>
    <div class="app">
      @include("frontend.header")
   
		  @yield("do-du-lieu") 


      <footer class="footer">
        <div class="grid wide">
          <span class="footer-copyright d-flex-h">&copy;Bản quyền thuộc về </span>
        </div>
      </footer>
    </div>
  </body>

</html>