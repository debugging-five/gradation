<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../assets/css/exhibition/university-exhibition-form-popup.css" />
<link rel="stylesheet" type="text/css" href="../assets/css/font/font.css" />
<title>제출 완료 팝업</title>
</head>
<body>
	<div id="wrapper">
		<div id="popup">
	      <!-- 팝업 상단바 x 아이콘 -->
	      <div class="bar" onclick="closePopup()">
	      	<img src="../assets/images/auction/close.png" alt="x" />
	      </div>
	      
	      <div id="popup-content">
	      
	      	<div id="icon-wrapper">
	      		<img src="../assets/images/exhibition/check.png" alt="체크" />
	      	</div>
	      	
	      	
	      	<div id="completed">
	      		<h2>제출 완료</h2>
	      	</div>
	      	
	      	<div id="info">
		      	<div id="info1">
		      		<h6>작품은 관리자 승인을 받은 후 업로드 될 예정입니다.</h6>
		      	</div>
		      	<div id="info2">		      	
		      		<p>( 승인까지 최대 2~3일이 소요될 수 있습니다. )</p>
		      	</div>
	      	</div>
	      	
	      	<div id="popup-button-wrapper">
	      		<button id="popup-ok-button">확인</button>
	      	</div>
	      	
	      	
	      </div>
		</div>
	</div>

</body>
<script type="text/javascript" src="../assets/js/exhibition/university-exhibition-form-popup.js"></script>
</html>