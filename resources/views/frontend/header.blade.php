<header class="header">
        <div class="grid wide">
          <div class="header__top">
            <div class="header__logo">
              <a href="" class="header__logo--link">
                <img src="{{ asset('EvoWatch/assets/img/logo123.png') }}" alt="logo" class="header__logo-top">
              </a>


            </div>
            <div class="header__form_search">
           <form action="{{route('search')}}" method="get">
            @csrf
           <div class="header__form_search">
              <input  type="text" name="key" class="header__form_search-input" placeholder="Tìm sản phẩm">

              <!-- <form action="{{ route('search')}} " method="get">
                @csrf  -->
              <button class="header__form_search-btn">
                <img src="{{ asset('EvoWatch/assets/img/icon__search.png') }}" alt="search" class="header__form_search-icon">
                <!-- <span class="header__form-search-text c-0">Tìm kiếm</span> -->
              </button>
              <!-- </form> -->

            </div>
           </form>
</div>

            <div class="header__user">
              
              <div class="header__user-info c-0">
                <img src="{{ asset('EvoWatch/assets/img/user_avatar.jpg') }}" alt="avatar" class="header__user-avatar">
                <?php $email = Session::get('email'); 
                  if($email != null){
                ?>
                <span class="header__user-item">
                  
                  <span class="header__user-lable"><?php echo $email; ?></span>
                  <a class="header__user-acount-link" href="{{ url('logout')}}">Đăng xuất</a>
                </span>
                  <?php }else{ ?>
                  <span class="header__user-acount-label">
                    <a class="header__user-acount-link" href="{{ url('login')}}">Đăng nhập/Đăng ký</a>
                    <i class="header__user-icon fa-solid fa-caret-down"></i>
                  </span>
                <?php } ?>
                 
                

                

              </div>

              <div class="header__user-cart">
                <a href="{{ url('cart') }}" class="header__user-cart--link">
                  <div class="header__usert-cart-item">
                    <div class="header__user-cart-wrapper">
                      <img src="{{ asset('EvoWatch/assets/img/icon__cart.png') }}" alt="icon__cart" class="header__user-cart-img">
                      <!-- <span class="header__user-cart-quantity">1</span> -->
                    </div>
                    <a href="{{ url('cart') }}" class="header__user-cart-text">Giỏ hàng</a>
                  </div>

                </a>

              </div>

            </div>

          </div>

          <div class="header__bot">
            <div class="grid wide">
              <div class="header-nav c-0">
                <ul class="header-nav-menu d-flex-v">
                  <li class="header-nav-item">
                    <a href="{{ url('') }}" class="header-nav-link">Trang chủ</a>
                  </li>
                  <li class="header-nav-item">
                    <a href="" class="header-nav-link">Giới thiệu</a>
                  </li>
                  <?php 
                    $categories = DB::select("select * from category order by id asc");
                 ?>

                 @foreach($categories as $rows)

                  <li class="header-nav-item">
                    <a href="{{ url('category/'.$rows->id) }}" class="header-nav-link">{{ $rows->name }}</a>
                  </li>
                  @endforeach

                  <li class="header-nav-item">
                    <a href="{{ url('news') }}" class="header-nav-link">Tin tức</a>
                  </li>
                  <li class="header-nav-item">
                    <a href="http://localhost:8080/laravel_demo/public/news/detail/10" class="header-nav-link">Liên hệ</a>
                  </li>
                </ul>

              </div>
            </div>
          </div>

        </div>

      </header>