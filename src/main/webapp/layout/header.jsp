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
            <div class="logo">
                <img src="../assets/images/layout/header/mainLogo.jpg" alt="Main Logo">
            </div>
            <ul class="menu">
                <li><a href="#">display</a></li>
                <li><a href="#">artist</a></li>
                <li><a href="#">auction</a></li>
                <li><a href="#">exhibition</a></li>
                <li><a href="#">upcycling</a></li>
            </ul>
            <div class="login-section">
               <img class="headerSearch"  src="../assets/images/layout/header/headerSearch.png" alt="search">
               <a href="#" class="sign-in">sign in</a>
			</div>
        </nav>
    </header>
</body>
</html>