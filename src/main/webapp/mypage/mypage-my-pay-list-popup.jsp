<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../assets/css/font/font.css" />
<link rel="stylesheet" type="text/css" href="../assets/css/mypage/mypage-my-pay-list-popup.css" />
<title>주문 상세 팝업</title>
</head>
<body>


<!-- 버튼 -->
<button class="openModalBtn open-btn">주문 상세</button>

<!-- 모달 -->
<div class="orderDetailModal modal-overlay" style="display: none;">
    <div class="modal">
		<button class="close-btn closeModalBtn">
		    <img class="close-icon" alt="close-icon" src="../assets/images/mypage/close.png">
		</button>
		<hr class="divider"> <!-- 닫기 버튼 아래 구분선 -->
        <div class="modal-content">
            <h3>받는 사람</h3>
            <div class="info-group">
            	<div class="user-info1">
	                <span>받는 사람</span>
	                <span>홍길동</span>
            	</div>
            	<div class="user-info2">
	                <span>연락처</span>
	                <span>010-1234-1423</span>
            	</div>
            	<div class="user-info3">
	                <span>받는 주소</span>
	                <span>(08718) 서울특별시 관악구 역삼로 119-112 스카이캐슬 1004호</span>
            	</div>
            	<div class="user-info4">
	                <span>배송 요청사항</span>
	                <span>문 앞 (종 + 1234)</span>
            	</div>
            </div>

            <h3>결제 정보</h3>
            <div class="info-group">
                <div class="price-info">
	                <div class="price-info1">
		                <span>총 상품가격</span>
		                <span>1,234,567 원</span>
	            	</div>
	                <div class="price-info1 line">
		                <span>배송비</span>
		                <span>0 원</span>
	            	</div>
	                <div class="price-info1">
		                <span>총 결제금액</span>
		                <span class="total">1,234,567 원</span>
	            	</div>
                </div>
            </div>
        </div>
    </div>
</div>



</body>
<script>
document.addEventListener("DOMContentLoaded", function() {
    document.querySelectorAll(".openModalBtn").forEach(button => {
        button.addEventListener("click", function() {
            let modal = document.querySelector(".orderDetailModal"); // 전체 문서에서 모달 찾기
            if (modal) {
                modal.style.display = "flex";
            } else {
                console.error("orderDetailModal을 찾을 수 없음!");
            }
        });
    });

    document.querySelectorAll(".closeModalBtn").forEach(closeBtn => {
        closeBtn.addEventListener("click", function() {
            let modal = document.querySelector(".orderDetailModal"); // 전체 문서에서 모달 찾기
            if (modal) {
                modal.style.display = "none";
            }
        });
    });

    // ESC 키로 닫기
    window.addEventListener("keydown", function(e) {
        if (e.key === "Escape") {
            document.querySelectorAll(".orderDetailModal").forEach(modal => {
                modal.style.display = "none";
            });
        }
    });
});

</script>
</html>