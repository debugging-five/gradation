<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../assets/css/exhibition/university-exhibition-form.css" />
<link rel="stylesheet" type="text/css" href="../assets/css/font/font.css" />
<title>대학교 전시회 신청 양식</title>
<!-- flatpickr CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css" />
<!-- flatpickr JS -->
<script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>
</head>
<body>
<%@ include file="../layout/header.jsp" %>
	<div id="wrapper">
		<div id="title-wrapper">
			<h2>exhibition</h2>	
		</div>
		
		<div>
			<div id="form-title">
				<h3>registration</h3>
			</div>
			
			<div id="input-form">
				<!-- 대학명 -->
				<div id="input-button-wrapper">
					<div class="input-text">
						<h5>대학명<span class="star">*</span></h5>
						<input type="text" placeholder="학교를 선택하세요." />
					</div>
					<button type="button" id="search-university">학교 검색</button>
				</div>
				
				<!-- 학과명 -->
				<div class="input-wrapper">
					<div class="input-text">
						<h5>학과명<span class="star">*</span></h5>
						<input type="text" placeholder="학과명을 입력하세요." />
					</div>
				</div>
				
				<!-- 상세 주소 -->
				<div class="input-wrapper">
					<div class="input-text2">
						<h5>상세 주소<span class="star">*</span></h5>
						<input type="text" placeholder="상세 주소를 입력하세요." />
					</div>
				</div>
				
				<!-- 홈페이지 -->
				<div class="input-wrapper">
					<div class="input-text3">
						<h5>홈페이지<span class="star">*</span></h5>
						<input type="text" placeholder="홈페이지 주소를 입력하세요." />
					</div>
				</div>
				
				<!-- 전시회 일정 -->
				<div class="input-wrapper2">
					<div class="input-text4">
						<h5>전시회 일정<span class="star">*</span></h5>
					</div>
					<div class="calendar-wrapper">
						<div class="calendar-input-group">
							<img class="calendar-icon"
								src="../assets/images/upcycling/upcycling-form/calendar.png"
								alt="calendar" />
							<input type="text" id="pickupDateInput"
								class="calendar-display-input" placeholder="시작일 선택 ~ " readonly />
						</div>
					</div>
					<div class="calendar-wrapper">
						<div class="calendar-input-group">
							<img class="calendar-icon"
								src="../assets/images/upcycling/upcycling-form/calendar.png"
								alt="calendar" />
							<input type="text" id="pickupDateInput2"
								class="calendar-display-input" placeholder="종료일 선택" readonly />
						</div>
					</div>
					</div>
				</div>
				

				<div id="button-wrapper1">
				    <div class="file-container"> 
				        <div id="file-wrapper">
				            <h5>첨부파일</h5>
				            <img id="icon" src="../assets/images/exhibition/notice.png" alt="아이콘" />
				        </div>
				        <div id="icon-hover">
				            <p>사이트에 올라갈 전시회 이미지를 첨부해주세요.</p>
				        </div>
				    </div>
				    <input type="file" id="file-input"/>
				    <button id="file-button">첨부파일</button>
				</div>
				
				<div id="button-wrapper2">
					<button id="cancel-button">취소</button>
					<button id="register-button">신청</button>
				</div>
			</div>
			
		</div>
	</div>
<%@ include file="../layout/footer.jsp" %>
<script>
  flatpickr("#pickupDateInput", {
    onChange: function(selectedDates, dateStr) {
      document.getElementById("pickupDateInput").value = dateStr;
    },
    disableMobile: true
  });

  document.querySelector(".calendar-icon").addEventListener("click", () => {
    document.getElementById("pickupDateInput").focus();
  });
  
  flatpickr("#pickupDateInput2", {
    onChange: function(selectedDates, dateStr) {
      document.getElementById("pickupDateInput2").value = dateStr;
    },
    disableMobile: true
  });

  document.querySelector(".calendar-icon").addEventListener("click", () => {
    document.getElementById("pickupDateInput2").focus();
  });
</script>
</body>
<script type="text/javascript" src="../assets/js/exhibition/university-exhibition-form.js"></script>
</html>