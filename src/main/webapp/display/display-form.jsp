<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../assets/css/display/display-form.css" />
<title>작품 업로드</title>
</head>
<body>
<div id="wrapper">
	<!-- display -->
	<div class="display-text">display</div>
	
	<!-- registration -->
    <div class="registration-text">registration</div>

	<div id="upload">
		<!-- 첨부파일 업로드 -->
		<div class="attachment-box">
			<img class="add-image" alt="add-icon" src="../assets/images/display/add.png">
			<span class="add-text">첨부파일 업로드</span>
		</div>
	
		<!-- 작가 및 작품 정보 -->
		<div id="content">
			<form>
				<div class="input-text">
			        <label>작가명<span class="essential">*</span></label>
			        <input type="text" placeholder="작가명을 입력하세요."
			        		style="margin-left: 49px" class="input-box">			
				</div>
				<div class="input-text">
			        <label>작품명<span class="essential">*</span></label>
			        <input type="text" placeholder="작품명을 입력하세요."
			        		style="margin-left: 49px" class="input-box">			
				</div>
				<div class="input-text">
				    <label>작품 분류<span class="essential">*</span></label>
					    <span id="category-text">
						    작품 분류를 선택하세요
						    <img class="down-image" alt="down-icon" src="../assets/images/display/down.png">
						</span> 
				    <select id="category-select" class="select-box">
				        <option value="">분류</option>
				        <option value="회화">회화</option>
				        <option value="조각">조각</option>
				        <option value="한국화">한국화</option>
				        <option value="공예">공예</option>
				        <option value="건축">건축</option>
				        <option value="서예">서예</option>
				    </select>
				</div>
				<div class="input-text">
			        <label>작품 재료<span class="essential">*</span></label>
			        <input type="text" placeholder="작품 재료를 입력하세요."
			        		style="margin-left: 25px" class="input-box">			
				</div>
				<div class="input-text">
			        <label>작품 규격<span class="essential">*</span></label>
			        <input type="text" placeholder="가로 X 세로 X 높이"
			        		style="margin-left: 25px" class="input-box">			
				</div>
				<div class="input-text">
			        <label>제작 완료일<span class="essential">*</span></label>
					    <span id="calender-text">
						    <img class="calendar-image" alt="calendar-icon" src="../assets/images/display/calendar.png">
						    날짜를 선택해주세요.
						</span> 		
				</div>
			</form>
		</div>
	</div>
	
	<!-- 작품설명 -->
	<div>
		<label class="artist-info">작품설명<span class="essential">*</span></label>
		<textarea placeholder="작품 설명을 입력하세요." class="info-typing"></textarea>	
	</div>

	
	<!-- 취소, 등록 버튼 -->
	<div id="buttons">
		<button class="button-cancel">취소</button> 
		<button class="button-upload">등록</button>
	</div>
	
	
</div>
</body>
<script>
	document.getElementById('category-select').addEventListener('change', function() {
	    var selectedValue = this.value;
	    var categoryText = document.getElementById('category-text');
	    if (selectedValue) {
	        categoryText.textContent = selectedValue; // 선택된 값으로 텍스트 변경
	    } else {
	        categoryText.textContent = "작품 분류를 선택하세요"; // 기본 텍스트로 돌아가게 설정
	    }
	});
</script>
</html>