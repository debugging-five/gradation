<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../assets/css/auction/auction-payment-main.css" />
<link rel="stylesheet" type="text/css" href="../assets/css/font/font.css" />
<script type="text/javascript" src="/js/jquery-1.11.3.min.js"></script>
<script src="/javascript/popup_2.js"></script>
<title>경매 결제</title>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
	function execDaumPostcode() {
		new daum.Postcode({
			oncomplete : function(data) {
				var fullAddress = data.address;
				var extraAddress = '';

				if (data.addressType === 'R') {
					if (data.bname !== '') {
						extraAddress += data.bname;
					}
					if (data.buildingName !== '') {
						extraAddress += (extraAddress !== '' ? ', '
								+ data.buildingName : data.buildingName);
					}
					fullAddress += (extraAddress !== '' ? ' (' + extraAddress
							+ ')' : '');
				}

				document.getElementById("address").value = fullAddress;
			}
		}).open();
	}
</script>
</head>
<body>

<%@ include file="../layout/header.jsp" %>

	<div id="wrapper">
		<div id="title-wrapper">	
			<h2>auction</h2>	
		</div>
		<div id="payment-form">
			<div id="img-wrapper">
				<img id="auction-img" src="../assets/images/display/art/sculpture/img-sculpture-cat-2.jpeg" alt="경매 작품" />
			</div>
			
			<div id="write-form">
				<div id="success">
					<h3>낙찰을 축하드립니다!</h3>
				</div>
				<!-- 낙찰 금액 -->
				<div id="success-price">
					<div id="price">
						<h5>낙찰 금액<span>|</span></h5>
						<h5>999,999,999 KRW</h5>
					</div>
				</div>
				
			<div id="input-form">
				<!-- 이름 -->
				<div class="input-wrapper">
					<div class="input-text">
						<h5>이름<span class="star">*</span></h5>
						<input id="name" type="text" placeholder="이름을 입력하세요." />
					</div>
					<p id="name-error">*필수 항목입니다</p>
				</div>
				
				<!-- 주소 -->
				<div id="input-button-wrapper">
					<div class="input-text">
						<h5>주소<span class="star">*</span></h5>
						<input id="address" type="text" placeholder="주소를 검색하세요." id="address" name="address" required/>
					</div>
					<button type="button" id="search-address" onclick="execDaumPostcode()">주소 검색</button>
				</div>
				
				<!-- 상세 주소 -->
				<div class="input-wrapper">
					<div class="input-text2">
						<h5>상세 주소<span class="star">*</span></h5>
						<input id="detail-address" type="text" placeholder="상세 주소를 입력하세요." />
					</div>
					<p id="detail-address-error">*필수 항목입니다</p>
				</div>
				
				<!-- 전화번호 -->
				<div class="input-wrapper">
					<div class="input-text3">
						<h5>전화번호<span class="star">*</span></h5>
						<input id="phone" type="text" placeholder="전화번호를 입력하세요." />
					</div>
					<p id="phone-error">*필수 항목입니다</p>
				</div>
				
				<!-- 이메일 -->
				<div class="input-wrapper">
					<div class="input-text4">
						<h5>이메일<span class="star">*</span></h5>
						<input id="email" type="text" placeholder="이메일을 입력하세요." />
					</div>
					<p id="email-error">*필수 항목입니다</p>
				</div>
			</div>
				
				<input class="check-label" type="checkbox" id="check-user"/>
			  		<label class="checkbox-label" for="check-user">
			  			<span class="check-label-span">주문자 본인이 맞습니까?</span>
			  		</label>
				<input class="check-label" type="checkbox" id="check-payment"/>
			  		<label class="checkbox-label" for="check-payment">
			  			<span class="check-label-span">결제에 동의하십니까?</span>
			  		</label>
			</div>
	
		</div>
				<button id="payment-button">결제하기</button>
				
	   <div id="auction-list">
	      <div id="auction-ing">
	         <div id="auction-ing-title">경매중인 작품</div>
	      </div>
	      <div id="art-wrapper">
	         <div class="art-list">
	            <img src="../assets/images/display/art/sculpture/img-sculpture-cat.jpeg" alt="리스트1"/>
	         </div>
	         <div class="art-list">
	            <img src="../assets/images/display/art/sculpture/img-sculpture-cat-3.jpeg" alt="리스트2"/>
	         </div>
	         <div class="art-list">
	            <img src="../assets/images/display/art/sculpture/img-sculpture-furuit.jpeg" alt="리스트3"/>
	         </div>
	         <div class="art-list">
	            <img src="../assets/images/display/art/sculpture/img-sculpture-wow.jpeg" alt="리스트4"/>
	         </div>
	      </div>
	   </div>
	</div>

<%@ include file="../layout/footer.jsp" %>
<script>
	document.getElementById("upload-container").addEventListener("click",
			function() {
				document.getElementById("file-input").click();
			});

	document.getElementById("file-input").addEventListener("change",
			function(event) {
				previewImage(event);
			});

	function previewImage(event) {
		const file = event.target.files[0];
		if (file) {
			const reader = new FileReader();
			reader.onload = function(e) {
				const preview = document.getElementById("preview-image");
				const uploadText = document.getElementById("upload-text");

				preview.src = e.target.result;
				preview.style.display = "block";
				uploadText.style.display = "none";
			};
			reader.readAsDataURL(file);
		}
	}
</script>
<script>
	document.addEventListener("DOMContentLoaded", function() {
		const calendarIcon = document.querySelector(".calendar");
		const textCalendar = document.querySelector(".text-calendar");

		const calendarInput = document.createElement("input");
		calendarInput.type = "date";
		calendarInput.style.position = "absolute";
		calendarInput.style.border = "none";
		calendarInput.style.background = "transparent";
		calendarInput.style.opacity = "0";
		calendarInput.style.pointerEvents = "none";
		calendarInput.style.zIndex = "-1";

		document.body.appendChild(calendarInput);
		calendarIcon.addEventListener("click", function() {
			const rect = calendarIcon.getBoundingClientRect();
			calendarInput.style.top = `${rect.bottom + window.scrollY}px`;
			calendarInput.style.left = `${rect.left + window.scrollX}px`;

			calendarInput.showPicker();
		});

		calendarInput.addEventListener("change", function() {
			if (calendarInput.value) {
				textCalendar.textContent = calendarInput.value;
			}
		});
	});
</script>
</body>
<script type="text/javascript" src="../assets/js/auction/auction-payment-main.js"></script>
</html>