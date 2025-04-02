<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../assets/css/font/font.css" />
<link rel="stylesheet" type="text/css" href="../assets/css/mypage/mypage-admin-faq-list.css" />
<title>고객센터 / 자주 묻는 질문</title>
</head>
<body>
	<%@ include file="../layout/header.jsp" %>
	
	<div id="container-wrap">
		<div id="container">
			<!-- 카테고리 include 할 위치잡음 -->
			<div id="category">
				<%@ include file="mypage-info-layout.jsp" %>
			</div>
			<div id="content-wrap">
				<h2 id="title">고객센터 / 자주 묻는 질문</h2>
				<div id="menu">
					<h5 id="menu-number">번호</h5>
					<h5 id="menu-kind">구분</h5>
					<h5 id="menu-title">제목</h5>
				</div>
				<!-- 자주 묻는 질문  -->
				<div id="items">
					<!-- 리스트 들어올 위치 -->
				</div>
				
				
				<form action="mypage-admin-faq-register.mypage" method="post">
					<button id="add-faq">등록</button>
				</form>
			</div>
		</div>
	</div>
	
	<%@ include file="../layout/footer.jsp" %>
</body>
<script type="text/javascript">
	const items = document.getElementById("items");
	const faqs = ${faqs}
	/* data-id id가 변수처럼 사용되어 정보를 저장할 수 있다. */
	/* \ \없이쓸시 EL문법으로 이해하기위해서 JS에서 값만 보여주기위해 앞에\을 붙인다. */
	faqs.forEach((faq, index) => {
		items.innerHTML += `
			<div class="item" data-id="\${faq.id}">
				<div class="item-number-wrap">
					<h4 class="item-number">\${index + 1}</h4>
				</div>
				<div class="item-kind-wrap">
					<p class="item-kind">\${faq.faqCategory}</p>
				</div>
				<div class="item-title-wrap">
					<p class="item-title">\${faq.faqTitle}</p>
				</div>
			</div>
		`;
	});
	
	const itemList = document.querySelectorAll(".item")

	itemList.forEach((item) => {
	    item.addEventListener('click', () => {
			const id = item.dataset.id;
			location.href = 'mypage-admin-faq-content.mypage?id=' + id;		
		});
	});

</script>
</html>


