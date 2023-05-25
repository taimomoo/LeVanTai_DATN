@extends("frontend.layout")
@section("do-du-lieu")
<?php 
	//lay danh sach cac bai tin co phan trang
	$news = DB::table("news")->paginate(4);
 ?>
 <link rel="stylesheet" href="{{ asset('EvoWatch/assets/css/blogs.css') }}">
<main class="blogs">
<div class="barner">

</div>

<div class="blogs-article">
  <div class="grid wide">
    <div class="row">
    	@foreach($news as $rows)
      <div class="blogs-article-wrapper col l-3 m-4 c-12">
        <a href="{{ url('news/detail/'.$rows->id) }}" class="blogs-article-item">
          <div class="image-wrapper">
            <img src="{{ asset('upload/news/'.$rows->photo) }}" alt="" class="blogs-article-item-img">
          </div>
          <span class="blogs-article-item-title">{{ $rows->name }}</span>
          <span class="blogs-article-item-paragraph">{!! $rows->description !!}</span>
        </a>
      </div>
      @endforeach
      
    </div>
    <div class="clear"></div>
    <div class="post-navi">
        <!-- phan trang -->
        {{ $news->render() }}
    </div>
  </div>
</div>
</main>
 @endsection("do-du-lieu")