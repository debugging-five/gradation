<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8" name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Upcycle Form</title>
    <link rel="stylesheet" type="text/css" href="../assets/css/font/font.css" />
    <link rel="stylesheet" href="../assets/css/upcycle/upcycle-form.css" />
    <link rel="stylesheet" href="../assets/css/upcycle/globals.css" />
</head>
	<body>
    	<div class="upcycle-form">
      		<div class="content">
       			 <header class="header">
			          <div class="header-content">
			           	 <nav class="navbar">
			             	<a href="#" class="nav-link">display</a>
			             	<a href="#" class="nav-link">artist</a>
			              	<a href="#" class="nav-link">auction</a>
			              	<a href="#" class="nav-link">exhibition</a>
			              	<a href="#" class="nav-link">upcycle</a>
			              	<a href="#" class="nav-link nav-link-signin">sign in</a>
			           	 </nav>
			             <img class="icon" src="assets/images/upcycle-form/icon.svg" alt="Search icon" />
			          </div>
			         <img class="logo" src="assets/images/upcycle-form/icon.png" alt="Company logo" />
			      </header>
        	<main>
	        	<h1 class="page-title">upcycle</h1>
	        	<section class="registration">
            		<h2 class="section-title">registration</h2>
          		</section>
          		<form class="upcycle-form">
            		<div class="form-group">
		            	<label for="email" class="form-label">이메일<span class="required">*</span></label>
		            	<input type="email" id="email" class="form-input" placeholder="이메일을 입력하세요." required />
            		</div>
            		<div class="form-group">
              			<label for="phone" class="form-label">연락처<span class="required">*</span></label>
             		 	<input type="tel" id="phone" class="form-input" placeholder="연락처를 입력하세요." required />
            		</div>
            		<div class="form-group">
              			<label for="school" class="form-label">학교명<span class="required">*</span></label>
              			<div class="input-group">
                			<input type="text" id="school" class="form-input" placeholder="학교명을 검색하세요." required />
                			<button type="button" class="search-button">학교 검색</button>
              			</div>
            		</div>
            		<div class="form-group">
              			<label for="address" class="form-label">상세주소<span class="required">*</span></label>
              			<input type="text" id="address" class="form-input" placeholder="상세주소를 입력하세요." required />
            		</div>
            		<div class="form-group">
              			<label for="pickup-date" class="form-label">수거 신청일<span class="required">*</span></label>
              			<div class="input-group">
                			<input type="text" id="pickup-date" class="form-input" placeholder="날짜를 선택해주세요." required />
                			<button type="button" class="calendar-button" aria-label="Open calendar">
                  				<img src="assets/images/upcycle-form/mdi-light-calendar.svg" alt="Calendar icon" />
                			</button>
              			</div>
            		</div>
            		<div class="form-group">
              			<label class="form-label">크기 분류(작품 개수 선택)<span class="required">*</span></label>
              			<div class="size-category">
                			<div class="size-item">
                  				<span class="size-label">소형(50cm 이하)</span>
                  					<div class="number-input">
                    					<input type="number" class="form-input" min="0" placeholder="0" />
                    						<span class="unit">개</span>
                  					</div>
                			</div>
                				<div class="size-item">
                  					<span class="size-label">중형(50cm ~ 100cm)</span>
                  					<div class="number-input">
                    					<input type="number" class="form-input" min="0" placeholder="0" />
                    					<span class="unit">개</span>
                  					</div>
                				</div>
                			<div class="size-item">
                  				<span class="size-label">대형(100cm 이상)</span>
                  				<div class="number-input">
                   			 		<input type="number" class="form-input" min="0" placeholder="0" />
                    				<span class="unit">개</span>
                  				</div>
                			</div>
              			</div>
            		</div>
            		<div class="form-group">
              			<label class="form-label">주된 재질<span class="required">*</span></label>
              			<div class="material-options">
                			<label class="material-option">
                  				<input type="checkbox" name="material" value="canvas" />
                  				<span class="material-name">캔버스 &amp; 종이류</span>
                			</label>
                			<label class="material-option">
                  				<input type="checkbox" name="material" value="wood" />
                  				<span class="material-name">목재</span>
                			</label>
                			<label class="material-option">
                  				<input type="checkbox" name="material" value="metal" />
                  				<span class="material-name">금속</span>
                			</label>
                			<label class="material-option">
                  				<input type="checkbox" name="material" value="plastic" />
                  				<span class="material-name">플라스틱 &amp; 아크릴</span>
                			</label>
                			<label class="material-option">
                  				<input type="checkbox" name="material" value="other" />
                  				<span class="material-name">기타</span>
                			</label>
              			</div>
            		</div>
            		<div class="form-group">
              			<label for="special-notes" class="form-label">특이 사항</label>
              				<textarea id="special-notes" class="form-input" rows="4"></textarea>
            		</div>
            		<div class="form-group">
              			<label class="form-label">첨부파일 업로드</label>
              			<div class="file-upload">
                			<input type="file" id="file-upload" class="file-input" multiple />
                			<label for="file-upload" class="file-label">
                  				<img src="assets/images/upcycle-form/add-four.svg" alt="Upload icon" class="upload-icon" />
                  				<span>첨부파일 업로드</span>
                			</label>
              			</div>
              			<p class="file-description">(수거 신청한 폐기 작품 사진 업로드)</p>
            		</div>
            		<div class="form-actions">
              			<button type="button" class="button button-cancel">취소</button>
              			<button type="submit" class="button button-submit">신청</button>
            		</div>
          		</form>
     		</main>
        	<footer class="footer">
          		<div class="footer-content">
            		<img class="footer-logo" src="assets/images/upcycle-form/image-3.png" alt="Footer logo" />
            		<p class="footer-address">
              		146, Teheran-ro, Gangnam-gu,
              		<a
                		href="https://www.jusoen.com/addreng.asp?p1=%EC%84%9C%EC%9A%B8%ED%8A%B9%EB%B3%84%EC%8B%9C+%EA%B0%95%EB%82%A8%EA%B5%AC+%ED%85%8C%ED%97%A4%EB%9E%80%EB%A1%9C+146&x=0&y=0#"
                		target="_blank"
                		rel="noopener noreferrer"
                	>Seoul</a
              		>, Republic of Korea<br />
              		KoreaItAcademy - All rights reserved 2025
            		</p>
          		</div>
        	</footer>
    	  	</div>
    	</div>
  	</body>
</html>
    