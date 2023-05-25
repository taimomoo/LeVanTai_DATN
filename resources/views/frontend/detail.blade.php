@extends("frontend.layout")
@section("do-du-lieu")
<?php 
	//lay bai tin
	$product = DB::table("product")->where("id","=",$id)->first();
 ?>
 <style type="text/css">
 	.productDetail {
    padding: 0 40px;
}

.productDetail__image {
    padding: 20px;
}

.productDetail__image-img {
    height: auto;
    width : 100%;
}

.productDetail__detail {
    padding  : 20px;
    font-size: 20px;
}

.productDetail__detail p {
    margin: 12px 0;
}

.btn-buy {
    height    : 40px;
    padding   : 4px 16px;
    font-size : 20px;
    background: var(--black-color);
    color     : var(--white-color);
    margin    : 12px 0;
}

.productDes {
    font-size: 16px;
}
 </style>
<main class="content">

        <div class="grid wide">
          <div class="productDetail row">
            <div class="productDetail__image l-6 m-6 c-6">
              <img src="{{ asset("upload/product/".$product->image) }}" alt="" class="productDetail__image-img">
            </div>
            <div class="productDetail__detail l-6 m-6 c-6">
              <div class="productDetail--infor">
                <h3 class="productDetail--name">{{ $product->name }}</h3>
                <p class="productDetail--brand">{{ $product->description }}</p>
                <p class="productDetail--brand">Số lượng còn: {{ $product->sl }}</p>
                <p class="productDetail--price">Giá: <b>{{ number_format($product->price - ($product->price * $product->discount)/100) }} đ</b></p>
              </div>
              <form class="" action="{{ URL::to('cart') }}" method="post">
                @csrf
                <input name="qty" type="hidden" min="1" value="1" />
                  <input name="productid_hidden" type="hidden" value="{{ $product->id }}"/>
              <!-- <button class="btn-buy" >Mua ngay</button> -->
              @if($product->sl>0)
                        <button class="btn-buy" >Mua ngay</button>
                    @else <p>Hết hàng</>
                    @endif
          		</form>
              <p>Gọi đặt hàng: <a href="tel:0123456789">0123456789</a></p>
              <p>Bảo hành {{ $product->baohanh }} do lỗi nhà sản xuất</p>
              <p>Cam kết 100% chính hãng</p>
            </div>
          </div>
          <div class="productDes">
            <p>{{ $product->content }}</p>
            
          </div>
        </div>

      </main>
 @endsection