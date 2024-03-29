<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title> itcha</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
     <link rel="manifest" href="site.webmanifest">
    <link rel="shortcut icon" type="image/x-icon" href="/project/assets/img/favicon.ico">
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Karma">
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
    
<script type="text/javascript" src="/project/assets/js/jquery-3.6.0.min.js"></script>
<style type="text/css">
	.pimg{
		width: 300px;
		height: auto;
	}
	
</style>
<script type="text/javascript">

$(document).ready(function(){
	
	$('.w3-button.pbtn').click(function(){
		var pno = $(this).html();
		
		if(pno == 'pre'){
			pno = '${PAGE.startCont - 1}';
		} else if(pno == 'next'){
			pno = '${PAGE.endCont + 1}';
		}
		
		$('#nowPage').val(pno);
		$('#frm').submit();
	});
	
	$('.mbtn').click(function(){
		var mno = $(this).attr('id');
		alert('############ ' + mno);
		$('#mno').val(mno);
		$('#frm').attr('action', '/project/movie/movieDetail.project');
		$('#frm').submit();
	});
	$('.gbtn').click(function(){
		var gno = $(this).attr('id').substring(3);
		alert('############ ' + gno);
		$('#gno').val(gno);
		$('#frm').attr('action', '/project/movie/genreList.project');
		$('#frm').submit();
	});
	$('#outbtn').click(function(){
		$(location).attr('href','http://localhost/project/member/logout.project');
	});
});
</script>
</head>
<body>
<form method="POST" action="/project/movie/genreList.project"  id="frm" name="frm">
		<input type="hidden" name="nowPage" id="nowPage" value="${PAGE.nowPage}"> <!-- 현재페이지 전송용 || 이동페이지 전송용 -->
		<input type="hidden" name="mno" id="mno"> <!-- 글번호 전송용태그 -->
		<input type="hidden" name="gno" id="gno" value="${GNO}"> <!-- 글번호 전송용태그 -->
</form>
 <!-- ? Preloader Start -->
    <div id="preloader-active">
        <div class="preloader d-flex align-items-center justify-content-center">
            <div class="preloader-inner position-relative">
                <div class="preloader-circle"></div>
                <div class="preloader-img pere-text">
                    <img src="/project/assets/img/logo/loder.png" alt="">
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
                                    <a href="main.project">itcha</a>
                                </div>
                            </div>
                            <div class="col-xl-10 col-lg-10">
                                <div class="menu-wrapper  d-flex align-items-center justify-content-end">
                                    <!-- Main-menu -->
                                    <div class="main-menu d-none d-lg-block">
                                        <nav>
                                            <ul id="navigation">                                                                                          
                                                <li><a href="/project/movie/movieList.project">모든 영화</a></li>
                                                <li><a href="/project/main.project">검색</a></li>
                                                <li><a href="#">공지사항</a></li>
                                            </ul>
                                        </nav>
                                    </div>
                                    <!-- Header-btn -->
                                    <div class="header-right-btn d-none d-lg-block ml-65">
                                        <a href="/project/member/myPage.project" class="border-btn">마이페이지</a>
                                    </div>
                                     <div class="header-right-btn d-none d-lg-block ml-65">
                                        <div class="border-btn" id="outbtn" >로그아웃</div>
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
                                    <h1 data-animation="bounceIn" data-delay="0.2s">MOVIES</h1>
                                </div>
                            </div>
                        </div>
                    </div>          
                </div>
            </div>
        </section>
        <!--? Our Services Start -->
       <aside class="single_sidebar_widget post_category_widget">
								<h4 class="widget_title" style="color: #2d2d2d;">장르</h4>
								<ul class="list cat-list">
					<c:forEach var="data" items="${GLIST}">
									<li><a href="#" class="inblock w150 w3-text-grey gbtn" id="gno${data.gno}">
											<span>${data.name} [ ${data.cnt} ]</span>
									</a></li>
					</c:forEach>
								
								<%-- 
									<li><a href="#" class="d-flex gbtn" >
											<p>코미디</p>
											<p>(10)</p>
									</a></li>
									<li><a href="#" class="d-flex gbtn" >
											<p>액션</p>
											<p>(03)</p>
									</a></li>
									<li><a href="#" class="d-flex gbtn">
											<p>SF</p>
											<p>(11)</p>
									</a></li>
									<li><a href="#" class="d-flex gbtn">
											<p>공포/호러물</p>
											<p>(21)</p>
									</a></li>
								--%>
								</ul>
							</aside>
        <section class="our-services">
            <div class="container">
               
                <div class="row">
               <c:forEach var="data" items="${LIST}">
                    <div class=" col-lg-4 col-md-4 col-sm-8">
	                     <div class="blog_details">
		                         <a class="d-inline-block mbtn" href="#" id="${data.mno}">
	                        <img src="/project/${data.dir}/${data.savename}" class="pimg" alt="" >
		                             <h2 class="blog-head" style="color: #2d2d2d;">${data.title}</h2>
		                         </a>
		                        <ul class="blog-info-link">
						         	<li><a href="#"><i class="fa fa-heart"></i> 찜하기</a></li>
						         	<li><a href="#"><i class="fa fa-comments"></i> 03 Comments</a></li>
						       </ul>
	                   	 </div>
                     </div>
               </c:forEach>
                  
                   
               </div>
                   
                </div>
        </section>
        <!-- Our Services End -->
        
    </main>

  <!-- Scroll Up -->
  <div id="back-top" >
    <a title="Go to Top" href="#"> <i class="fas fa-level-up-alt"></i></a>
</div>
 <!-- Pagination 
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
 -->
 		<div class="w3-center w3-padding-32">
			<div class="w3-bar">
	<c:if test="${PAGE.startPage == 1}">
				<span class="w3-bar-item w3-button w3-hover-black">pre</span>
	</c:if>
	<c:if test="${PAGE.startPage != 1}">
				<span class="w3-bar-item w3-button w3-hover-black pbtn">pre</span>
	</c:if>
<c:forEach var="page" begin="${PAGE.startPage}" end="${PAGE.endPage}">
	<c:if test="${PAGE.nowPage == page}">
				<span class="w3-bar-item w3-button w3-hover-black pbtn">${page}</span>
	</c:if>
	<c:if test="${PAGE.nowPage != page}">
				<span class="w3-bar-item w3-button w3-hover-black pbtn">${page}</span>
	</c:if>
</c:forEach>
	<c:if test="${PAGE.endPage == PAGE.totalPage}">
				<span class="w3-bar-item w3-button w3-hover-black">next</span>
	</c:if>
	<c:if test="${PAGE.endPage != PAGE.totalPage}">
				<span class="w3-bar-item w3-button w3-hover-black pbtn">next</span>
	</c:if>
			</div>
		</div>
		
    <footer>
     <div class="footer-wrappper section-bg" data-background="/project/assets/img/gallery/footer-bg.png">
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