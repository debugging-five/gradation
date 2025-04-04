<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../assets/css/font/font.css" />
<link rel="stylesheet" type="text/css" href="../assets/css/mypage/mypage-service-center-qna-send.css" />
<title>1:1문의 작성하기</title>
</head>
<body>
	<%@ include file="../layout/header.jsp" %>
	
	<div id="container-wrap">
		<div id="container">
			<div id="category">
				<div class="category-div">
					<h1>고객센터</h1>
				</div>
				<div class="category-div">
					<a id="text-red" href="mypage-service-center-qna-list.mypage">1:1 문의하기</a>
				</div>
				<div class="category-div">
					<a href="mypage-service-center-faq-list.mypage">자주묻는 질문</a>
				</div>
			</div>
			<div id="content-wrap">
				<h2 id="title">고객센터 / 1 : 1 문의하기</h2>
				<form action="mypage-service-center-qna-send-ok.mypage" method="post" enctype="multipart/form-data">
					<div id="checkboxs-wrap">						
						<span class="h5-text">구분</span>
						<span class="red-star">*</span>
						<input type="hidden" name="qnaCategory" id="hidden-category">
						<div>
							<input name="category" class="check-label" type="radio" id="check-display"/>
				  			<label class="checkbox-label" for="check-display">
				  				<span class="check-label-span">작품전시</span>
				  			</label>
						</div>
						<div>
							<input name="category" class="check-label" type="radio" id="check-exhibition"/>
				  			<label class="checkbox-label" for="check-exhibition">
				  				<span class="check-label-span">전시회</span>
				  			</label>
						</div>
						<div>
							<input name="category" class="check-label" type="radio" id="check-auction"/>
				  			<label class="checkbox-label" for="check-auction">
				  				<span class="check-label-span">경매</span>
				  			</label>
						</div>
						<div>
							<input name="category" class="check-label" type="radio" id="check-mypage"/>
				  			<label class="checkbox-label" for="check-mypage">
				  				<span  class="check-label-span">마이페이지</span>
				  			</label>
						</div>
						<div>
							<input name="category" class="check-label" type="radio" id="check-others"/>
				  			<label class="checkbox-label" for="check-others">
				  				<span  class="check-label-span">기타</span>
				  			</label>
						</div>
			  		</div>

			  		<div id="title-wrap">
			  			<span class="h5-text">제목</span>
						<span class="red-star">*</span>
			  			<input type="text" name="qnaTitle" id="qna-title" placeholder="제목을 입력하세요">
			  		</div>
			  		
			  		<div id="textarea-content">
						<h5>내용<span class="red-star">*</span></h5>
						<textarea name="qnaContent" id="qna-content" placeholder="내용을 입력해 주세요"></textarea>
					</div>
					
					<div class="filebox">
						<span class="h5-text" >첨부파일</span>
					    <label for="file-input">첨부파일</label>
					    <span id="file-name"> </span>
					    <input name="qnaImgName" type="file" id="file-input">
					</div>
				
					<div class="submit-button-div">
						<button class="submit-button" id="submit-button" type="button">등록</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	
	<%@ include file="../layout/footer.jsp" %>

	
</body>
<script type="text/javascript" src="../assets/js/mypage/mypage-service-center-qna-send.js">
</script>
</html>
