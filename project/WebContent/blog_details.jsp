<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>App landing | Template</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" type="image/x-icon"
	href="assets/img/favicon.ico">


<!-- CSS here -->
<link rel="stylesheet" href="assets/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/owl.carousel.min.css">
<link rel="stylesheet" href="assets/css/slicknav.css">
<link rel="stylesheet" href="assets/css/animate.min.css">
<link rel="stylesheet" href="assets/css/hamburgers.min.css">
<link rel="stylesheet" href="assets/css/magnific-popup.css">
<link rel="stylesheet" href="assets/css/fontawesome-all.min.css">
<link rel="stylesheet" href="assets/css/themify-icons.css">
<link rel="stylesheet" href="assets/css/slick.css">
<link rel="stylesheet" href="assets/css/nice-select.css">
<link rel="stylesheet" href="assets/css/style.css">

<script type="text/javascript" src="./assets/js/jquery-3.6.0.min.js"></script>
<style type="text/css">
	#img{
		width: 100%;
		height: auto;
	}
	.dir {
		font-weight: bolder;
	}
</style>
<script type="text/javascript">
	
</script>
</head>

<body>
	<!--? Preloader Start -->
	<div id="preloader-active">
		<div
			class="preloader d-flex align-items-center justify-content-center">
			<div class="preloader-inner position-relative">
				<div class="preloader-circle"></div>
				<div class="preloader-img pere-text">
					<img src="assets/img/logo/loder.png" alt="">
				</div>
			</div>
		</div>
	</div>
	<!-- Preloader Start -->
	<header>
		<!-- Header Start -->
		<div class="header-area header-transparent">
			<div class="main-header ">
				<div class="header-bottom  header-sticky">
					<div class="container-fluid">
						<div class="row align-items-center">
							<!-- Logo -->
							<div class="col-xl-2 col-lg-2">
								<div class="logo">
									<a href="index.jsp"><img src="assets/img/logo/logo.png"
										alt=""></a>
								</div>
							</div>
							<div class="col-xl-10 col-lg-10">
								<div
									class="menu-wrapper  d-flex align-items-center justify-content-end">
									<!-- Main-menu -->
									<div class="main-menu d-none d-lg-block">
										<nav>
											<ul id="navigation">
												<li class="active"><a href="features.jsp">모든영화</a></li>
												<li><a href="myPage.jsp">나의페이지</a></li>
												<li><a href="main.jsp">검색</a></li>
												<li><a href="faq.jsp">FAQ</a></li>
												<li><a href="#">Blog</a>
													<ul class="submenu">
														<li><a href="blog.jsp">Blog</a></li>
														<li><a href="blog_details.jsp">Blog Details</a></li>
														<li><a href="elements.jsp">Element</a></li>
													</ul></li>
												<li><a href="contact.jsp">Contact</a></li>
											</ul>
										</nav>
									</div>
									<!-- Header-btn -->
									<div class="header-right-btn d-none d-lg-block ml-65">
										<a href="login.jsp" class="border-btn">Log in</a>
									</div>
								</div>
							</div>
							<!-- Mobile Menu -->
							<div class="col-12">
								<div class="mobile_menu d-block d-lg-none"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Header End -->
	</header>
	<main>
		<!--? slider Area Start-->
		<section class="slider-area slider-area2">
			<div class="slider-active">
				<!-- Single Slider -->
				<div class="single-slider slider-height2">
					<div class="container">
						<div class="row justify-content-center">
							<div class="col-xl-8 col-lg-11 col-md-12">
								<div class="hero__caption hero__caption2 text-center">
									<h1 data-animation="bounceIn" data-delay="0.2s">Movie
										Information</h1>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!--? Blog Area Start -->
		<section class="blog_area single-post-area section-padding">
			<div class="container">
				<div class="row">
					<div class="col-lg-8 posts-list">
						<div class="single-post">
							<div class="feature-img">
								<img class="img-fluid" src="assets/img/poster/poster100001.jpg" id="img" alt="">
							</div>
							<div class="blog_details">
								<h2 style="color: #2d2d2d;">가장 보통의 연애</h2>
								<ul class="blog-info-link mt-3 mb-4">
									<li><a href="#"><i class="fa fa-user"></i>개봉년도-</a></li>
									<li><a href="#"><i class="fa fa-user"></i>장르-</a></li>
									<li><a href="#"><i class="fa fa-user"></i>러닝타임-</a></li>
									<li><a href="#"><i class="fa fa-heart"></i> 찜하기</a></li>
									<li><a href="#"><i class="fa fa-comments"></i> 03 Comments</a></li>
								</ul>
							</div>
						</div>
						<div class="navigation-top">
							<div class="d-sm-flex justify-content-between text-center">
								<p class="like-info">
									<span class="align-middle"></span> 플랫폼
								</p>
								<div class="col-sm-4 text-center my-2 my-sm-0">
									<!-- <p class="comment-count"><span class="align-middle"><i class="fa fa-comment"></i></span> 06 Comments</p> -->
								</div>
								<ul class="social-icons">
									<li><a href="https://www.naver.com"><i
											class="fab fa-facebook-f"></i></a></li>
									<li><a href="#"><i class="fab fa-twitter"></i></a></li>
									<li><a href="#"><i class="fab fa-dribbble"></i></a></li>
									<li><a href="#"><i class="fab fa-behance"></i></a></li>
								</ul>
							</div>
							
							<div class="comments-area">
								<h4>줄거리</h4>
								<div class="comment-list">
									<div class="single-comment justify-content-between d-flex">
										<div class="user justify-content-between d-flex">
											<div class="desc">
												<p class="comment">전 여친에 상처받은 ‘재훈’(김래원).여느 때처럼 숙취로 시작한
													아침, 모르는 번호의 누군가와 밤새 2시간이나 통화한 기록을 발견하게 되고 그 상대가 바로! 통성명한 지
													24시간도 채 되지 않은 직장 동료 ‘선영’임을 알게 된다. 남친과 뒤끝 있는 이별 중인
													‘선영’(공효진). 새로운 회사로 출근한 첫날, 할 말 못 할 말 쏟아내며 남친과 헤어지던 현장에서
													하필이면! 같은 직장의 ‘재훈’을 마주친다. 만난 지 하루 만에 일보다 서로의 연애사를 더 잘 알게 된 두
													사람. 하지만 미묘한 긴장과 어색함도 잠시 ‘한심하다’, ‘어이없다’ 부딪히면서도 마음이 쓰이는 건 왜
													그럴까?</p>
											</div>
										</div>
									</div>
								</div>
							</div>

						</div>
						
						<div class="blog-author">
							<div class="media align-items-center">
								<div class="media-body">
									<h3 id="dir">감독 </h3> 
									<a href="#">
										<p>김한결</p>
									</a>
								</div>
							</div>
							<div class="media align-items-center" id="actor1">
								<div class="media-body">
										<h3>주연1 </h3> 
									<a href="#">
										<p>김래원</p>
									</a>
								</div>
							</div>
							<div class="media align-items-center" id="actor2">
								<div class="media-body">
										<h3>주연2 </h3> 
									<a href="#">
										<p>공효진</p>
									</a>
								</div>
							</div>
						</div>
						
						
						<div class="comments-area">
							<h4>한줄평</h4>
							<div class="comment-list">
								<div class="single-comment justify-content-between d-flex">
									<div class="user justify-content-between d-flex">
										<div class="thumb">
											<img src="assets/img/blog/comment_1.png" alt="">
										</div>
										<div class="desc">
											<p class="comment"></p>
											<div class="d-flex justify-content-between">
												<div class="d-flex align-items-center">
													<h5>
														<a href="#">Emilly Blunt</a>
													</h5>
													<p class="date">December 4, 2017 at 3:12 pm</p>
												</div>
												<div class="reply-btn">
													<a href="#" class="btn-reply text-uppercase">reply</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="comment-list">
								<div class="single-comment justify-content-between d-flex">
									<div class="user justify-content-between d-flex">
										<div class="thumb">
											<img src="assets/img/blog/comment_2.png" alt="">
										</div>
										<div class="desc">
											<p class="comment"></p>
											<div class="d-flex justify-content-between">
												<div class="d-flex align-items-center">
													<h5>
														<a href="#">Emilly Blunt</a>
													</h5>
													<p class="date">December 4, 2017 at 3:12 pm</p>
												</div>
												<div class="reply-btn">
													<a href="#" class="btn-reply text-uppercase">reply</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="comment-list">
								<div class="single-comment justify-content-between d-flex">
									<div class="user justify-content-between d-flex">
										<div class="thumb">
											<img src="assets/img/blog/comment_3.png" alt="">
										</div>
										<div class="desc">
											<p class="comment"></p>
											<div class="d-flex justify-content-between">
												<div class="d-flex align-items-center">
													<h5>
														<a href="#">Emilly Blunt</a>
													</h5>
													<p class="date">December 4, 2017 at 3:12 pm</p>
												</div>
												<div class="reply-btn">
													<a href="#" class="btn-reply text-uppercase">reply</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="comment-form">
							<h4>
								한 줄평 <a href="#"><i class="fa fa-heart"></i> 찜하기</a>
							</h4>
							<form class="form-contact comment_form" action="#"
								id="commentForm">
								<div class="row">
									<div class="col-12">
										<div class="form-group">
											<img src="assets/img/blog/comment_2.png" alt="">
											<textarea class="form-control w-100" name="comment"
												id="comment" cols="30" rows="2" placeholder="한 줄평 남기기"></textarea>
										</div>
									</div>
									<div class="col-12">
										<div class="form-group">
											<input class="form-control" name="name" id="name" type="text"
												placeholder="닉네임">
										</div>
									</div>
									<div class="col-12">
										<div class="form-group">
											<input class="form-control" name="website" id="website"
												type="text" placeholder="Website">
										</div>
									</div>
								</div>
								<div class="form-group">
									<button type="submit"
										class="button button-contactForm btn_1 boxed-btn">입력</button>
								</div>
								<div class="reply-btn">
									<a href="#" class="btn-reply text-uppercase">reply</a>
								</div>
							</form>
						</div>
					</div>
					
					<div class="col-lg-4">
						<div class="blog_right_sidebar">
							<aside class="single_sidebar_widget search_widget">
								<form action="#">
									<div class="form-group">
										<div class="input-group mb-3">
											<input type="text" class="form-control"
												placeholder='Search Keyword' onfocus="this.placeholder = ''"
												onblur="this.placeholder = 'Search Keyword'">
											<div class="input-group-append">
												<button class="btns" type="button">
													<i class="ti-search"></i>
												</button>
											</div>
										</div>
									</div>
									<button
										class="button rounded-0 primary-bg text-white w-100 btn_1 boxed-btn"
										type="submit">Search</button>
								</form>
							</aside>
							<aside class="single_sidebar_widget post_category_widget">
								<h4 class="widget_title" style="color: #2d2d2d;">장르</h4>
								<ul class="list cat-list">
									<li><a href="#" class="d-flex">
											<p>멜로/로맨스</p>
											<p>(37)</p>
									</a></li>
									<li><a href="#" class="d-flex">
											<p>코미디</p>
											<p>(10)</p>
									</a></li>
									<li><a href="#" class="d-flex">
											<p>액션</p>
											<p>(03)</p>
									</a></li>
									<li><a href="#" class="d-flex">
											<p>SF</p>
											<p>(11)</p>
									</a></li>
									<li><a href="#" class="d-flex">
											<p>공포/호러물</p>
											<p>(21)</p>
									</a></li>
								</ul>
							</aside>
							<aside class="single_sidebar_widget popular_post_widget">
								<h3 class="widget_title" style="color: #2d2d2d;">OST</h3>
								<div class="media post_item">
									<img src="assets/img/post/post_1.png" alt="post">
									<div class="media-body">
										<a
											href="https://music.youtube.com/watch?v=FbCYcE_4VlQ&feature=share">
											<h3 style="color: #2d2d2d;">I Am Better Off</h3>
										</a>
										<p>Wildson</p>
									</div>
								</div>
								<div class="media post_item">
									<img src="assets/img/post/post_2.png" alt="post">
									<div class="media-body">
										<a href="blog_details.jsp">
											<h3 style="color: #2d2d2d;">The Amazing Hubble</h3>
										</a>
										<p>02 Hours ago</p>
									</div>
								</div>
							</aside>

							<aside class="single_sidebar_widget instagram_feeds">
								<h4 class="widget_title" style="color: #2d2d2d;">Instagram
									Feeds</h4>
								<ul class="instagram_row flex-wrap">
									<li><a href="#"> <img class="img-fluid"
											src="assets/img/post/post_5.png" alt="">
									</a></li>
									<li><a href="#"> <img class="img-fluid"
											src="assets/img/post/post_6.png" alt="">
									</a></li>
									<li><a href="#"> <img class="img-fluid"
											src="assets/img/post/post_7.png" alt="">
									</a></li>
									<li><a href="#"> <img class="img-fluid"
											src="assets/img/post/post_8.png" alt="">
									</a></li>
									<li><a href="#"> <img class="img-fluid"
											src="assets/img/post/post_9.png" alt="">
									</a></li>
									<li><a href="#"> <img class="img-fluid"
											src="assets/img/post/post_10.png" alt="">
									</a></li>
								</ul>
							</aside>

						</div>
					</div>
					
					
				</div>
			</div>
		</section>
		<%--
