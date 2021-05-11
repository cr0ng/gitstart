<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<style type="text/css">
		
	</style>
<head>
 <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title> App landing</title>
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
                    <img src="/project/assets/img/logo/loder.png" alt="">
                </div>
            </div>
        </div>
    </div>
    <!-- Preloader Start-->


<!-- Register -->

<main class="login-body" data-vide-bg="/project/assets/img/login-bg.mp4">
    <!-- Login Admin -->
    <form class="form-default" action="login-bg.mp4" method="POST">
        
        <div class="login-form">
            <!-- logo-login -->
            <div class="logo-login">
                <a href="login.jsp"><img src="/project/assets/img/logo/loder.png" alt=""></a>
            </div>
            <h2>회원가입</h2>

            <div class="form-input">
                <label for="name">이름</label>
                <input  type="text" name="name" placeholder="이름">
            </div>
            <div class="form-input">
                <label for="name">아이디</label>
                <input  type="text" name="id" placeholder="아이디">
            </div>
            <div class="form-input">
                <label for="name">비밀번호</label>
                <input  type="password" name="pw" placeholder="비밀번호">
            </div>
            <div class="form-input">
                <label for="name">비밀번호 확인</label>
                <input type="password" name="password" placeholder="비밀번호 확인">
            </div>
            <div class="form-input">
                <label for="name">E-mail</label>
                <input type="email" name="email" placeholder="E-mail">
            </div>
            <div class="form-input">
                <label for="name">닉네임</label>
                <input type="text" name="nickname" placeholder="닉네임">
            </div>
            <div class ="form-input">
            	<label for="name">성별</label><br>
                <select name="gen"> 
                	<option value="">성별</option>
	                <option value="male">남성</option>
	                <option value="female">여성</option>
                </select>
                <hr style="padding-top : 25px">
            </div>
            <div class="form-input" >
                <label for="name">나이</label>
                <input type="text" name="age" placeholder="나이">
            </div>
            <div class="form-input" >
                <label for="name">프로필 사진</label>
                <input type="file" name="upload" style="height : 60px; padding-bottom: 10px" placeholder="파일찾기">
            </div>
            <div class="form-input pt-30">
                <input type="submit" name="submit" value="회원가입">
            </div>
            <!-- Forget Password -->
            <a href="login.jsp" class="registration">로그인</a>
        </div>
    </form>
    <!-- /end login form -->
</main>


    <script src="/project/assets/js/vendor/modernizr-3.5.0.min.js"></script>
    <!-- Jquery, Popper, Bootstrap -->
    <script src="/project/assets/js/vendor/jquery-1.12.4.min.js"></script>
    <script src="/project/assets/js/popper.min.js"></script>
    <script src="/project/assets/js/bootstrap.min.js"></script>
    <!-- Jquery Mobile Menu -->
    <script src="/project/assets/js/jquery.slicknav.min.js"></script>

    <!-- Video bg -->
    <script src="/project/assets/js/jquery.vide.js"></script>

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