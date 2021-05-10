<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<style type="text/css">

.bdiv{
	width : 350px;
	height : 600px;
	background-color : pink;
}
.mdiv{
	width : 300px;
	height : 500px;
	background-color : yellow;
}
.sdiv{
	width : 300px;
	height : 80px;
	background-color : white;
}
</style>
<head>
<meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title> itcha</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="manifest" href="site.webmanifest">
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">

    <!-- CSS here -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
    <link rel="stylesheet" href="assets/css/slicknav.css">
    <link rel="stylesheet" href="assets/css/flaticon.css">
    <link rel="stylesheet" href="assets/css/progressbar_barfiller.css">
    <link rel="stylesheet" href="assets/css/gijgo.css">
    <link rel="stylesheet" href="assets/css/animate.min.css">
    <link rel="stylesheet" href="assets/css/animated-headline.css">
    <link rel="stylesheet" href="assets/css/magnific-popup.css">
    <link rel="stylesheet" href="assets/css/fontawesome-all.min.css">
    <link rel="stylesheet" href="assets/css/themify-icons.css">
    <link rel="stylesheet" href="assets/css/slick.css">
    <link rel="stylesheet" href="assets/css/nice-select.css">
    <link rel="stylesheet" href="assets/css/style.css">
    
<script type="text/javascript" src="./assets/js/jquery-3.6.0.min.js"></script>
<style type="text/css">
	#img{
		width: 300px;
		height: auto;
	}
	
</style>
<script type="text/javascript">
	
