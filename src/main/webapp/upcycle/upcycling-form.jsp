<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>Upcycling Form</title>
    <link rel="stylesheet" href="<%= request.getContextPath() %>/css/style.css">
</head>
<body>
    <div class="upcycling-form">
        <div class="div">
            <div class="group">
                <div class="element">
                    <div class="group-2">
                        <img class="image" src="<%= request.getContextPath() %>/img/image-3.png" alt="logo">
                        <p class="address-samcheong">
                            <span class="text-wrapper">146, Teheran-ro, Gangnam-gu, </span>
                            <a href="https://www.jusoen.com/addreng.asp?p1=%EC%84%9C%EC%9A%B8%ED%8A%B9%EB%B3%84%EC%8B%9C+%EA%B0%95%EB%82%A8%EA%B5%AC+%ED%85%8C%ED%97%A4%EB%9E%80%EB%A1%9C+146&x=0&y=0#" target="_blank" rel="noopener noreferrer">
                                <span class="text-wrapper">Seoul</span>
                            </a>
                            <span class="text-wrapper">, Republic of Korea<br>Korea IT Academy - All rights reserved 2025</span>
                        </p>
                    </div>
                </div>
            </div>

            <div class="text-wrapper-2">upcycle</div>
            <div class="group-3">
                <img class="line" src="<%= request.getContextPath() %>/img/line-3.svg" alt="line">
                <div class="text-wrapper-3">registration</div>
            </div>

            <div class="overlap-group-wrapper">
                <div class="overlap-group">
                    <img class="add-four" src="<%= request.getContextPath() %>/img/add-four.svg" alt="upload icon">
                    <div class="text-wrapper-4">첨부파일 업로드</div>
                </div>
            </div>

            <div class="group-4">
                <p class="p"><span class="span">이메일</span> <span class="text-wrapper-5">*</span></p>
                <img class="img" src="<%= request.getContextPath() %>/img/line-107-2.svg" alt="line">
                <div class="text-wrapper-6">이메일을 입력하세요.</div>
            </div>

            <div class="group-5">
                <p class="p"><span class="span">연락처</span> <span class="text-wrapper-5">*</span></p>
                <img class="img" src="<%= request.getContextPath() %>/img/line-107-3.svg" alt="line">
                <div class="text-wrapper-6">연락처를 입력하세요.</div>
            </div>

            <div class="overlap">
                <div class="group-6">
                    <div class="div-wrapper">
                        <p class="div-2"><span class="span">학교명</span> <span class="text-wrapper-5">*</span></p>
                    </div>
                    <img class="line-2" src="<%= request.getContextPath() %>/img/line-107-5.svg" alt="line">
                    <div class="text-wrapper-7">학교명을 검색하세요.</div>
                </div>
                <div class="overlap-wrapper">
                    <div class="overlap-2"><div class="text-wrapper-8">학교 검색</div></div>
                </div>
            </div>

            <div class="group-7">
                <div class="group-8">
                    <p class="p"><span class="span">상세주소</span> <span class="text-wrapper-5">*</span></p>
                </div>
                <img class="img" src="<%= request.getContextPath() %>/img/line-107.svg" alt="line">
                <div class="text-wrapper-6">상세주소를 입력하세요.</div>
            </div>

            <div class="group-9">
                <div class="group-10">
                    <div class="overlap-group-2"><div class="text-wrapper-9">취소</div></div>
                </div>
                <div class="group-11">
                    <div class="overlap-3"><div class="text-wrapper-10">신청</div></div>
                </div>
            </div>

            <img class="line-3" src="<%= request.getContextPath() %>/img/line-107-4.svg" alt="line">
            <img class="line-4" src="<%= request.getContextPath() %>/img/image.svg" alt="line">
            <img class="line-5" src="<%= request.getContextPath() %>/img/line-109.svg" alt="line">

            <div class="group-12">
                <img class="line-6" src="<%= request.getContextPath() %>/img/line-108.svg" alt="line">
                <div class="text-wrapper-11">날짜를 선택해주세요.</div>
                <div class="group-wrapper">
                    <div class="group-13">
                        <p class="div-3"><span class="span">수거 신청일</span> <span class="text-wrapper-5">*</span></p>
                    </div>
                </div>
                <img class="mdi-light-calendar" src="<%= request.getContextPath() %>/img/mdi-light-calendar.svg" alt="calendar">
            </div>

            <p class="text-wrapper-12">(수거 신청한 폐기 작품 사진 업로드)</p>

            <div class="group-14">
                <div class="group-15">
                    <div class="group-16">
                        <div class="group-17">
                            <p class="p"><span class="span">크기 분류(작품 개수 선택)</span> <span class="text-wrapper-5">*</span></p>
                        </div>
                    </div>
                </div>
            </div>

            <p class="div-4"><span class="span">주된 재질</span> <span class="text-wrapper-5">*</span></p>
            <div class="text-wrapper-13">특이 사항</div>
            <div class="text-wrapper-14">소형(50cm 이하)</div>
            <div class="text-wrapper-15">중형(50cm ~ 100cm)</div>
            <div class="text-wrapper-16">대형(100cm 이상)</div>

            <div class="overlap-4"><p class="text-wrapper-25">예: 깨지기 쉬움, 분해 필요</p></div>

            <div class="overlap-5">
                <div class="text"></div>
                <div class="element-2">
                    <div class="overlap-6">
                        <div class="group-18">
                            <div class="text-wrapper-26">exhibition</div>
                            <div class="text-wrapper-27">display</div>
                            <div class="text-wrapper-28">upcycle</div>
                            <div class="text-wrapper-29">sign in</div>
                        </div>
                        <div class="text-wrapper-30">artist</div>
                        <div class="text-wrapper-31">auction</div>
                        <img class="icon" src="<%= request.getContextPath() %>/img/icon.svg" alt="icon">
                    </div>
                    <div class="group-19">
                        <div class="text-wrapper-32">대학교 전시회</div>
                        <div class="text-wrapper-33">- 전시일정</div>
                        <div class="text-wrapper-34">- 학교홍보</div>
                    </div>
                    <img class="group-20" src="<%= request.getContextPath() %>/img/group-4035.png" alt="group">
                </div>
            </div>
        </div>
    </div>
</body>
</html>
