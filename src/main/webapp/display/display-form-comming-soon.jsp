<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../assets/css/display/display-form.css" />
<link rel="stylesheet" type="text/css" href="../assets/css/display/display-form-comming-soon-click.css" />
<link rel="stylesheet" type="text/css" href="../assets/css/font/font.css" />
<title>작품 업로드 커밍순</title>
<%@ include file="../layout/header.jsp" %>
</head>
<body>
<div id="wrapper">
	<!-- display -->
	<div class="display-text">
		<span>display</span>
	</div>
	
	<!-- registration -->
    <div class="registration-text">
    	<span>registration</span>
    </div>

		<div id="upload">
			<!-- 첨부파일 업로드 -->
			<div class="attachment-box" onclick="document.getElementById('file-input').click();">
			    <img class="add-image" alt="add-icon" src="../assets/images/display/add.png">
			    <span class="add-text">첨부파일 업로드</span>
			    <!-- 숨겨진 파일 업로드 input -->
			    <input type="file" id="file-input" accept="image/*" style="display: none;" onchange="previewImage(event)">
				<div class="image-error"><p>필수 항목입니다.</p></div>	
			</div>
	
		
			<!-- 작가 및 작품 정보 -->
			<div id="content">
				<form>
					<div class="input-author">
				        <label>작가명<span class="essential">*</span></label>
				        <input type="text" id="author" placeholder="작가명을 입력하세요."
				        		style="margin-left: 49px" class="input-box">		
				        <div class="author-error error-message"><p>필수 항목입니다.</p></div>	
					</div>
					
					<div class="input-title">
				        <label>작품명<span class="essential">*</span></label>
				        <input type="text" id="title" placeholder="작품명을 입력하세요."
				        		style="margin-left: 49px" class="input-box">
				        <div class="title-error error-message"><p>필수 항목입니다.</p></div>				
					</div>
					
					<div id="category" class="input-category">
					    <label>작품 분류<span class="essential">*</span></label>
					    <div id="category-text" style="cursor: pointer;">
					        작품 분류를 선택하세요
					        <img class="down-image" alt="down-icon" src="../assets/images/display/down.png">	
					    </div> 
					    <select id="category-select" class="select-box" style="display: none;">
					    	<option value="" disabled selected>분류</option>
					        <option value="회화">회화</option>
					        <option value="조각">조각</option>
					        <option value="한국화">한국화</option>
					        <option value="공예">공예</option>
					        <option value="건축">건축</option>
					        <option value="서예">서예</option>
					    </select>
					</div>
					<div class="category-line"></div>
					
					<div class="input-material">
				        <label>작품 재료<span class="essential">*</span></label>
				        <input type="text" id="material" placeholder="작품 재료를 입력하세요."
				        		style="margin-left: 30px" class="input-box">	
				    	<div class="material-error"><p>필수 항목입니다.</p></div>			
					</div>
					
					<div class="input-size">
				        <label>작품 규격<span class="essential">*</span></label>
				        <div class="size-input" style="margin-left: 27px">
						  <input type="text" id="width" placeholder="가로">
						  <span>X</span>
						  <input type="text" id="height" placeholder="세로">
						  <span>X</span>
						  <input type="text" id="depth" placeholder="높이">
						</div>
						<div class="size-error error-message"><p>필수 항목입니다.</p></div>		
					</div>
					
					<div class="input-date">
					    <label>제작 완료일<span class="essential">*</span></label>
					    <span id="calendar-text" style="cursor: pointer;" onclick="showCalendar()">
					        <img class="calendar-image" alt="calendar-icon" src="../assets/images/display/calendar.png">
					        날짜를 선택해주세요.
					    </span> 
					    <!-- 실제로 사용되는 input 필드 -->
					    <input type="date" id="completion-date" class="input-box" style="visibility: hidden; position: absolute;">
					    
					    <!-- UI로만 쓰이는 input -->
					    <input type="date" id="date-input" class="input-box" style="display: none;" onchange="updateDate()">
					</div>
					   	<div class="category-error error-message"><p>필수 항목입니다.</p></div>
						<div class="date-error error-message"><p>필수 항목입니다.</p></div>					
				</form>
			</div>
	</div>
	
	
	<!-- 작품설명 -->
	<div>
		<label class="artist-info">작품설명<span class="essential">*</span></label>
		<textarea id="description" placeholder="작품 설명을 입력하세요." class="info-typing"></textarea>
		<div class="description-error"><p>필수 항목입니다.</p></div>	
	</div>

	
	<!-- 취소, 등록 버튼 -->
	<div id="buttons">
		<a href="../display/display-main-comming-soon.jsp">
			<button class="button-cancel">취소</button> 
		</a>		
		<button class="button-upload" onclick="openPopup()">등록</button>
	</div>
	
	<!-- 빈 내용일 시 팝업 -->
	<div class="modal-bg-no" id="modalBgNo">
	    <div class="modal-no">
	        <div class="modal-title-no">
	        	<img class="attention-icon" alt="attention-icon" src="../assets/images/display/attention.png">
	        	<span>내용을 입력하세요.</span>
	        </div>
	        <div class="modal-footer-no">
	            <button class="empty" onclick="closePopup()">확인</button>
	        </div>
	    </div>
	</div>	
	
	<!-- 제출 클릭 시 팝업 -->
	<div class="modal-bg" id="modalBg">
	    <div class="modal">
	        <div class="modal-title">
	        	<img class="question-icon" alt="question-icon" src="../assets/images/display/question.png">
	        	<span>제출하시겠습니까?</span>
	        </div>
	        <div class="modal-footer">
	            <button class="cancel" onclick="closePopup()">취소</button>
	            <button class="send" onclick="confirmSubmission()">확인</button>
	        </div>
	    </div>
	</div>
	
	
	<!-- 제출완료 팝업 -->
		<div id="popupOverlay" class="modal-overlay" style="display: none;">
		    <div class="modal-ok">
		    	<button class="close-btn2" onclick="closePopup()">
		        	<img alt="close-icon" src="../assets/images/display/close.png">
		        </button>
		        <div>
		            <img class="ok-icon" alt="ok-icon" src="../assets/images/display/ok.png">
		        </div>
		        <div class="modal-body">
		            <p class="big-text">제출 완료</p>
		            <p class="small-text1">작품은 관리자 승인을 받은 후 업로드 될 예정입니다.</p>
		            <p class="small-text2">( 승인까지 최대 2~3일이 소요될 수 있습니다. )</p>
		        </div>
		        <div class="modal-footer-ok">
		            <button id="closeModalBtn" class="close-btn-ok">확인</button>
		        </div>
		    </div>
		</div>
	
	
</div>


<div class="footer-margin"></div>
<%@ include file="../layout/footer.jsp" %>
</body>
<script type="text/javascript" src="../assets/js/display/display-form-comming-soon.js"></script>
<script type="text/javascript" src="../assets/js/display/display-form-click-comming-soon.js"></script>
</html>