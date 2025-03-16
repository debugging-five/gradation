<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
            <div class="login-wrap">
                <img src="<%= request.getContextPath() %>/assets/images/layout/header/search-icon.png" alt="Search" class="icon">
                <a href="#" class="sign-in">sign in</a>
            </div>
        </nav>
    </header>
</body>
</html>