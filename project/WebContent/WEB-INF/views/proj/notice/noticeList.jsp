<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title> App landing | Template</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="manifest" href="site.webmanifest">
    <link rel="shortcut icon" type="image/x-icon" href="/project/assets/img/favicon.ico">
	<link rel="stylesheet" type="text/css" href="/project/css/w3.css">
	<link rel="stylesheet" type="text/css" href="/project/css/user.css">
	<!-- CSS here -->
	<link rel="stylesheet" href="/project/assets/css/bootstrap.min.css">
	<link rel="stylesheet" href="/project/assets/css/owl.carousel.min.css">
	<link rel="stylesheet" href="/project/assets/css/slicknav.css">
    <link rel="stylesheet" href="/project/assets/css/flaticon.css">
    <link rel="stylesheet" href="/project/assets/css/progressbar_barfiller.css">
    <link rel="stylesheet" href="/project/assets/css/gijgo.css">
    <link rel="stylesheet" href="/project/assets/css/animate.min.css">
    <link rel="stylesheet" href="/project/assets/css/animated-headline.css">
	<link rel="stylesheet" href="/project/assets/css/magnific-popup.css">
	<link rel="stylesheet" href="/project/assets/css/fontawesome-all.min.css">
	<link rel="stylesheet" href="/project/assets/css/themify-icons.css">
	<link rel="stylesheet" href="/project/assets/css/slick.css">
	<link rel="stylesheet" href="/project/assets/css/nice-select.css">
	<link rel="stylesheet" href="/project/assets/css/style.css">
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
                                    <a href="index.jsp"><img src="assets/img/logo/logo.png" alt=""></a>
                                </div>
                            </div>
                            <div class="col-xl-10 col-lg-10">
                                <div class="menu-wrapper  d-flex align-items-center justify-content-end">
                                    <!-- Main-menu -->
                                    <div class="main-menu d-none d-lg-block">
                                        <nav>
                                            <ul id="navigation">                                                                                          
                                                <li class="active" ><a href="index.jsp">Home</a></li>
                                                <li><a href="features.jsp">Features</a></li>
                                                <li><a href="about.jsp">About</a></li>
                                                <li><a href="faq.jsp">FAQ</a></li>
                                                <li><a href="#">Blog</a>
                                                    <ul class="submenu">
                                                        <li><a href="blog.jsp">Blog</a></li>
                                                        <li><a href="blog_details.jsp">Blog Details</a></li>
                                                        <li><a href="elements.jsp">Element</a></li>
                                                    </ul>
                                                </li>
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
                                    <h1 data-animation="bounceIn" data-delay="0.2s">Frequently ask questions</h1>
                                </div>
                            </div>
                        </div>
                    </div>          
                </div>
            </div>
        </section>
     
                        <div class="section-tittle">
                            <h2 class="row text-center">공지 사항</h2>
                            
                        </div>
                        
                        <div class="container">
    <form id="boardForm" name="boardForm" method="post">
        <table class="table table-striped table-hover">
            <thead>
                <tr>
                    <th>번호</th>
                    <th>제목</th>
                    <th>내용</th>
                    <th>날짜</th>
                </tr>
                <tr> 
					<td>l${data.notice_no}</td> 
					<td>${data.title}</td> 
					<td>${data.content}</td> 
					<td>${data.sdate}</td> 
				</tr> 
               
				<c:set var="num" value="100"/>
				
				<c:out value="num"/>
				<c:out value="num"/>
				
				
            </thead>
            <tbody>
                <c:forEach var="result" items="${list }" varStatus="status">
                    <tr>
                        <td><c:out value="${result.code }"/></td>
                        <td><a href='#' onClick='fn_view(${result.code})'><c:out value="${result.title }"/></a></td>
                        <td><c:out value="${result.writer }"/></td>
                        <td><c:out value="${result.reg_datetime }"/></td>
                        <td></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        
        



        
        
        
        <div>            
            <a href='#' onClick='fn_write()' class="btn btn-success">글쓰기</a>            
        </div>
    </form>
    
           <div class="w3-center w3-padding-32">
    <div class="w3-bar">
      <a href="#" class="w3-bar-item w3-button w3-hover-black">«</a>
      <a href="#" class="w3-bar-item w3-black w3-button">1</a>
      <a href="#" class="w3-bar-item w3-button w3-hover-black">2</a>
      <a href="#" class="w3-bar-item w3-button w3-hover-black">3</a>
      <a href="#" class="w3-bar-item w3-button w3-hover-black">4</a>
      <a href="#" class="w3-bar-item w3-button w3-hover-black">»</a>
    </div>
  </div>
                        
                    </div>
         



    </main>

  <div class="w3-center w3-padding-32">
    <div class="w3-bar">
      <a href="#" class="w3-bar-item w3-button w3-hover-black">«</a>
      <a href="#" class="w3-bar-item w3-black w3-button">1</a>
      <a href="#" class="w3-bar-item w3-button w3-hover-black">2</a>
      <a href="#" class="w3-bar-item w3-button w3-hover-black">3</a>
      <a href="#" class="w3-bar-item w3-button w3-hover-black">4</a>
      <a href="#" class="w3-bar-item w3-button w3-hover-black">»</a>
    </div>
  </div>


    <footer>
     <div class="footer-wrappper section-bg" data-background="assets/img/gallery/footer-bg.png">
        <!-- Footer Start-->
        <div class="footer-area footer-padding">
            <div class="container">
                <div class="row justify-content-between">
                    <div class="col-xl-4 col-lg-5 col-md-4 col-sm-6">
                        <div class="single-footer-caption mb-50">
                            <div class="single-footer-caption mb-30">
                                <!-- logo -->
                                <div class="footer-logo mb-25">
                                    <a href="index.jsp"><img src="assets/img/logo/logo2_footer.png" alt=""></a>
                                </div>
                                <div class="footer-tittle">
                                    <div class="footer-pera">
                                        <p>The automated process starts as soon as your clothes go into the machine.</p>
                                    </div>
                                </div>
                                <!-- social -->
                                <div class="footer-social">
                                    <a href="#"><i class="fab fa-twitter"></i></a>
                                    <a href="https://bit.ly/sai4ull"><i class="fab fa-facebook-f"></i></a>
                                    <a href="#"><i class="fab fa-pinterest-p"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-2 col-lg-3 col-md-4 col-sm-5">
                        <div class="single-footer-caption mb-50">
                            <div class="footer-tittle">
                                <h4>Our solutions</h4>
                                <ul>
                                    <li><a href="#">Design & creatives</a></li>
                                    <li><a href="#">Telecommunication</a></li>
                                    <li><a href="#">Restaurant</a></li>
                                    <li><a href="#">Programing</a></li>
                                    <li><a href="#">Architecture</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-2 col-lg-3 col-md-4 col-sm-6">
                        <div class="single-footer-caption mb-50">
                            <div class="footer-tittle">
                                <h4>Company</h4>
                                <ul>
                                    <li><a href="#">Design & creatives</a></li>
                                    <li><a href="#">Telecommunication</a></li>
                                    <li><a href="#">Restaurant</a></li>
                                    <li><a href="#">Programing</a></li>
                                    <li><a href="#">Architecture</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-2 col-lg-4 col-md-4 col-sm-6">
                        <div class="single-footer-caption mb-50">
                            <div class="footer-tittle">
                                <h4>Support</h4>
                                <ul>
                                    <li><a href="#">Design & creatives</a></li>
                                    <li><a href="#">Telecommunication</a></li>
                                    <li><a href="#">Restaurant</a></li>
                                    <li><a href="#">Programing</a></li>
                                    <li><a href="#">Architecture</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- footer-bottom area -->
        <div class="footer-bottom-area">
            <div class="container">
                <div class="footer-border">
                    <div class="row d-flex align-items-center">
                        <div class="col-xl-12 ">
                            <div class="footer-copy-right text-center">
                                <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                                  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
                                  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
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
	<script src="/project/assets/js/vendor/modernizr-3.5.0.min.js"></script>
	<!-- Jquery, Popper, Bootstrap -->
	<script src="/project/assets/js/vendor/jquery-1.12.4.min.js"></script>
	<script src="/project/assets/js/popper.min.js"></script>
	<script src="/project/assets/js/bootstrap.min.js"></script>
	<!-- Jquery Mobile Menu -->
	<script src="/project/assets/js/jquery.slicknav.min.js"></script>
	
	<!-- Jquery Slick , Owl-Carousel Plugins -->
	<script src="/project/assets/js/owl.carousel.min.js"></script>
	<script src="/project/assets/js/slick.min.js"></script>
	<!-- One Page, Animated-HeadLin -->
	<script src="/project/assets/js/wow.min.js"></script>
	<script src="/project/assets/js/animated.headline.js"></script>
	<script src="/project/assets/js/jquery.magnific-popup.js"></script>
	
	<!-- Date Picker -->
	<script src="/project/assets/js/gijgo.min.js"></script>
	<!-- Nice-select, sticky -->
	<script src="/project/assets/js/jquery.nice-select.min.js"></script>
	<script src="/project/assets/js/jquery.sticky.js"></script>
	<!-- Progress -->
	<script src="/project/assets/js/jquery.barfiller.js"></script>
	
	<!-- counter , waypoint,Hover Direction -->
	<script src="/project/assets/js/jquery.counterup.min.js"></script>
	<script src="/project/assets/js/waypoints.min.js"></script>
	<script src="/project/assets/js/jquery.countdown.min.js"></script>
	<script src="/project/assets/js/hover-direction-snake.min.js"></script>
	
	<!-- contact js -->
	<script src="/project/assets/js/contact.js"></script>
	<script src="/project/assets/js/jquery.form.js"></script>
	<script src="/project/assets/js/jquery.validate.min.js"></script>
	<script src="/project/assets/js/mail-script.js"></script>
	<script src="/project/assets/js/jquery.ajaxchimp.min.js"></script>
	
	<!-- Jquery Plugins, main Jquery -->	
	<script src="/project/assets/js/plugins.js"></script>
	<script src="/project/assets/js/main.js"></script>

</body>
</html>