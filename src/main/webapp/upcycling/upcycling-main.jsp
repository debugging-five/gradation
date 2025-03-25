<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../assets/css/upcycling/upcycling-main.css" />
<link rel="stylesheet" type="text/css" href="../assets/css/font/font.css" />
<title>업사이클 메인</title>
<%@ include file="../layout/header.jsp" %>
</head>
<body>
<div id="wrapper">
	<!-- 상단 타이틀 -->
    <div class="upcycle-text">upcycling</div>
    
    <!-- 배너 -->
    <div>
    	<div class="banner">
	    	<img alt="banner" src="../assets/images/upcycling/upcycling-main/banner.png" >
    	</div>
		    <h1 class="title-1">"창작의 흔적이 환경과 미래를 망치는 폐기물이 되지 않도록."</h1>
		    <h1 class="title-2">"이제는 변화를 만들어야 할 때 입니다."</h1>
    </div>
	    
    
    <!-- 스크롤 -->
    <div class= "chepter-1">
		<h1 class= "chepter-1-text">"아름다움 뒤에 숨겨진 환경 문제"</h1>	
		<img alt="banner" src="../assets/images/upcycling/upcycling-main/chepter-1.png">
    </div>

    <div class= "chepter-2">
		<img alt="banner" src="../assets/images/upcycling/upcycling-main/chepter-2.png">
    </div>
    
	<h1 class= "chepter-3-title">“폐기물이 새 생명을 얻는 순환의 과정”</h1>	
    <div class= "chepter-3">
		<img alt="banner" src="../assets/images/upcycling/upcycling-main/chepter-3-1.png">
		<p class="chepter-3-content">재생 캔버스, 친환경 에코백</p>
		<img alt="banner" src="../assets/images/upcycling/upcycling-main/chepter-3-2.png">
		<p class="chepter-3-content">재생 크레용</p>
		<img alt="banner" src="../assets/images/upcycling/upcycling-main/chepter-3-3.png">
		<p class="chepter-3-content">목재 프레임</p>
    </div>
    
	<div class="timeline">
	    <div class="step">
	        <div class="circle-container">
	            <span class="number">01</span>
	            <div class="circle blue"></div>
	        </div>
	        <div class="c1 content">
	            <h2 class="timeline-text">신청 - 손쉽게 기부하고 참여하세요!</h2>
	            <h3 class="timeline-text">품목: 캔버스, 남은 액자, 유화 도구, 기타 미술 재료 등</h3>
	            <h3 class="timeline-text">신청 방법: 웹사이트에서 간단한 신청서 작성 후 제출</h3>
	        </div>
	    </div>
	
	    <div class="step">
	        <div class="circle-container">
	            <span class="number">02</span>
	            <div class="circle gray"></div>
	        </div>
	        <div class="c2 content">
	            <h2 class="timeline-text">방문 수거 - 직접 찾아갑니다!</h2>
	            <h3 class="timeline-text">신청 완료 후, 정해진 일정 맞춰 폐기된 미술품을 신청자분이 계신 곳에 방문하여 수거합니다.</h3>
	            <h3 class="timeline-text">친환경 운송 시스템 도입 : 탄소 배출을 최소화한 수거 방식</h3>
	        </div>
	    </div>
	
	    <div class="step">
	        <div class="circle-container">
	            <span class="number">03</span>
	            <div class="circle red"></div>
	        </div>
	        <div class="c3 content">
	            <h2 class="timeline-text">폐기물 분류 - 사용 가능한 재료 선별</h2>
	            <h3 class="timeline-text">재사용 가능: 찢어진 캔버스 천, 액자 프레임, 일부 사용 된 채색 도구, 팔레트</h3>
	            <h3 class="timeline-text">재활용 필요 : 손상된 종이, 페인트, 유화용 나무 팔레트</h3>
	            <h3 class="timeline-text">폐기 대상 : 납, 카드뮴이 포함된 물감, 스프레이 페인트, 희석제(테레빈유, 시너), 접착제, 곰팡이 핀 종이나 캔버스</h3>
	        </div>
	    </div>
	
	    <div class="step">
	        <div class="circle-container">
	            <span class="number">04</span>
	            <div class="circle white"></div>
	        </div>
	        <div class="c4 content">
	            <h2 class="timeline-text">가공 및 생산 - 새로운 제품 제작을 위한 변신</h2>
	            <h3 class="timeline-text">캔버스 리폼 : 폐기된 캔버스를 세척, 보강하여 새로운 캔버스로 제작</h3>
	            <h3 class="timeline-text">목제 프레임 재활용 : 낡은 액자를 컷팅, 샌딩 과정을 거져 재사용 가능하게 가공</h3>
	            <h3 class="timeline-text">색연필, 크레파스 재조합 : 사용된 재료를 녹여 새로운 제품으로 가공</h3>
	            <h3 class="timeline-text">친환경 에코백 : 일부 오염된 캔버스를 제단하여 세척 후, 도색  및 재단하여 가방으로 제작</h3>
	            <h3 class="timeline-text">재생 노트 : 버려진 종이를 모아 만든 친환경 노트</h3>
	        </div>
	    </div>
	    <div class="step">
	        <div class="circle-container">
	            <span class="number">05</span>
	            <div class="circle yellow"></div>
	        </div>
	        <div class="c5 content">
	            <h2 class="timeline-text">판매와 기부 - 예술의 순환</h2>
	            <h3 class="timeline-text">판매 : 온라인 스토어 및 전시회를 통해 업사이클링 제품 판매</h3>
	            <h3 class="timeline-text">기부 : 미술 교육이 필요한 대학 및 학생들에게 무료 제공</h3>
	            <h3 class="timeline-text">순환 시스템 : 수익금의 일부는 다시 미술 재료 기부에 사용</h3>
	        </div>
	    </div>
	</div>
		
	<div class="end">
    	<h1 class="end-text-1">“예술을 사랑하고 모두가 함께 만드는 변화”</h1>
	    <h2 class="end-text-2">환경을 지키고, 미래의 창작자를 응원하는 움직임에 동참해주세요.</h2>
	</div>
    
	<div class="buttons">
	 	<a href="../mypage/mypage-admin-faq-list.mypage">
	    	<button class="qna-button">문의하기</button>
	    </a>
	    <a href="../upcycling/upcycling-form.upcycling"> 
		    <button class="upcycling-form-button">업사이클 신청</button>
	    </a>
	</div>
    

</div>

<%@ include file="../layout/footer.jsp" %>
</body>
</html>