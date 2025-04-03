<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../assets/css/font/font.css" />
<link rel="stylesheet" type="text/css" href="../assets/css/mypage/mypage-admin-faq-register.css" />
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
            
            
            	<form 
               	action="${pageContext.request.contextPath}/mypage/mypage-admin-faq-register-ok.mypage" 
               	method="post"
               	id="faq-register-form"
            	>
					<div id="kind-wrap">
						<div class="name">
							<h5>구분<span class="star">*</span></h5>
						</div>
						<div id="kind">
							<input type="radio" id="art" name="faqCategory" value="작품전시">
							<label for="art" class="radio-label">작품 전시</label>
	                     
	                     	<input type="radio" id="exhibition" name="faqCategory" value="전시회">
	 	                    <label for="exhibition" class="radio-label">전시회</label>
	                     
	                     	<input type="radio" id="auction" name="faqCategory" value="경매">
	                     	<label for="auction" class="radio-label">경매</label>
	                     
	                     	<input type="radio" id="mypage" name="faqCategory" value="마이페이지">
	                     	<label for="mypage" class="radio-label">마이페이지</label>
	                     
	                     	<input type="radio" id="another" name="faqCategory" value="기타">
	                     	<label for="another" class="radio-label">기타</label>
						</div>
					</div>
					<div id="title-wrap">
						<div class="name">
							<h5>제목<span class="star">*</span></h5>
						</div>
						<input id="input-text" type="text" name="faqTitle" placeholder="제목을 입력하세요." />
					</div>
					<div>
						<div class="name">
							<h5>내용<span class="star">*</span></h5>
						</div>
						<textarea id="register-content" name="faqContent" placeholder="내용을 입력하세요."></textarea>
					</div>
					<button id="new-register" type="button">등록</button>
				</form>
			</div>
		</div>
	</div>
   
   
      
   <%@ include file="../layout/footer.jsp" %>
</body>
<script type="text/javascript" src="../assets/js/mypage/mypage-admin-faq-register.js"></script>

</html>


