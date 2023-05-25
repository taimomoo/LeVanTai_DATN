@extends("frontend.layout")
@section("do-du-lieu")
<!-- Begin barner  -->

      <div class="slider"></div>

      <!-- End barner  -->
<main class="content">
  <!-- Begin new products  -->
        <div class="grid wide">

          <div class="content-newProducts">
            <div class="content-newProducts-title text-center d-flex-h">
              <h2 class="title">Sản phẩm hot</h2>
            </div>

            <!-- Begin new product items -->

            <div class="content-newProducts-products row">
              <?php 
                  $hotProducts = DB::select("select * from product where hot = 1 order by id desc limit 0,5")
               ?>
               @foreach($hotProducts as $rows)

              <form class="content-newProducts-item-wrapper col l-2-4 m-6 c-6" action="{{ URL::to('cart') }}" method="post">
                @csrf
                 <a href="{{ url('detail/'.$rows->id) }}" >
                <div class="content-newProducts-item">
                  <div class="content-newProduct-image-wrapper">
                    <img src="{{ asset("upload/product/".$rows->image) }}" class="content-newProduct-image" alt="" />
                    <img src="{{ asset("upload/product/".$rows->image) }}" alt="" class="content-newProduct-image--hover">
                  </div>
                  <div class="product-info">
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
                  <input name="qty" type="hidden" min="1" value="1" />
                  <input name="productid_hidden" type="hidden" value="{{ $rows->id }}"/>
                  <div class="btn-wrapper d-flex-h">
                    @if($rows->sl>0)
                        <button type="submit" class="btn btn-addToCart content-newProduct-action">
                      Thêm vào giỏ hàng
                    </button>
                    @else <h3>Hết hàng</>
                    @endif
                  </div>
                </div>
              </a>
              </form>
              @endforeach
              

            </div>

            <!-- End new product items  -->
          </div>
          
        </div>
        <!-- End new products -->

        <!-- Begin barner  -->
        <div class="grid wide">
          <div class="content-barner d-flex-v row">
            <?php 
                  $categories = DB::select("select * from category order by id asc limit 0,3")
               ?>
               @foreach($categories as $rows)
            <div class="content-barner-item-wrapper col l-4 m-6 c-12">
              <a href="{{ url('category/'.$rows->id) }}" class="content-barner-item">
                <div class="content-barner-item-img-wrapper">
                  <img src="{{ asset("upload/category/".$rows->image) }}" alt="" class="content-barner-item-img">
                </div>
                <div class="content-barner-item-box">
                  <div class="content-barner-item-name text-center" style="color:white;">{{ $rows->description}} </div>
                  <div class="btn-wrapper d-flex-h">
                    <button class="btn content-barner-item-btn">Xem thêm</button>
                  </div>
                </div>
              </a>
            </div>

            @endforeach

          </div>
        </div>
        <!-- End barner  -->

        <!-- Begin hot Brand  -->
        <div class="content-hotBrand">
          <div class="content-hotBrand-main grid wide">
            <div class="content-hotBrand-title text-center d-flex-h">
              <h2 class="title">Bộ sưu tập nổi bật</h2>
            </div>
            <div class="content-hotBrand-row d-flex-h row">
               @foreach($categories as $itemCategory)
               <?php 
                  $first_prod = DB::select("select * from product where category_id = $itemCategory->id and hot = 1 order by id asc limit 0,1")
                ?>
                @foreach($first_prod as $rows)
              <div class="content-hotBrand-wrapper col l-4 m-6 c-12">
                <a class="content-hotBrand-item">
                  <img src="{{ asset("upload/product/".$rows->image) }}" alt="" class="content-hot-Brand-img" />
                  <div class="content-hotBrand-box">
                    <div class="content-hotBrand-name text-center">{{ $rows->name }}</div>
                    <div class="content-hotBrand-btn-wrapper d-flex-h">
                      <button class="btn content-hotBrand-btn">
                        Xem thêm
                      </button>
                    </div>
                  </div>
                </a>
              </div>
              @endforeach
              @endforeach
            </div>
          </div>
        </div>
        <!-- End hot Brand  -->

        <div class="content-news">
          <div class="grid wide">
            <div class="content-news-title text-center d-flex-h">
              <h2 class="title">Tin tức TM watch</h2>
            </div>
            <div class="row">
              <?php 
                  $hotNews = DB::select("select * from news where hot = 1 order by id desc limit 0,4")
               ?>
               @foreach($hotNews as $rows)
              <div class="content-news-item-wrapper col l-3 m-6 c-6">
                <a href="blog.html" class="content-news-item ">
                  <div class="content-news-img-wrapper">
                    <img src="{{ asset("upload/news/".$rows->photo) }}" alt="" class="content-news-item-img">
                  </div>
                  <h4 class="content-news-item-title">{{ $rows->name }}
                  </h4>
                  <span class="content-news-item-text">{{ $rows->description }}</span>
                </a>

              </div>
              @endforeach

              
            </div>


          </div>
        </div>
</main>


@endsection