@extends("frontend.layout")
@section("do-du-lieu")
<?php 
	//lay bai tin
	$news = DB::table("news")->where("id","=",$id)->first();
 ?>
 <link rel="stylesheet" href="{{ asset('EvoWatch/assets/css/blog.css') }}">
 <link rel="stylesheet" href="{{ asset('EvoWatch/assets/css/blogs.css') }}">
<main class="blog">
	<div class="grid wide">

	  <h2 class="blog-post_title">{{ $news->name }}</h2>
	  <article class="blog-post_content">
	    <p class="blog-post_paragraph">
	    	{!! $news->description !!}
		{!! $news->content !!}
	    </p>

	  </article>
	</div>
	
</main>
<main class="blogs">
<div class="blogs-article">
  <div class="grid wide">
    <div class="row">
    	<?php 
	        	$other_news = DB::select("select * from news order by id asc limit 0,4");
	         ?>
	         @foreach($other_news as $rows)
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
  </div>
</div>
</main>
 @endsection