</script>
</head>
<body>
 <!-- ? Preloader Start -->
    <div id="preloader-active">
        <div class="preloader d-flex align-items-center justify-content-center">
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
                                    <a href="main.jsp">itcha</a>
                                </div>
                            </div>
                            <div class="col-xl-10 col-lg-10">
                                <div class="menu-wrapper  d-flex align-items-center justify-content-end">
                                    <!-- Main-menu -->
                                    <div class="main-menu d-none d-lg-block">
                                        <nav>
                                            <ul id="navigation">                                                                                          
                                                <li><a href="features.jsp">모든 영화</a></li>
                                                <li><a href="main.jsp">검색</a></li>
                                            </ul>
                                        </nav>
                                    </div>
                                    <!-- Header-btn -->
                                    <div class="header-right-btn d-none d-lg-block ml-65">
                                        <a href="login.jsp" class="border-btn">마이페이지</a>
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
                                    <h1 data-animation="bounceIn" data-delay="0.2s">감정별 영화 추천</h1>
                                </div>
                            </div>
                        </div>
                    </div>          
                </div>
            </div>
        </section>
        <!--? Our Services Start -->
        <section class="our-services">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-xl-7 col-lg-8">
                        <!-- Section Tittle -->
                        <div class="section-tittle text-center mb-80">
                            <h2>감정 : </h2>
                        </div>
                    </div>
                </div>
                    <div id="bdiv">
                        <div id= "mdiv">
                           	<h1>포스터 위치</h1>
                        </div>
                        <div id="sdiv">
                            <h5>movie1</h5>
                      	</div>
                    </div>
                    </div>
            <div class="container">
               
                <div class="row">
                  <div class=" col-lg-4 col-md-4 col-sm-8">
	                     <div class="blog_details">
		                         <a class="d-inline-block" href="blog_details.jsp">
	                        <img src="assets/img/poster/poster100001.jpg" id="img" alt="" >
		                             <h2 class="blog-head" style="color: #2d2d2d;">가장 보통의 연애</h2>
		                         </a>
		                        <ul class="blog-info-link mt-3 mb-4">
						         	<li><a href="#"><i class="fa fa-heart"></i> 찜하기</a></li>
						         	<li><a href="#"><i class="fa fa-comments"></i> 03 Comments</a></li>
						       </ul>
	                   	 </div>
                     </div>
                    <div class=" col-lg-4 col-md-4 col-sm-8">
	                     <div class="blog_details">
		                         <a class="d-inline-block" href="blog_details.jsp">
	                        <img src="assets/img/poster/poster100002.jpg" id="img" alt="">
		                             <h2 class="blog-head" style="color: #2d2d2d;">기묘한 가족</h2>
		                         </a>
		                         <ul class="blog-info-link">
		                             <li><a href="#"><i class="fa fa-user"></i>찜하기</a></li>
		                             <li><a href="#"><i class="fa fa-comments"></i> 03 Comments</a></li>
		                         </ul>
	                   	 </div>
                     </div>
                    <div class=" col-lg-4 col-md-4 col-sm-8">
	                     <div class="blog_details">
		                         <a class="d-inline-block" href="blog_details.jsp">
	                        <img src="assets/img/poster/poster100003.jpg" id="img" alt="">
		                             <h2 class="blog-head" style="color: #2d2d2d;">감쪽같은 그녀</h2>
		                         </a>
		                         <ul class="blog-info-link">
		                             <li><a href="#"><i class="fa fa-user"></i>찜하기</a></li>
		                             <li><a href="#"><i class="fa fa-comments"></i> 03 Comments</a></li>
		                         </ul>
	                   	 </div>
                     </div>
                    <div class=" col-lg-4 col-md-4 col-sm-8">
	                     <div class="blog_details">
		                         <a class="d-inline-block" href="blog_details.jsp">
	                        <img src="assets/img/poster/poster100004.jpg" id="img" alt="">
		                             <h2 class="blog-head" style="color: #2d2d2d;">기생충</h2>
		                         </a>
		                         <ul class="blog-info-link">
		                             <li><a href="#"><i class="fa fa-user"></i>찜하기</a></li>
		                             <li><a href="#"><i class="fa fa-comments"></i> 03 Comments</a></li>
		                         </ul>
	                   	 </div>
                     </div>
                    <div class=" col-lg-4 col-md-4 col-sm-8">
	                     <div class="blog_details">
		                         <a class="d-inline-block" href="blog_details.jsp">
	                        <img src="assets/img/poster/poster100005.jpg" id="img" alt="">
		                             <h2 class="blog-head" style="color: #2d2d2d;">그대이름은 장미</h2>
		                         </a>
		                         <ul class="blog-info-link">
		                             <li><a href="#"><i class="fa fa-user"></i>찜하기</a></li>
		                             <li><a href="#"><i class="fa fa-comments"></i> 03 Comments</a></li>
		                         </ul>
	                   	 </div>
                     </div>
                    <div class=" col-lg-4 col-md-4 col-sm-8">
	                     <div class="blog_details">
		                         <a class="d-inline-block" href="blog_details.jsp">
	                        <img src="assets/img/poster/poster100006.jpg" id="img" alt="">
		                             <h2 class="blog-head" style="color: #2d2d2d;">극한직업</h2>
		                         </a>
		                         <ul class="blog-info-link">
		                             <li><a href="#"><i class="fa fa-user"></i>찜하기</a></li>
		                             <li><a href="#"><i class="fa fa-comments"></i> 03 Comments</a></li>
		                         </ul>
	                   	 </div>
                     </div>
                    <div class=" col-lg-4 col-md-4 col-sm-8">
	                     <div class="blog_details">
		                         <a class="d-inline-block" href="blog_details.jsp">
	                        <img src="assets/img/poster/poster100007.jpg" id="img" alt="">
		                             <h2 class="blog-head" style="color: #2d2d2d;">굿 라이어</h2>
		                         </a>
		                         <ul class="blog-info-link">
		                             <li><a href="#"><i class="fa fa-user"></i>찜하기</a></li>
		                             <li><a href="#"><i class="fa fa-comments"></i> 03 Comments</a></li>
		                         </ul>
	                   	 </div>
                     </div>
                    <div class=" col-lg-4 col-md-4 col-sm-8">
	                     <div class="blog_details">
		                         <a class="d-inline-block" href="blog_details.jsp">
	                        <img src="assets/img/poster/poster100008.jpg" id="img" alt="">
		                             <h2 class="blog-head" style="color: #2d2d2d;">그것</h2>
		                         </a>
		                         <ul class="blog-info-link">
		                             <li><a href="#"><i class="fa fa-user"></i>찜하기</a></li>
		                             <li><a href="#"><i class="fa fa-comments"></i> 03 Comments</a></li>
		                         </ul>
	                   	 </div>
                     </div>
                    <div class=" col-lg-4 col-md-4 col-sm-8">
	                     <div class="blog_details">
		                         <a class="d-inline-block" href="blog_details.jsp">
	                        <img src="assets/img/poster/poster100009.jpg" id="img" alt="">
		                             <h2 class="blog-head" style="color: #2d2d2d;">곤지암</h2>
		                         </a>
		                         <ul class="blog-info-link">
		                             <li><a href="#"><i class="fa fa-user"></i>찜하기</a></li>
		                             <li><a href="#"><i class="fa fa-comments"></i> 03 Comments</a></li>
		                         </ul>
	                   	 </div>
                     </div>
                    <div class=" col-lg-4 col-md-4 col-sm-8">
	                     <div class="blog_details">
		                         <a class="d-inline-block" href="blog_details.jsp">
	                        <img src="assets/img/poster/poster100010.jpg" id="img" alt="">
		                             <h2 class="blog-head" style="color: #2d2d2d;">남산의 부장들</h2>
		                         </a>
		                         <ul class="blog-info-link">
		                             <li><a href="#"><i class="fa fa-user"></i>찜하기</a></li>
		                             <li><a href="#"><i class="fa fa-comments"></i> 03 Comments</a></li>
		                         </ul>
	                   	 </div>
                     </div>
                    </div>
                </div>
        </section>
        <!-- Our Services End -->
        
    </main>
    <footer>
     <div class="footer-wrappper section-bg" data-background="assets/img/gallery/footer-bg.png">
        <!-- footer-bottom area -->
        <div class="footer-bottom-area">
            <div class="container">
                <div class="footer-border">
                    <div class="row d-flex align-items-center">
                        <div class="col-xl-12 ">
                            <div class="footer-copy-right text-center">
                                <p>3조 곽채원 김유진 최태현 윤건우 신현식</p>
                              </div>
                          </div>
                      </div>
                  </div>
              </div>
          </div>
          <!-- Footer End-->
      </div>
  </footer>

  <!-- Scroll Up -->
  <div id="back-top" >
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
<!-- Progress -->
<script src="./assets/js/jquery.barfiller.js"></script>

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