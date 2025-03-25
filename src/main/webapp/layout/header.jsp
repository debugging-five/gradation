<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../assets/css/layout/header.css" />
<link rel="stylesheet" type="text/css" href="../assets/css/font/font.css" />
<title>header</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
    <header>
        <nav>
           <!-- 로고 이미지 -->
            <div class="headerLogo-wrap">
                <a href="/gradation/main/main.main"><img id="headerLogo" src="../assets/images/layout/header/header-logo.png" alt="header-logo"></a>
            </div>
            
            <ul class="menu">
            
                <!-- display -->
                <li><a href="/gradation/display/display-main-ing.display">display</a>
                   <ul class="dropdown">
                      <!-- display 드롭다운 -->
                      <li><a href="/gradation/display/display-main-ing.display">전시 중인 작품</a></li>
                      <li><a href="/gradation/display/display-main-comming-soon.display">전시 예정인 작품</a></li>
                   </ul>
                </li>
                
                <!-- artist -->
                <li><a href="/gradation/artist/artist-main.artist">artist</a></li>
                
                <!-- auction -->
                <li><a href="/gradation/auction/auction-main.auction">auction</a>
                   <ul class="dropdown">
                      <!-- auction 드롭다운 -->
                      <li><a href="#">경매중</a></li>
                      <li><a href="#">경매 예정</a></li>
                      <li><a href="#">경매 완료</a></li>
                   </ul>
                </li>
                
                <!-- exhibition -->
                <li><a href="/gradation/exhibition/gradation-exhibition-main.exhibition">exhibition</a>
                   <ul class="dropdown">
                      <!-- exhibition 드롭다운 -->
                      <li><a href="/gradation/exhibition/gradation-exhibition-main.exhibition">그라데이션 전시회</a></li>
                      <li><a href="/gradation/exhibition/university-exhibition-main.exhibition">대학교 전시회</a>
                      <li><a href="/gradation/exhibition/university-exhibition-form.exhibition"">학교 신청</a>
                      </li>
                   </ul>
                </li>
                
                <!-- upcycling -->
                <li><a href="/gradation/upcycling/upcycling-main.upcycling">upcycling</a>
                   <ul class="dropdown">
                      <!-- upcycling 드롭다운 -->
                      <li><a href="/gradation/upcycling/upcycling-main.upcycling">업사이클</a></li>
                      <li><a href="/gradation/upcycling/upcycling-form.upcycling">업사이클 신청</a></li>
                   </ul>
                </li>
            </ul>
            <div class="login-section">
			    <img class="header-bell" src="../assets/images/layout/header/header-bell.png" alt="header-bell">
			
			    <!-- sign in 드롭다운 -->
			    <div class="sign-in-wrap">
			        <a href="/gradation/login/login-main.user" class="sign-in">sign in</a>
			        <ul class="dropdown">
			            <li><a href="/gradation/mypage/mypage-main.mypage">마이페이지</a></li>
			            <li><a href="/gradation/mypage/mypage-service-center-send-qna.mypage">고객센터</a></li>
			        </ul>
			    </div>
			</div>
        </nav>
    </header>
</body>
<script type="text/javascript" src="../assets/js/layout/header.js"></script>
</html>