<!-- Blog Area End -->
<!--? Want To work 01-->
<section class="wantToWork-area " >
 <div class="container">
   <div class="wants-wrapper w-padding2 section-bg2" data-background="assets/img/gallery/section_bg02.png">
     <div class="row align-items-center justify-content-center">
       <div class="col-xl-7 col-lg-9 col-md-8">
         <div class="wantToWork-caption text-center">
           <h2>Start finding your dream job</h2>
           <p>The automated process starts as soon as your clothes go into the machine. The outcome is gleaming clothes placeholder text commonly used.</p>
           <a href="#" class="btn3 wantToWork-btn">Browse Job</a>
         </div>
       </div>
     </div>
   </div>
 </div>
</section>
 --%>
	</main>
	
	<div id="back-top">
		<a title="Go to Top" href="#"> <i class="fas fa-level-up-alt"></i></a>
	</div>

	<!-- JS here -->

	<script src="./assets/js/vendor/modernizr-3.5.0.min.js"></script>
	<!-- Jquery, Popper, Bootstrap -->
	<script src="./assets/js/vendor/jquery-1.12.4.min.js"></script>
	<script src="./assets/js/popper.min.js"></script>
	<script src="./assets/js/bootstrap.min.js"></script>
	<!-- Jquery Mobile Menu -->
	<script src="./assets/js/jquery.slicknav.min.js"></script>

	<!-- Jquery Slick , Owl-Carousel Plugins -->
	<script src="./assets/js/owl.carousel.min.js"></script>
	<script src="./assets/js/slick.min.js"></script>
	<!-- One Page, Animated-HeadLin -->
	<script src="./assets/js/wow.min.js"></script>
	<script src="./assets/js/animated.headline.js"></script>
	<script src="./assets/js/jquery.magnific-popup.js"></script>

	<!-- Date Picker -->
	<script src="./assets/js/gijgo.min.js"></script>
	<!-- Nice-select, sticky -->
	<script src="./assets/js/jquery.nice-select.min.js"></script>
	<script src="./assets/js/jquery.sticky.js"></script>

	<!-- counter , waypoint,Hover Direction -->
	<script src="./assets/js/jquery.counterup.min.js"></script>
	<script src="./assets/js/waypoints.min.js"></script>
	<script src="./assets/js/jquery.countdown.min.js"></script>
	<script src="./assets/js/hover-direction-snake.min.js"></script>

	<!-- contact js -->
	<script src="./assets/js/contact.js"></script>
	<script src="./assets/js/jquery.form.js"></script>
	<script src="./assets/js/jquery.validate.min.js"></script>
	<script src="./assets/js/mail-script.js"></script>
	<script src="./assets/js/jquery.ajaxchimp.min.js"></script>

	<!-- Jquery Plugins, main Jquery -->
	<script src="./assets/js/plugins.js"></script>
	<script src="./assets/js/main.js"></script>

</body>
</html>