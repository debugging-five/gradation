<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="assets/css/display/display-form.css" />
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
		<div class="attachment-box"></div>
	
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
			        <input type="text" placeholder="작품 분류를 선택하세요"
			        		style="margin-left: 25px" class="input-box">	
				    <select>
	                    <option>분류</option>
	                    <option>회화</option>
	                    <option>조각</option>
	                    <option>한국화</option>
	                    <option>공예</option>
	                    <option>건축</option>
	                    <option>서예</option>
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
		<button class="button">취소</button> 
		<button class="button">등록</button>
	</div>
	
        
</div>
</body>
</html>