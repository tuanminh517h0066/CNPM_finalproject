<!DOCTYPE html>
<html>
<head>
	<base href="{{asset('public/layout/frontend')}}/">
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">	
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<title>Kachi Shop - Home</title>
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/home.css">
	<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<script type="text/javascript">
		$(function() {
			var pull        = $('#pull');
			menu        = $('nav ul');
			menuHeight  = menu.height();

			$(pull).on('click', function(e) {
				e.preventDefault();
				menu.slideToggle();
			});
		});

		$(window).resize(function(){
			var w = $(window).width();
			if(w > 320 && menu.is(':hidden')) {
				menu.removeAttr('style');
			}
		});
	</script>
</head>
<body>    
	<!-- header -->
	<header id="header">
		<div class="container">
			<div class="row">
				<div id="search" class="col-md-10 col-sm-12 col-xs-12">
					<input type="text" name="text" value="Nhập từ khóa ...">
					<input type="submit" name="submit" value="Tìm Kiếm">
				</div>
				<div id="cart" class="col-md-2 col-sm-12 col-xs-12">
					<a class="display" href="{{asset('cart/show')}}">Giỏ hàng</a>
					<a href="#">0</a>				    
				</div>
			</div>			
		</div>
	</header><!-- /header -->
	<!-- endheader -->

	<!-- main -->
	<section id="body">
		<div class="container">
			<div class="row">
				<div id="sidebar" class="col-md-3">
					<nav id="menu">
						<ul>
							<li class="menu-item">danh mục sản phẩm</li>
							@foreach( $categories as $cate)
							<li class="menu-item"><a href="{{asset('category/'.$cate->cate_id.'/'.$cate->cate_slug.'.html')}}" title="">{{$cate->cate_name}}</a>
							</li>
							@endforeach				
						
						</ul>
						<!-- <a href="#" id="pull">Danh mục</a> -->
					</nav>

					<div id="banner-l" class="text-center">
						<div class="banner-l-item">
							<a href="#"><img src="img/home/banner_1.jpg" alt="" class="img-thumbnail"></a>
						</div>
						<div class="banner-l-item">
							<a href="#"><img src="img/home/banner_2.jpg" alt="" class="img-thumbnail"></a>
						</div>
						<div class="banner-l-item">
							<a href="#"><img src="img/home/banner_4.jpg" alt="" class="img-thumbnail"></a>
						</div>
						<div class="banner-l-item">
							<a href="#"><img src="img/home/banner_3.jpg" alt="" class="img-thumbnail"></a>
						</div>
						<div class="banner-l-item">
							<a href="#"><img src="img/home/banner_5.jpg" alt="" class="img-thumbnail"></a>
						</div>
					</div>
				</div>

				<div id="main" class="col-md-9">
					<!-- main -->
					<!-- phan slide la cac hieu ung chuyen dong su dung jquey -->
					<div id="slider">
						<div id="demo" class="carousel slide" data-ride="carousel">

							<!-- Indicators -->
							<ul class="carousel-indicators">
								<li data-target="#demo" data-slide-to="0" class="active"></li>
								<li data-target="#demo" data-slide-to="1"></li>
								<li data-target="#demo" data-slide-to="2"></li>
							</ul>

							<!-- The slideshow -->
							<div class="carousel-inner">
								<div class="carousel-item active">
									<img src="img/home/computer_1.jpg" alt="Los Angeles" >
								</div>
								<div class="carousel-item">
									<img src="img/home/computer_2.jpg" alt="Chicago">
								</div>
								<div class="carousel-item">
									<img src="img/home/computer_3.jpg" alt="New York" >
								</div>
							</div>

							<!-- Left and right controls -->
							<a class="carousel-control-prev" href="#demo" data-slide="prev">
								<span class="carousel-control-prev-icon"></span>
							</a>
							<a class="carousel-control-next" href="#demo" data-slide="next">
								<span class="carousel-control-next-icon"></span>
							</a>
						</div>
					</div>

					<div id="banner-t" class="text-center">
						<div class="row">
							<div class="banner-t-item col-md-6 col-sm-12 col-xs-12">
								<a href="#"><img src="img/home/phukien_1.jpg" alt="" class="img-thumbnail"></a>
							</div>
							<div class="banner-t-item col-md-6 col-sm-12 col-xs-12">
								<a href="#"><img src="img/home/phukien_2.jpg" alt="" class="img-thumbnail"></a>
							</div>
						</div>					
					</div>

					<div id="wrap-inner">
						<div class="products">
							<h3>sản phẩm nổi bật</h3>
							<div class="product-list row">
								@foreach($featured as $item)
								<div class="product-item col-md-3 col-sm-6 col-xs-12">
									<a href="#"><img height="150px" src="{{asset('lib/storage/app/avatar/'.$item->prod_img)}}" class="img-thumbnail"></a>
									<p><a href="#">{{$item->prod_name}}</a></p>
									<p class="price">{{number_format($item->prod_price,0,',','.')}}</p>	  
									<div class="marsk">
										<a href="{{asset('detail/'.$item->prod_id.'/'.$item->prod_slug.'.html')}}">Xem chi tiết</a>
									</div>                                    
								</div>
								@endforeach
								
							</div>                	                	
						</div>

						<div class="products">
							<h3>sản phẩm mới</h3>
							<div class="product-list row">

								@foreach($new as $item)
								<div class="product-item col-md-3 col-sm-6 col-xs-12">
									<a href="#"><img height="150px" src="{{asset('lib/storage/app/avatar/'.$item->prod_img)}}" class="img-thumbnail"></a>
									<p><a href="#">{{$item->prod_name}}</a></p>
									<p class="price">{{number_format($item->prod_price,0,',','.')}}</p>	  
									<div class="marsk">
										<a href="{{asset('detail/'.$item->prod_id.'/'.$item->prod_slug.'.html')}}">Xem chi tiết</a>
									</div>                                    
								</div>
								@endforeach
								
							</div>    
						</div>
					</div>
					
					<!-- end main -->
				</div>
			</div>
		</div>
	</section>
	<!-- endmain -->

	<!-- footer -->
	<footer id="footer">			
		<div id="footer-t">
			<div class="container">
				<div class="row">				
					<div id="about" class="col-md-3 col-sm-12 col-xs-12">
						<h3>About us</h3>
						<p class="text-justify">Kachi Store thành lập năm 2019. Chúng tôi chuyên mua bán các sản phẩm công nghệ có chất lượng cao được nhập khẩu từ cái đại lý lớn trên thế giới. Các sản phẩm chủ yếu là các dòng laptop có hiệu năng cao. Ngoài ra, chúng tôi còn cung cấp dịch vụ xây dựng PC cho khách hàng nếu có yêu cầu. Tất cả với châm ngôn: TRẢI NGHIỆM ĐỈNH CAO</p>
					</div>
					<div id="hotline" class="col-md-3 col-sm-12 col-xs-12">
						<h3>Hotline</h3>
						<p>Phone Sale: (+84) 0988 550 553</p>
						<p>Email: sirtuanhoang@gmail.com</p>
					</div>
					<div id="contact" class="col-md-3 col-sm-12 col-xs-12">
						<h3>Contact Us</h3>
						<p>Address 1: B8A Võ Văn Dũng - Hoàng Cầu Đống Đa - Hà Nội</p>
						<p>Address 2: Số 25 Ngõ 178/71 - Tây Sơn Đống Đa - Hà Nội</p>
					</div>
				</div>				
			</div>
			<div id="footer-b">				
				<div class="container">
					<div class="row">
						<div id="footer-b-l" class="col-md-6 col-sm-12 col-xs-12 text-center">
							<p>Kachi store - www.Kachistore.vn</p>
						</div>
						<div id="footer-b-r" class="col-md-6 col-sm-12 col-xs-12 text-center">
							<p>© 2017 Kachi Store. All Rights Reserved</p>
						</div>
					</div>
				</div>
				<div id="scroll">
					<a href="#"><img src="img/home/scroll.png"></a>
				</div>	
			</div>
		</div>
	</footer>
	<!-- endfooter -->
</body>
</html>