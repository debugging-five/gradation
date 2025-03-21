<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=1920, maximum-scale=1.0" />
    <link rel="stylesheet" type="text/css" href="../assets/css/font/font.css" />
    <link rel="stylesheet" type="text/css" href="../assets/css/mypage/mypage-send-post-content-modify.css" />
  </head>
  <body style="margin: 0; background: #fbfcfc">
  <%@ include file="../layout/header.jsp"%>
    <input type="hidden" id="anPageName" name="page" value="mypage-send-post-content-modify" />
    <div class="container-center">
      <div class="mypage-send-post-content-modify screen">
        <div class="view">
         <%@ include file="mypage-info-layout.jsp"%>
        </div>
        <div class="flex-col">
          <div class="flex-title">
              <h1 class="title">내 쪽지 및 문의 / 내 쪽지</h1>
            <p class="notice">전송이 완료된 쪽지는 수정이 불가합니다.</p>
          </div>
          <div class="flex-form">
            <div class="form-title"><span class="span0">제목</span><span class="span1">*</span></div>
            <div class="form-input-title">파리가 나올리가 없어요</div>
          </div>
          <img class="line-1 line" src="../assets/images/mypage/my-post/line-114-1.png" alt="Line 1" />
          <div class="form-content"><span class="span0">내용</span><span class="span1">*</span></div>
          <div class="overlap-group">
            <p class="form-input-content">
              삼각자는 직각 삼각자 를 포함하여 여러개 여유있게 준비해 두는 것이 바람직한데, 왜냐하면 입체작품(비교 적
              크기가 작은)의 놓이와 폭 등을 실측하기 위해서는 2개 내지는 3개의 자를 조립하 여 사용할 경우도 있기
              때문이다. 줄자는 철제로 된 것 뿐만 아니라 비닐과 천과 같은 부드러운 소재로 만들어진 것도 필요하다. 이것은
              종이를 소재로 했거나 깨어지기 쉬 운 공예작품과 같이 매우 조심스럽게 다루어야 할 작품을 실측하는데 유용하기
              때문이다.삼각자는 직각 삼각자 를 포함하여 여러개 여유있게 준비해 두는 것이 바람직한데, 왜냐하면
              입체작품(비교 적 크기가 작은)의 놓이와 폭 등을 실측하기 위해서는 2개 내지는 3개의 자를 조립하 여 사용할
              경우도 있기 때문이다. 줄자는 철제로 된 것 뿐만 아니라 비닐과 천과 같은 부드러운 소재로 만들어진 것도
              필요하다. 이것은 종이를 소재로 했거나 깨어지기 쉬 운 공예작품과 같이 매우 조심스럽게 다루어야 할 작품을
              실측하는데 유용하기 때문이다.삼각자는 직각 삼각자 를 포함하여 여러개 여유있게 준비해 두는 것이 바람직한데,
              왜냐하면 입체작품(비교 적 크기가 작은)의 놓이와 폭 등을 실측하기 위해서는 2개 내지는 3개의 자를 조립하 여
              사용할 경우도 있기 때문이다. 줄자는 철제로 된 것 뿐만 아니라 비닐과 천과 같은 부드러운 소재로 만들어진
              것도 필요하다. 이것은 종이를 소재로 했거나 깨어지기 쉬 운 공예작품과 같이 매우 조심스럽게 다루어야 할
              작품을 실측하는데 유용하기 때문이다.
            </p>
          </div>
          <div class="flex-attach-file">
            <div class="attach-file">첨부파일</div>
            <div class="overlap-group2"><div class="attach-button">첨부파일</div></div>
          </div>
          <div class="flex-email">
            <div class="email">이메일*</div>
            <div class="input-email">gradation1234@email.com</div>
          </div>
          <img class="line-1 line" src="../assets/images/mypage/my-post/line-114-1.png" alt="Line 1" />
          <div class="overlap-group1"><div class="send ">보내기</div></div>
        </div>
      </div>
    </div>
    <%@ include file="../layout/footer.jsp"%>
  </body>
</html>
