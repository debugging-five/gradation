<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=1920, maximum-scale=1.0" />
    <meta name="og:type" content="website" />
    <meta name="twitter:card" content="photo" />
    <link rel="stylesheet" type="text/css" href="../assets/css/font/font.css" />
    <link rel="stylesheet" type="text/css" href="../assets/css/upcycle/upcycle-form.css" />
  </head>
  <body style="margin: 0; background: #fbfcfc">
  	<%@ include file="../layout/header.jsp" %>
    <input type="hidden" id="anPageName" name="page" value="upcycleForm" />
    <div class="container-center-horizontal">
      <div class="upcycleForm screen">
        <div class="flex-col">
          <h1 class="title valign-text-middle suith1">upcycle</h1>
          <div class="registration">
            <div class="registration-1 valign-text-middle suith2">
              registration
            </div>
            <img class="line-3" src="../assets/images/upcycle/upcycle-form/line-3-2.png" alt="Line 3" />
          </div>
        </div>
        <div class="flex-row">
          <div class="upload-image">
            <div class="image">
              <div class="overlap-group">
                <img
                  class="add-four"
                  src="../assets/images/upcycle/upcycle-form/add-four-2@2x.png"
                  alt="add-four"
                />
                <div class="text-10 valign-text-middle pretendardh4">
                  첨부파일 업로드
                </div>
              </div>
            </div>
            <p class="text-11 valign-text-middle pretendardh6">
              (수거 신청한 폐기 작품 사진 업로드)
            </p>
          </div>
          <div class="flex-col-1 flex-col-6">
            <div class="serch-school">
              <div class="flex-row-1">
                <div class="text-3 valign-text-middle pretendardh4">
                  <span
                    ><span class="span pretendard-semi-bold-mine-shaft-18px"
                      >학교명</span
                    ><span class="span pretendard-semi-bold-cinnabar-18px"
                      >*</span
                    >
                  </span>
                </div>
                <input
                  class="x x-5 pretendardh6"
                  name="학교명을검색하세요"
                  placeholder="학교명을 검색하세요."
                  type="text"
                />
                <div class="overlap-group-1">
                  <div class="text-4 valign-text-middle pretendardh6">
                    학교 검색
                  </div>
                </div>
              </div>
              <img
                class="line-10"
                src="../assets/images/upcycle/upcycle-form/line-107-11@2x.png"
                alt="Line 107"
              />
            </div>
            <div class="search-address">
              <div class="flex-row-2">
                <div class="text-5 valign-text-middle pretendardh4">
                  <span
                    ><span class="span pretendard-semi-bold-mine-shaft-18px"
                      >상세주소</span
                    ><span class="span pretendard-semi-bold-cinnabar-18px"
                      >*</span
                    >
                  </span>
                </div>
                <input
                  class="x-1 x-5 pretendardh6"
                  name="상세주소를입력하세요"
                  placeholder="상세주소를 입력하세요. "
                  type="text"
                  required
                />
              </div>
              <img
                class="line-10"
                src="../assets/images/upcycle/upcycle-form/line-107-11@2x.png"
                alt="Line 107"
              />
            </div>
            <div class="email">
              <div class="flex-row-3">
                <div class="text valign-text-middle pretendardh4">
                  <span
                    ><span class="span pretendard-semi-bold-mine-shaft-18px"
                      >이메일</span
                    ><span class="span pretendard-semi-bold-cinnabar-18px"
                      >*</span
                    >
                  </span>
                </div>
                <input
                  class="x-2 x-5 pretendardh6"
                  name="이메일을입력하세요"
                  placeholder="이메일을 입력하세요."
                  type="email"
                />
              </div>
              <img
                class="line-10"
                src="../assets/images/upcycle/upcycle-form/line-107-11@2x.png"
                alt="Line 107"
              />
            </div>
            <div class="phone">
              <div class="flex-row-4">
                <div class="text valign-text-middle pretendardh4">
                  <span
                    ><span class="span pretendard-semi-bold-mine-shaft-18px"
                      >연락처</span
                    ><span class="span pretendard-semi-bold-cinnabar-18px"
                      >*</span
                    >
                  </span>
                </div>
                <input
                  class="x-3 x-5 pretendardh6"
                  name="연락처를입력하세요"
                  placeholder="연락처를 입력하세요."
                  type="text"
                />
              </div>
              <img
                class="line-10"
                src="../assets/images/upcycle/upcycle-form/line-107-11@2x.png"
                alt="Line 107"
              />
            </div>
            <div class="pickup-date">
              <div class="flex-row-5">
                <div class="pick-up-text">
                  <div class="group-616">
                    <div class="text-9 valign-text-middle pretendardh4">
                      <span
                        ><span class="span pretendard-semi-bold-mine-shaft-18px"
                          >수거 신청일</span
                        ><span class="span pretendard-semi-bold-cinnabar-18px"
                          >*</span
                        >
                      </span>
                    </div>
                  </div>
                </div>
                <img
                  class="mdi-lightcalendar"
                  src="../assets/images/upcycle/upcycle-form/mdi-light-calendar-2@2x.png"
                  alt="mdi-light:calendar"
                />
                <div class="text-8 valign-text-middle pretendardh6">
                  날짜를 선택해주세요.
                </div>
              </div>
              <img
                class="line-10"
                src="../assets/images/upcycle/upcycle-form/line-107-11@2x.png"
                alt="Line 108"
              />
            </div>
            <div class="select-product-number">
              <div class="flex-col-2 flex-col-6">
                <div class="text-19 valign-text-middle pretendardh4">
                  <span
                    ><span class="span pretendard-semi-bold-mine-shaft-18px"
                      >크기 분류(작품 개수 선택)</span
                    ><span class="span pretendard-semi-bold-cinnabar-18px"
                      >*</span
                    >
                  </span>
                </div>
                <div class="size-category pretendardh6">
                  <div class="x50cm valign-text-middle">소형(50cm 이하)</div>
                  <div class="x50cm--100cm valign-text-middle">
                    중형(50cm ~ 100cm)
                  </div>
                  <div class="x100cm valign-text-middle">대형(100cm 이상)</div>
                </div>
              </div>
              <div class="product-number-container">
                <div class="product-number-large">
                  <div class="flex-col-3 flex-col-6">
                    <input
                      class="text-1 pretendardh6"
                      name="text"
                      placeholder=""
                      type="text"
                    /><img
                      class="line-10-1"
                      src="../assets/images/upcycle/upcycle-form/line-107-10@2x.png"
                      alt="Line 107"
                    />
                  </div>
                  <div class="text-20 valign-text-middle pretendardh6">개</div>
                </div>
                <div class="product-number-middle">
                  <div class="flex-col-4 flex-col-6">
                    <input
                      class="text-1 pretendardh6"
                      name="text"
                      placeholder=""
                      type="text"
                    /><img
                      class="line-10-1"
                      src="../assets/images/upcycle/upcycle-form/line-107-10@2x.png"
                      alt="Line 108"
                    />
                  </div>
                  <div class="text-21 valign-text-middle pretendardh6">개</div>
                </div>
                <div class="product-number-small">
                  <div class="overlap-group-2">
                    <img
                      class="line-109"
                      src="../assets/images/upcycle/upcycle-form/line-107-10@2x.png"
                      alt="Line 109"
                    />
                    <input
                      class="text-2 pretendardh6"
                      name="text"
                      placeholder=""
                      type="text"
                    />
                  </div>
                  <div class="text-22 valign-text-middle pretendardh6">개</div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="flex-col-5 flex-col-6">
          <div class="material">
            <div class="text-12 valign-text-middle pretendardh4">
              <span
                ><span class="span pretendard-semi-bold-mine-shaft-18px"
                  >주된 재질</span
                ><span class="span pretendard-semi-bold-cinnabar-18px">*</span>
              </span>
            </div>
            <div class="flex-row-6 pretendardh7">
              	<fieldset>
		            <label><input type="checkbox" name="material" value="canvas-paper" /> 캔버스 & 종이류</label>
		            <label><input type="checkbox" name="material" value="wood" /> 목재</label>
		            <label><input type="checkbox" name="material" value="metal" /> 금속</label>
		            <label><input type="checkbox" name="material" value="plastic-acrylic" /> 플라스틱 & 아크릴</label>
		            <label><input type="checkbox" name="material" value="other" /> 기타</label>
	         	</fieldset>
            </div>
          </div>
          <div class="significant">
            <div class="text-18 valign-text-middle pretendardh4">특이 사항</div>
            <div class="overlap-group2">
              <input
                class="x-4 x-5 pretendardh7"
                name="예_깨지기쉬움분해필요"
                placeholder="예: 깨지기 쉬움, 분해 필요"
                type="text"
              />
            </div>
          </div>
          <div class="confirm">
            <div class="confirm-item">
              <button type="button"class="overlap-group-3">
                 <div class="text-6 valign-text-middle pretendardh4">취소</div>
              </button>
            </div>
            <div class="confirm-item">
              <button type="submit" class="overlap-group1">
                <div class="text-7 valign-text-middle pretendardh4">신청</div>
              </button>
            </div>
          </div>
             <%@ include file="../layout/footer.jsp" %>
        </div>
      </div>
    </div>
  </body>
</html>
