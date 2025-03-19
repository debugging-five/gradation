<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=1920, maximum-scale=1.0" />
    <link rel="stylesheet" type="text/css" href="../assets/css/font/font.css" />
    <link rel="stylesheet" type="text/css" href="../assets/css/upcycle/upcycle-form.css" />
    <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
	<script>
	    function execDaumPostcode() {
	        new daum.Postcode({
	            oncomplete: function(data) {
	                var fullAddress = data.address;
	                var extraAddress = '';
	
	                if (data.addressType === 'R') {
	                    if (data.bname !== '') {
	                        extraAddress += data.bname;
	                    }
	                    if (data.buildingName !== '') {
	                        extraAddress += (extraAddress !== '' ? ', ' + data.buildingName : data.buildingName);
	                    }
	                    fullAddress += (extraAddress !== '' ? ' (' + extraAddress + ')' : '');
	                }
	
	                document.getElementById("address").value = fullAddress;
	            }
	        }).open();
	    }
	</script>
  </head>
  <body style="margin: 0; background: #fbfcfc">
  	<%@ include file="../layout/header.jsp" %>
    <input type="hidden" id="page-name" name="page" value="upcycle-form" />
    <div class="container-center">
      <div class="upcycle-form screen">
        <div class="flex-col">
          <h1 class="title">upcycle</h1>
          <div class="registration">
            <div class="registration-1">
              registration
            </div>
            <img class="line-3" src="../assets/images/upcycle/upcycle-form/line-3-2.png" alt="Line 3"/>
          </div>
        </div>
        <div class="flex-row">
          <div class="upload-image">
            <div class="image">
              <div class="overlap-group" id="upload-container">
                <input type="file" id="file-input" accept="image/*" style="display: none;" onchange="preview-image(event)">
                <img id="preview-image" class="preview-image" src="../assets/images/upcycle/upcycle-form/add-four-2@2x.png" alt="preview-image"/>
                <div class="text-upload" id="text-upload">
                  첨부파일 업로드
                </div>
              </div>
            </div>
            <p class="text-upload-ex">
              (수거 신청한 폐기 작품 사진 업로드)
            </p>
          </div>
          <div class="flex-col-shcool">
            <div class="serch-school">
              <div class="flex-row-1">
                <div class="text-school">
                  <span
                    ><span class="span-1"
                      >학교명</span
                    ><span class="span-2"
                      >*</span
                    >
                  </span>
                </div>
                <input class="input-school" id="address" name="address" placeholder="학교명을 검색하세요." type="text" required />
                <button type="button" class="overlap-group-1" onclick="execDaumPostcode()">
				    <div class="text-search-address">주소 검색</div>
				</button>
              </div>
              <img
                class="line"
                src="../assets/images/upcycle/upcycle-form/line-107-11@2x.png"
                alt="Line 107"
              />
            </div>
            <div class="search-address">
              <div class="flex-row-2">
                <div class="text-detail-address">
                  <span
                    ><span class="span-1"
                      >상세주소</span
                    ><span class="span-2"
                      >*</span
                    >
                  </span>
                </div>
                <input
                  class="input-address"
                  name="상세주소를입력하세요"
                  placeholder="상세주소를 입력하세요. "
                  type="text"
                  required
                />
              </div>
              <img
                class="line"
                src="../assets/images/upcycle/upcycle-form/line-107-11@2x.png"
                alt="Line 107"
              />
            </div>
            <div class="email">
              <div class="flex-row-3">
                <div class="text-email">
                  <span
                    ><span class="span-1"
                      >이메일</span
                    ><span class="span-2"
                      >*</span
                    >
                  </span>
                </div>
                <input
                  class="input-email"
                  name="이메일을입력하세요"
                  placeholder="이메일을 입력하세요."
                  type="email"
                />
              </div>
              <img
                class="line"
                src="../assets/images/upcycle/upcycle-form/line-107-11@2x.png"
                alt="Line 107"
              />
            </div>
            <div class="phone">
              <div class="flex-row-4">
                <div class="text-phone">
                  <span
                    ><span class="span-1"
                      >연락처</span
                    ><span class="span-2"
                      >*</span
                    >
                  </span>
                </div>
                <input
                  class="input-phone"
                  name="연락처를입력하세요"
                  placeholder="연락처를 입력하세요."
                  type="text"
                />
              </div>
              <img
                class="line"
                src="../assets/images/upcycle/upcycle-form/line-107-11@2x.png"
                alt="Line 107"
              />
            </div>
            <div class="pickup-date">
              <div class="flex-row-5">
                <div class="pick-up">
                  <div class="group-pick-up">
                    <div class="text-pick-up">
                      <span
                        ><span class="span-1"
                          >수거 신청일</span
                        ><span class="span-2"
                          >*</span
                        >
                      </span>
                    </div>
                  </div>
                </div>
                <img
                  class="calendar"
                  src="../assets/images/upcycle/upcycle-form/mdi-light-calendar-2@2x.png"
                  alt="calendar"
                />
                <div class="text-calendar">
                  날짜를 선택해주세요.
                </div>
              </div>
              <img
                class="line"
                src="../assets/images/upcycle/upcycle-form/line-107-11@2x.png"
                alt="Line 108"
              />
            </div>
            <div class="select-trash-number">
              <div class="flex-col-2">
                <div class="text-trash">
                  <span
                    ><span class="span-1"
                      >크기 분류(작품 개수 선택)</span
                    ><span class="span-2"
                      >*</span
                    >
                  </span>
                </div>
                <div class="size-category">
                  <div class="x50cm">소형(50cm 이하)</div>
                  <div class="x50cm-100cm">
                    중형(50cm ~ 100cm)
                  </div>
                  <div class="x100cm">대형(100cm 이상)</div>
                </div>
              </div>
              <div class="canvas-number-container">
                <div class="canvas-number-large">
                  <div class="flex-col-3">
                    <input
                      class="text-1"
                      name="text"
                      placeholder=""
                      type="text"
                    /><img
                      class="line-1"
                      src="../assets/images/upcycle/upcycle-form/line-107-10@2x.png"
                      alt="Line 107"
                    />
                  </div>
                  <div class="text-20">개</div>
                </div>
                <div class="product-number-middle">
                  <div class="flex-col-4 flex-col-6">
                    <input
                      class="text-1"
                      name="text"
                      placeholder=""
                      type="text"
                    /><img
                      class="line-1"
                      src="../assets/images/upcycle/upcycle-form/line-107-10@2x.png"
                      alt="Line 108"
                    />
                  </div>
                  <div class="text-21">개</div>
                </div>
                <div class="product-number-small">
                  <div class="overlap-group-2">
                    <img
                      class="line-2"
                      src="../assets/images/upcycle/upcycle-form/line-107-10@2x.png"
                      alt="Line 109"
                    />
                    <input
                      class="text-2"
                      name="text"
                      placeholder=""
                      type="text"
                    />
                  </div>
                  <div class="text-22">개</div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="flex-col-5">
          <div class="material">
            <div class="text-material">
              <span
                ><span class="span-1"
                  >주된 재질</span
                ><span class="span-2">*</span>
              </span>
            </div>
            <div class="flex-row-6">
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
            <div class="text-significant">특이 사항</div>
            <div class="overlap-group2">
              <input
                class="input-significant"
                name="예_깨지기쉬움분해필요"
                placeholder="예: 깨지기 쉬움, 분해 필요"
                type="text"
              />
            </div>
          </div>
          <div class="confirm">
            <div class="confirm-item">
              <button type="button"class="overlap-group-3">
                 <div class="text-cancel">취소</div>
              </button>
            </div>
            <div class="confirm-item">
              <button type="submit" class="overlap-group1">
                <div class="text-confirm">신청</div>
              </button>
            </div>
          </div>
             <%@ include file="../layout/footer.jsp" %>
        </div>
      </div>
    </div>
    <script>
	    document.getElementById("upload-container").addEventListener("click", function () {
	        document.getElementById("file-input").click();
	    });
	
	    document.getElementById("file-input").addEventListener("change", function (event) {
	        previewImage(event);
	    });
	
	    function previewImage(event) {
	        const file = event.target.files[0];
	        if (file) {
	            const reader = new FileReader();
	            reader.onload = function (e) {
	                const preview = document.getElementById("preview-image");
	                const uploadText = document.getElementById("upload-text");
	
	                preview.src = e.target.result;
	                preview.style.display = "block";
	                uploadText.style.display = "none";
	            };
	            reader.readAsDataURL(file);
	        }
	    }
		
    </script>
    <script>
    document.addEventListener("DOMContentLoaded", function () {
        const calendarIcon = document.querySelector(".calendar");
        const textCalendar = document.querySelector(".text-calendar");

        // 📌 달력 UI 생성
        const calendarInput = document.createElement("input");
        calendarInput.type = "date";
        calendarInput.style.position = "absolute";
        calendarInput.style.opacity = "0"; // 화면에 보이지 않도록 숨김
        calendarInput.style.pointerEvents = "none"; // 클릭 방지

        document.body.appendChild(calendarInput);

        // 📌 달력 아이콘 클릭 시 달력 오픈
        calendarIcon.addEventListener("click", function () {
            calendarInput.showPicker(); // 기본 HTML date picker 사용
        });

        // 📌 날짜 선택 시 text-calendar 에 값 입력
        calendarInput.addEventListener("change", function () {
            if (calendarInput.value) {
                textCalendar.textContent = calendarInput.value; // 선택한 날짜 입력
            }
        });
    });
    
	</script>
    
  </body>
</html>
