<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/assets/css/layout/header.css" />
<title>헤더</title>
</head>
<body>
    <header>
        <nav>
        	<!-- 로고 이미지 -->
            <div class="logo">
                <img src="../assets/images/layout/header/mainLogo.jpg" alt="Main Logo">
            </div>
            
            <ul class="menu">
            
             	<!-- display -->
                <li id="category1"><a href="#">display</a>
                	<ul class="dropdown">
                		<!-- display 드롭다운 -->
                		<li><a href="#">전시 중인 작품</a></li>
                		<li><a href="#">전시 예정인 작품</a></li>
                		<li><a href="#">작품 업로드</a></li>
                	</ul>
                </li>
                
                <!-- artist -->
                <li id="category2"><a href="#">artist</a></li>
                
                <!-- auction -->
                <li id="category3"><a href="#">auction</a>
                	<ul class="dropdown">
                		<!-- auction 드롭다운 -->
                		<li><a href="#">경매중</a></li>
                		<li><a href="#">경매 예정</a></li>
                		<li><a href="#">경매 완료</a></li>
                	</ul>
                </li>
                
                <!-- exhibition -->
                <li id="category4"><a href="#">exhibition</a>
                	<ul class="dropdown">
                		<!-- exhibition 드롭다운 -->
                		<li><a href="#">그라데이션 전시회</a></li>
                		<li><a href="#">대학교 전시회</a>
                			<ul class="sub-dropdown">
                				<li><a href="#">전시 일정</a>
                				<li><a href="#">학교 신청</a>
                			</ul>
                		</li>
                	</ul>
                </li>
                
                <!-- upcycling -->
                <li id="category5"><a href="#">upcycling</a>
                	<ul class="dropdown">
                		<!-- upcycling 드롭다운 -->
                		<li><a href="#">업사이클</a></li>
                		<li><a href="#">업사이클 신청</a></li>
                	</ul>
                </li>
            </ul>
            <div class="login-section">
               <img class="headerSearch"  src="../assets/images/layout/header/headerSearch.png" alt="search">
               <a href="#" class="sign-in">sign in</a>
			</div>
        </nav>
    </header>
</body>
</html>


















