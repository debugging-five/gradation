<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../assets/css/display/display-detail.css" />
<title>전시 상세</title>
</head>
<body>
<div id="wrapper">
    <!-- 상단 타이틀 -->
    <div class="display-text">display</div>
    
    <div id="content">
        <!-- 작품 이미지 -->
        <div class="image-box"></div>
        
        <!-- 작품 정보 -->
        <div class="info-box">
            <span class="title">절망에 빠진 동상</span>
            <h3 class="artist">작가명 ㅣ 박세현</h3>
            <p class="likes">좋아요 999+개</p>
            <p class="date"><strong>제작연도</strong> 2025</p>
            <p class="ingredient"><strong>재료</strong> 돌+철</p>
            <p class="size"><strong>규격</strong> 200 X 50 X 50</p>
            <p class="category"><strong>부문</strong> 조각</p>
            <button class="like-button">좋아요</button>
            <button class="contact-button">작가와 연락</button>
        </div>
    </div>
    
    <!-- 작품 설명 -->
    <div class="description-box">
        <p>이 작품은 현대사회에서...</p>
    </div>
    
    <!-- 댓글 섹션 -->
    <div class="comments-section">
        <h3>comments</h3>
        <textarea placeholder="댓글을 작성하세요."></textarea>
        <button class="submit-button">등록</button>
        
        <div class="comment">
            <p><strong>user4</strong> 20분 전</p>
            <p>작품 잘 봤어요 😊</p>
        </div>
        <div class="comment">
            <p><strong>user3</strong> 2시간 전</p>
            <p>색감이 너무 좋아요 👍</p>
        </div>
    </div>
</div>
</body>
</html>