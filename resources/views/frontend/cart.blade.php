@extends("frontend.layout")
@section("do-du-lieu")
<link rel="stylesheet" href="{{ asset('EvoWatch/assets/css/cart.css') }}" />

<div class="content">
  <?php $content = Cart::content(); 
  // print_r($content) ;
  ?>
        <div class="grid wide">
          <div class="row">
            <div class="content__cart-left-wrapper m-12 c-12">
              <div class="content__cart-left">
                <h3 class="content__cart-title">Giỏ hàng</h3>
              </div>
              <div class="content__cart-label">
                <div class="content__cart-label-wrapper">
                  <input type="checkbox" class="content__cart-checkbox" id="">
                  <span class="content__cart-bulk">Tất cả</span>
                  <span class="content__cart-unit_price m-0 c-0">Đơn giá</span>
                  <span class="content__cart-amount m-0 c-0">Số lượng</span>
                  <span class="content__cart-money m-0 c-0">Thành tiền</span>
                  <img class="content__cart-label-icon--delete clickable"
                       src="https://frontend.tikicdn.com/_desktop-next/static/img/icons/trash.svg" alt="deleted">
                </div>
              </div>
              <div class="content__cart-products">


                @foreach ($content as $value)
                <div class="content__cart-product ">
                  <input type="checkbox" id="" class="content__cart-product-select">
                  <img src="{{ asset('upload/product/' . $value->options->image) }}" alt="" class="content__cart-product-img">
                  <div class="content__cart-product-wrapper">
                    <a href="" class="content__cart-product-name">{{$value->name}}</a>
                    <span class="content__cart-product-unit_price m-0 c-0">{{ number_format($value->price) }}</span>
                    <form action="{{ URL::to('update_cart') }}" method="post">
                      @csrf
                    <input type="hidden" value="{{ $value->id }}" name="id"
                                                class="form-control" /> 
                    <input type="number" name="quantity" id="number" value="{{ $value->qty}}" min="1" class="m-0 c-0 content__cart-product-quantity" />
                     <input type="hidden" value="{{ $value->rowId }}" name="rowId_pro"
                                                class="form-control" /> 
                      <input type="submit" value="Cập nhật" name="update_qty"
                                                class="btn" />
                    </form>
                    <span class="content__cart-product-money"><?php
                                    $subtal = $value->price * $value->qty;
                                    echo number_format($subtal) . ' VNĐ';
                                    ?></span>
                    <a href="{{ route('delete_cart', ['rowId' => $value->rowId]) }}"><img class="content__cart-label-icon--delete clickable"
                         src="https://frontend.tikicdn.com/_desktop-next/static/img/icons/trash.svg" alt="deleted"></a>
                  </div>
                </div>
                @endforeach
                

              </div>
            </div>
            <form action="{{ URL::to('order-place') }}" method="POST">
              @csrf
             
            <div class="content__cart-right-wrapper m-0 c-0">
              

              <div class="content__cart-user-priceSummary">
                <div class="content__cart-user-prices_item">
                  <span class="content__cart-user-prices-text">Tổng tiền: {{ Cart::total(0, ',', ',') }} VNĐ</span>
                  <!-- <span class="content__cart-user-prices-value--empty">Vui lòng chọn sản phẩm</span> -->
                </div>

              </div>

              <?php $email = Session::get('email');
              if($email != null){
               ?>
               <div class="content__cart-user-info">
                <div class="content__cart-user-info-title">
                  <span class="content__cart-user-info-text">Giao tới</span>
                  <!-- <a class="content__cart-user-info-change">Thay đổi</a> -->
                </div>

                <div class="content__cart-user-info-customer">
                  <span class="content__cart-user-info-name">Le Van Tai</span>
                  <span class="content__cart-user-info-phone">0356487***</span>
                  <span class="content__cart-user-info-address">134 đường Cầu Diễn, Phường Minh Khai, Quận Bắc Từ Liêm,
                    Hà Nội</span>
                </div>
              </div>  
              @if($content != null)
                <button type="submit" class="clickable btn--buy" >Mua hàng</button>
              @else
              <p>sfd</p>
              @endif     
                <!-- <button type="submit" class="clickable btn--buy" >Mua hàng</button> -->
                    
              <?php }else{ ?>
              <button class="clickable btn--buy"><a href="{{ URL::to('/login')}}">Đăng nhập trước khi mua hàng</a></button>
              <?php } ?>
            </div>
            </form>
          </div>

        </div>

      </div>
@endsection