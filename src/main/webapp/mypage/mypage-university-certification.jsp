<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../assets/css/font/font.css" />
<link rel="stylesheet" type="text/css" href="../assets/css/mypage/mypage-university-certification.css" />
<title>학교인증</title>
</head>
<body>
<%@ include file="../layout/header.jsp" %>
	
	<div id="container-wrap">
		<div id="container">
			
			<div id="category">
				<%@ include file="mypage-info-layout.jsp" %>
			</div>
			<div id="content-wrap">
				<div id="title">
					<h2>대학교 인증</h2>
					<span>작품을 게시하려면 학교를 입력하세요</span>
				</div>
				<form action="mypage-university-certification-ok.mypage" method="post" enctype="multipart/form-data">
					<div id="my-infomation-container">
						<div class="input-div">
							<h5>학교</h5>	<input type="text" class="user-info-title2" placeholder="학교를 입력하세요"/>	
						</div>
						<div class="input-div">
							<h5>학과</h5><input type="text" class="user-info-title2" placeholder="학과를 입력하세요"/>
						</div>
						<div class="filebox">
							<h5>첨부파일</h5>
	    					<label for="file"><span>파일첨부</span></label> 
	    					<input type="file" id="file" name="userMajorImgName">
							<input class="upload-name" value="" placeholder="현재 재학중인 대학교의 학생증 사진을 첨부해주세요." readonly>
						</div>
					</div>
					<div class="button-wrapper">
						<button id="certification-button" type="button">인증</button>
					</div>
				</form>
				
				
			</div>
		</div>
	</div>
	
	<%@ include file="../layout/footer.jsp" %>
	
</body>
<script type="text/javascript" src="../assets/js/mypage/mypage-university-certification.js"></script>
</html>