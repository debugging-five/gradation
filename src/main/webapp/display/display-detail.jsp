<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
        	<img class="image-file" alt="image" src="../assets/images/display/oMgMan.png">
        </div>
        
        <!-- 좋아요 / 작가와 연락 버튼 -->
        <div class="button-position">
            <button class="like-button">좋아요</button>
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
            <span>좋아요 11개</span>
            <div class="like100">
	            <img class="grayquestion-icon" alt="grayquestion-icon" src="../assets/images/display/gray_question.png">
	        	<span class="hover-text">좋아요 50개 이상 받으면 경매 개시 가능</span>
            </div>
        </div>
        <div class="date"><!-- 제작년도 -->
            <p><strong style="margin-right: 57px">제작년도</strong> ${artdate}</p>
        </div>
        <div class="ingredient"><!-- 재료 -->
            <p><strong style="margin-right: 88px">재료</strong> 돌+철</p>
        </div>
        <div class="size"><!-- 규격 -->
            <p><strong style="margin-right: 88px">규격</strong> 200 X 50 X 50</p>
        </div>
        <div class="category"><!-- 부문 -->
            <p><strong style="margin-right: 88px">부문</strong> 조각</p>
        </div>
        	<div class="content-text"><!-- 작품 설명 -->
	            <p>본 작품은 인터넷에서 가져왔지만 아마존사이트를 잘못 긁어온 박세현의 당황을 잘 담고있다.본 작품은 인터넷에서 가져왔지만 아마존사이트를 잘못 긁어온 박세현의 당황을 잘 담고있다본 작품은 인터넷에서 가져왔지만 아마존사이트를 잘못 긁어온 박세현의 당황을 잘 담고있다본 작품은 인터넷에서 가져왔지만 아마존사이트를 잘못 긁어온 박세현의 당황을 잘 담고있다본 작품은 인터넷에서 가져왔지만 아마존사이트를 잘못 긁어온 박세현의 당황을 잘 담고있다 아래는 작품실측방법에 관한 복사 내용 출처: 현대미술관연구 제 3집 https://www.mmca.go.kr/study/study03/study03-65.html 작품의 실측방법과 기록작품을 어떠한 방법으로 실측하고 기록할 것인가에 대해 살펴보기에 앞서 실측담당 자가 미리 준비하여야 할 몇가지 실측도구들에 대해 간단히 설명하고자 한다.  가장 중요한 실측도구로서는 작품의 크기를 재기 위한 자(尺)를 들 수 있는데, 여러 가지 크기와 종류의 작품들을 편리하게 실측하기 위하여 '&#34881;' 자형 큰자, 투명한 삼각 자와 줄자, 그리고 접는 자 등을 모두 갖추어 두는 것이 좋다.  삼각자는 직각 삼각자 를 포함하여 여러개 여유있게 준비해 두는 것이 바람직한데, 왜냐하면 입체작품(비교 적 크기가 작은)의 놓이와 폭 등을 실측하기 위해서는 2개 내지는 3개의 자를 조립하 여 사용할 경우도 있기 때문이다. 줄자는 철제로 된 것 뿐만 아니라 비닐과 천과 같은 부드러운 소재로 만들어진 것도 필요하다. 이것은 종이를 소재로 했거나 깨어지기 쉬 운 공예작품과 같이 매우 조심스럽게 다루어야 할 작품을 실측하는데 유용하기 때문이 다.  또다른 측정기구로서는 버니어 캘리퍼스(Vernier Calipers)를 들 수 있다. 이것은 도자기 작품과 같이 작품의 두께, 지름 등을 정확하게 측정하는데 사용된다. 또한 작품의 무게를 측량하기 위하여 크고 작은 용량의 저울을 준비하여야 한다. 이 것은 작품의 포장과 운송을 위해서도 필요할 뿐 아니라 입체작품일 경우 이를 전시하 기 위해 필요한 받침대 제작시에도,그리고 평면작품일 경우 작품걸이의 지지용략을 계 측하기 위해서도 필수적이기 때문이다.  작품을 실측하는데 필요한 이상의 측정도구들과 함께 실측 및 기록담당자가 실측행 위 이전에 미리 갖추어야 할 것은 실측된 작품의 크기를 기록하는 순서와 더불어 기록 을 위한 측정단위, 용어 등에 대해 확고한 기준을 세워두는 일이다. 실측 및 기록담당 자의 개인적인 주관이나 편의에 의해서 발생되는 오류를 방지하고 업무의 능률성과 정 확성을 기할 수 있게 하기위해서는 객관성과 합리성을 담보로 한 기준설정이 필수불가 결하기 때문이다.  작품의 실측순서와 기록방법에 대한 기준은 한국화와 양화, 조각 등을 비롯한 모든 쟝르에서 그 특성에 맞게 각기 달리 설정되어야 한다. </p>
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

		
		<div class="user">
	        <div class="user-profile">
	        	<img class="profile-image" alt="profile-image" src="../assets/images/display/cat.png">
	            <p class="comment-user"><strong>user4</strong></p>
	            <p>20분 전</p>
	            
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
				    <p id="question-content" class="comment">작품 잘 봤습니다.</p>
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
		
		
		
		<div class="user">
	        <div class="user-profile">
	        	<img class="profile-image" alt="profile-image" src="../assets/images/display/cat.png">
	            <p class="comment-user"><strong>user4</strong></p>
	            <p>20분 전</p>
	        </div>
			<div class="comment-wrapper">
			    <p class="comment">작품 잘 봤습니다.</p>
			    <div class="comment-like-container" onclick="toggleCommentLike(this)">
			        <img class="comment-like-icon" src="../assets/images/display/like.png" alt="like">
			        <span class="comment-like-count">0</span>
			    </div>
			</div>
		</div>

        
       
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