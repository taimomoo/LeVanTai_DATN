@extends("frontend.layout")
@section("do-du-lieu")
<?php 
	//lay tieu de danh muc
	$category = DB::table("category")->where("id","=",$category_id)->select("name")->first();
	//lay danh sach cac bai tin co phan trang
	$product = DB::table("product")->where("category_id","=",$category_id)->paginate(10);
 ?>
 <link rel="stylesheet" href="{{ asset('EvoWatch/assets/css/category.css') }}" />
 <main class="category">
<div class="grid wide row">
          <div class="category-sidebar l-2 m-0 c-0">
            <div class="category-sidebar-main">
              <span class="category-sidebar-title">Danh mục</span>
              <li class="category-sidebar-item">
                <a href="" class="category-sidebar-link">Nam</a>
              </li>
              <li class="category-sidebar-item">
                <a href="" class="category-sidebar-link">Nữ</a>
              </li>
              <li class="category-sidebar-item">
                <a href="" class="category-sidebar-link">Phụ kiện</a>
              </li>
            </div>

            <div class="category-sidebar-brand">
              <span class="category-sidebar-title">Thương hiệu</span>
              <!-- <div class="category-sidebar-row">
                <input type="checkbox" name="Kashmir" id="Kashmir">
                <label for="Kashmir">Kashmir</label>
              </div>
              <div class="category-sidebar-row">
                <input type="checkbox" name="Quartz" id="Quartz">
                <label for="Quartz">Quartz</label>
              </div>
              <div class="category-sidebar-row">
                <input type="checkbox" name="otherBrand" id="otherBrand">
                <label for="otherBrand">Khác</label>
              </div> -->
            </div>

            <div class="category-sidebar-type">
              <span class="category-sidebar-title">Loại</span>
              <!-- <div class="category-sidebar-row">
                <input type="checkbox" name="Classic" id="Classic">
                <label for="Classic">Classic</label>
              </div>
              <div class="category-sidebar-row">
                <input type="checkbox" name="Carbon" id="Carbon">
                <label for="Carbon">Carbon</label>
              </div>
              <div class="category-sidebar-row">
                <input type="checkbox" name="otherType" id="otherType">
                <label for="otherType">Khác</label>
              </div> -->
            </div>

          </div>

          <div class="category-products l-10 m-12 c-12">
            <div class="category-products-aside row">
              <!-- <span>Xếp theo</span>
              <div class="content-product-aside-name">
                <input type="radio" class="category-product-aside-chkb" name="nameAsc" id="nameAsc">
                <label for="nameAsc">Tên A-Z</label>
                <input type="radio" class="category-product-aside-chkb" name="nameDes" id="nameDes">
                <label for="nameDes">Tên Z-A</label>
              </div>

              <div class="content-product-aside-price">
                <input type="radio" class="category-product-aside-chkb" name="priceAsc" id="priceAsc">
                <label for="priceAsc">Giá thấp đến cao</label>
                <input type="radio" class="category-product-aside-chkb" name="priceDes" id="priceDes">
                <label for="priceDes">Giá cao đến thấp</label>
              </div> -->

            </div>

            <div class="category-products-content row">
            	@foreach($product as $rows)
              <form class="category-products-product-wrapper col l-3 m-6 c-12" action="{{ URL::to('cart') }}" method="post">
                @csrf
                <div class="">
                  <a href="{{ url('detail/'.$rows->id) }}" class="category-product-item">
                    <div class="category-product-image-wrapper">
                      <img src="{{ asset("upload/product/".$rows->image) }}" class="category-product-image" alt="" />
                      <img src="{{ asset("upload/product/".$rows->image) }}" alt="" class="category-product-image--hover">
                    </div>
                    <div class="category-product-info">
                      <div class="product-name text-center">
                        {{ $rows->name }}
                      </div>
                      <div class="d-flex-h">
                      <div class="product-price--new">
                        {{ number_format($rows->price - ($rows->price * $rows->discount)/100) }} đ
                      </div>
                      <div class="product-price">     
                        <div class="product-price--old">
                          {{ number_format($rows->price) }} đ
                        </div>
                      </div>
                    </div>
                    </div>
                    </a>
                    <input name="qty" type="hidden" min="1" value="1" />
                  <input name="productid_hidden" type="hidden" value="{{ $rows->id }}"/>
                    <div class="btn-wrapper d-flex-h">
                      <!-- <button type="submit" class="btn btn-addToCart category-product-action">
                        Thêm vào giỏ hàng
                      </button> -->
                      @if($rows->sl>0)
                        <button type="submit" class="btn btn-addToCart content-newProduct-action">
                      Thêm vào giỏ hàng
                    </button>
                    @else <h3>Hết hàng</>
                    @endif
                    </div>
                  
                </div>
              </form>

              @endforeach
              
              {{ $product->render() }}

            </div>
            
          </div>
        </div>
    </main>
@endsection