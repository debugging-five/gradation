<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=1920, maximum-scale=1.0" />
    <link rel="stylesheet" type="text/css" href="../assets/css/font/font.css" />
    <link rel="stylesheet" type="text/css" href="../assets/css/mypage/mypage-post-content.css" />
  </head>
  <body style="margin: 0; background: #fbfcfc">
  	<%@ include file="../layout/header.jsp"%>
    <input type="hidden" id="anPageName" name="page" value="mypage-post-content" />
    <div class="container-center">
      <div class="mypage-post-content screen">
        <div class="view">
          <%@ include file="mypage-info-layout.jsp"%>
        </div>
        <div class="flex-col">
          <h1 class="title">내 쪽지 및 문의 / 내 쪽지</h1>
          <p class="notice">전송이 완료된 쪽지는 수정이 불가합니다.</p>
          <div class="post-title-group">
            <div class="post-title">빌라모형에서 파리가 나왔어요.</div>
            <div class="post-date">25.01.15</div>
          </div>
          <div class="post-user-info-group">
            <div class="user-name">발신자명</div>
            <div class="user">보스턴 치킨</div>
            <div class="user-mail">메일주소</div>
            <div class="mail">gradation1234@gmail.com</div>
          </div>
          <p class="content">
            삼각자는 직각 삼각자 를 포함하여 여러개 여유있게 준비해 두는 것이 바람직한데, 왜냐하면 입체작품(비교 적
            크기가 작은)의 놓이와 폭 등을 실측하기 위해서는 2개 내지는 3개의 자를 조립하 여 사용할 경우도 있기 때문이다.
            줄자는 철제로 된 것 뿐만 아니라 비닐과 천과 같은 부드러운 소재로 만들어진 것도 필요하다. 이것은 종이를
            소재로 했거나 깨어지기 쉬 운 공예작품과 같이 매우 조심스럽게 다루어야 할 작품을 실측하는데 유용하기
            때문이다.삼각자는 직각 삼각자 를 포함하여 여러개 여유있게 준비해 두는 것이 바람직한데, 왜냐하면
            입체작품(비교 적 크기가 작은)의 놓이와 폭 등을 실측하기 위해서는 2개 내지는 3개의 자를 조립하 여 사용할
            경우도 있기 때문이다. 줄자는 철제로 된 것 뿐만 아니라 비닐과 천과 같은 부드러운 소재로 만들어진 것도
            필요하다. 이것은 종이를 소재로 했거나 깨어지기 쉬 운 공예 포함하여 여러개 여유두는 것이 바람직한데, 왜냐하면
            입체작품(비교 적 크기가 작은)의
          </p>
          <div class="middle-buttons-container">
            <div class="middle-buttons">
                <button class="button-1"><div class="text-list">목록</div></button>
                <button class="button-2"><div class="text-delete">삭제</div></button>
                <button class="button-2"><div class="text-reply">답장</div></button>
            </div>
          </div>
        </div>
      </div>
    </div>
  </body>
  <%@ include file="../layout/footer.jsp"%>
</html>
