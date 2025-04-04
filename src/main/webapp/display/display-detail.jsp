<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../assets/css/display/display-detail.css" />
<link rel="stylesheet" type="text/css" href="../assets/css/display/display-detail-click.css" />
<link rel="stylesheet" type="text/css" href="../assets/css/font/font.css" />
<title>전시 상세</title>
<%@ include file="../layout/header.jsp" %>
</head>
<body>
<!-- 전체를 감싸는 래퍼 -->
<div id="wrapper">

	<div><!-- display text -->
	    <h1 class="display-text">display</h1>
	</div>
    
<!-- 작품 시작 -->
<div id="content">
    <!-- 스크롤 박스 -->
    <div id="scroll">
        <!-- 작품 이미지 -->
        <div class="image-box">
        	<img class="image-file" alt="image" src="${artImg}">
        </div>
        
        <!-- 좋아요 / 작가와 연락 버튼 -->
        <div class="button-position">
        	
            <button id="likeBtn" class="like-button" onclick="location.href='display-art-like-ok.display?artId=${artId}'">좋아요♡</button>
            
            <a href="../mypage/mypage-contact-artist-write.mypage">
                <button class="contact-button">작가와 연락</button>
            </a>
        </div>
    </div>
    
    <!-- 작품 정보 -->
    <div class="info-box">
        <div class="title"><!-- 제목 -->
            <span>${artTitle}</span>
        </div>
        <div class="artist"><!-- 작가명 -->
            <h3>작가명 ㅣ </h3>
            <span>${userName}</span>
        </div>
        <div class="likes"><!-- 좋아요 -->
            <span>좋아요 ${likeCount}개</span>
            <div class="like100">
	            <img class="grayquestion-icon" alt="grayquestion-icon" src="../assets/images/display/gray_question.png">
	        	<span class="hover-text">좋아요 50개 이상 받으면 경매 개시 가능</span>
            </div>
        </div>
        <div class="date"><!-- 제작년도 -->
            <p><strong style="margin-right: 57px">제작년도</strong> ${artDate}</p>
        </div>
        <div class="ingredient"><!-- 재료 -->
            <p><strong style="margin-right: 88px">재료</strong> ${artMaterial}</p>
        </div>
        <div class="size"><!-- 규격 -->
            <p><strong style="margin-right: 88px">규격</strong> ${artSize}</p>
        </div>
        <div class="category"><!-- 부문 -->
            <p><strong style="margin-right: 88px">부문</strong> ${artCategory}</p>
        </div>
        	<div class="content-text"><!-- 작품 설명 -->
	            <p> ${artDescription} </p>
        	</div>
        </div>
    </div><!-- 작품 끝 -->
    
    
    <!-- 댓글 섹션 -->
    <div class="comments-section">
        <h3 class="comments">comments</h3>
    	<!-- 댓글 쓰기 -->
        <div class="textarea-container">
	        <textarea class="comment-typing" placeholder="댓글을 작성해주세요."></textarea>
	        <button class="submit-button" onclick="openPopup()">등록</button>
	    </div>
	    
	    <!-- 정렬 방식 -->
		<div class="dropdown-container-2">
		    <button class="dropdown-btn-2">
		    	등록순
		    	<img class="down-image" alt="down-icon" src="../assets/images/display/down.png">		   
		    </button>
		    <ul class="dropdown-menu-2">
		        <li class="first-upload">등록순</li>
		        <li class="first-like">좋아요순</li>
		    </ul>
		</div>
		
		

		<c:forEach var="comment" items="${replyList}" varStatus="status">
			<div class="user">
		        <div class="user-profile">
		        	<img class="profile-image" alt="profile-image" src="${userImg}"
		        		onerror="this.onerror=null; this.src='../assets/images/display/user.png';">
		            <p class="comment-user"><strong>${comment.userNickname}</strong></p>
		            <p>${comment.replyDate}</p>
		            
			      	<div class="dropdown-container">
					    <button class="dropdown-btn">⋮</button>
					    <ul class="dropdown-menu">
					        <li id="modify-faq" class="edit">수정</li>
					        <li id="delete-faq" class="delete">삭제</li>
					    </ul>
					</div>
		        </div>
		        
				<div class="comment-wrapper">
					<div class= "fix-comment">
					    <p id="question-content" class="comment">${comment.replyContents}</p>
					    <div id="answer-input1">
					    	<textarea id="answer-input"></textarea>
					    	<div class="fix-buttons">
						  	  	<button id="cancel-faq">취소</button>
								<button id="save-faq">저장</button>
					    	</div>
					    </div>
					</div>
						
				    <div class="comment-like-container" onclick="toggleCommentLike(this)">
				        <img class="comment-like-icon" src="../assets/images/display/like.png" alt="like">
				        <span class="comment-like-count">0</span>
				    </div>
				</div>
			</div>
		</c:forEach>
		
		
		
		


        
       
       		<!-- 등록 클릭 시 팝업 (문구 있을 시)-->
			<div class="modal-bg" id="modalBg">
			    <div class="modal">
			        <div class="modal-title">
			        	<img class="question-icon" alt="question-icon" src="../assets/images/display/question.png">
			        	<span>댓글을 등록하시겠습니까?</span>
			        </div>
			        <div class="modal-footer">
			            <button class="cancel" onclick="closePopup('modalBg')">취소</button>
			            <button class="send" onclick="confirmSubmission()">확인</button>
			        </div>
			    </div>
			</div>
			
			<!-- 등록완료 팝업 -->
			<div id="popupOverlay" class="modal-bg" style="display: none;">
				<div class="modal">
			        <div class="modal-title">
			        	<img class="question-icon" alt="question-icon" src="../assets/images/display/ok.png">
			        	<span>댓글이 등록되었습니다!</span>
			        </div>
			        <div class="modal-footer">
			            <button class="send" onclick="closePopup()">확인</button>
			        </div>
			    </div>
			</div>
			
			<!-- 댓글을 입력하세요. -->
			<div id="emptyCommentPopup" class="modal-bg" style="display: none;">
			    <div class="modal">
			        <div class="modal-title">
			            <img class="question-icon" alt="question-icon" src="../assets/images/display/attention.png">
			            <span>댓글을 입력하세요.</span>
			        </div>
			        <div class="modal-footer">
			            <button class="send" onclick="closePopup('emptyCommentPopup')">확인</button>
			        </div>
			    </div>
			</div>
			
			<!-- 댓글이 수정되었습니다! -->
			<div id="updateCommentPopup" class="modal-bg" style="display: none;">
			    <div class="modal">
			        <div class="modal-title">
			            <img class="attention-icon" alt="attention-icon" src="../assets/images/display/attention.png">
			            <span>댓글이 수정되었습니다!</span>
			        </div>
			        <div class="modal-footer">
			            <button class="send" onclick="closePopup('updateCommentPopup')">확인</button>
			        </div>
			    </div>
			</div>
	    
    
	</div>    
</div>
<div class="footer-margin"></div>
<%@ include file="../layout/footer.jsp" %>
</body>
<script type="text/javascript" src="../assets/js/display/display-detail.js"></script>
<script type="text/javascript" src="../assets/js/display/display-detail-click.js"></script>


</html>