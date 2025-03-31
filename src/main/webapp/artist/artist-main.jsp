<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>작가 메인</title>
<link rel="stylesheet" type="text/css" href="../assets/css/font/font.css" />
<link rel="stylesheet" type="text/css" href="../assets/css/artist/artist-main.css" />
</head>
<body>
	<%@ include file="../layout/header.jsp"%>
	
	<div id="artist-main-container">
		<h1 class="page-title">artist</h1>
		<div class="tab-wrapper">
			<div class="tab-text">
				<a href="?category=korean">한국화</a>
			</div>
			<span>|</span>
			<div class="tab-text">
				<a href="?category=painting">회화</a>
			</div>
			<span>|</span>
			<div class="tab-text">
				<a href="?category=sculpture">조각</a>
			</div>				
			<span>|</span>
			<div class="tab-text">
				<a href="?category=craft">공예</a>
			</div>				
			<span>|</span>
			<div class="tab-text">
				<a href="?category=architecture">건축</a>
			</div>				
			<span>|</span>
			<div class="tab-text">
				<a href="?category=calligraphy">서예</a>
			</div>				
		</div>
		<div id="input-div">
	  		<input type="text" id="search-input" placeholder="작가이름을 검색하세요.">
	  		<img id="search-icon" src="../assets/images/exhibition/search.png" alt="돋보기" />
	  	</div>
	  	
	  	<div id="artist-container">
	  		<div class="artist-wrap">
		  		<input type="hidden" name="artistId" value="10">
	  			<div class="artist-background"><img alt="배경사진" src="../assets/images/artist/artist-detail/img-korean-two-koifish.jpeg"></div>
	  			<div class="artist-profile"><img alt="프로필사진" src="../assets/images/artist/artist-detail/img-korean-two-koifish.jpeg"></div>
	  			<div class="artist-name"><h5>홍길동</h5></div>
	  			<div class="artist-university"><span>OO대학교</span></div>
	  		</div>
	  		<div class="artist-wrap">
		  		<input type="hidden" name="artistId" value="20">
	  			<div class="artist-background"><img alt="배경사진" src="../assets/images/display/art/architecture/img-architecture-coastal-cliff.jpeg"></div>
	  			<div class="artist-profile"><img alt="프로필사진" src="../assets/images/artist/artist-detail/img-korean-two-koifish.jpeg"></div>
	  			<div class="artist-name"><h5>홍길동</h5></div>
	  			<div class="artist-university"><span>OO대학교</span></div>
	  		</div>
	  		<div class="artist-wrap">
	  			<div class="artist-background"><img alt="배경사진" src="../assets/images/display/art/painting/img-painting-whale.jpeg"></div>
	  			<div class="artist-profile"><img alt="프로필사진" src="../assets/images/artist/artist-detail/img-korean-two-koifish.jpeg"></div>
	  			<div class="artist-name"><h5>홍길동</h5></div>
	  			<div class="artist-university"><span>OO대학교</span></div>
	  		</div>
	  		<div class="artist-wrap">
	  			<div class="artist-background"><img alt="배경사진" src="../assets/images/display/art/painting/img-painting-our-team.jpeg"></div>
	  			<div class="artist-profile"><img alt="프로필사진" src="../assets/images/artist/artist-detail/img-korean-two-koifish.jpeg"></div>
	  			<div class="artist-name"><h5>홍길동</h5></div>
	  			<div class="artist-university"><span>OO대학교</span></div>
	  		</div>
	  		<div class="artist-wrap">
	  			<div class="artist-background"><img alt="배경사진" src="../assets/images/artist/artist-detail/img-korean-two-koifish.jpeg"></div>
	  			<div class="artist-profile"><img alt="프로필사진" src="../assets/images/artist/artist-detail/img-korean-two-koifish.jpeg"></div>
	  			<div class="artist-name"><h5>홍길동</h5></div>
	  			<div class="artist-university"><span>OO대학교</span></div>
	  		</div>
	  		<div class="artist-wrap">
	  			<div class="artist-background"><img alt="배경사진" src="../assets/images/artist/artist-detail/img-korean-two-koifish.jpeg"></div>
	  			<div class="artist-profile"><img alt="프로필사진" src="../assets/images/artist/artist-detail/img-korean-two-koifish.jpeg"></div>
	  			<div class="artist-name"><h5>홍길동</h5></div>
	  			<div class="artist-university"><span>OO대학교</span></div>
	  		</div>
	  		<div class="artist-wrap">
	  			<div class="artist-background"><img alt="배경사진" src="../assets/images/artist/artist-detail/img-korean-two-koifish.jpeg"></div>
	  			<div class="artist-profile"><img alt="프로필사진" src="../assets/images/artist/artist-detail/img-korean-two-koifish.jpeg"></div>
	  			<div class="artist-name"><h5>홍길동</h5></div>
	  			<div class="artist-university"><span>OO대학교</span></div>
	  		</div>
	  		<div class="artist-wrap">
	  			<div class="artist-background"><img alt="배경사진" src="../assets/images/artist/artist-detail/img-korean-two-koifish.jpeg"></div>
	  			<div class="artist-profile"><img alt="프로필사진" src="../assets/images/artist/artist-detail/img-korean-two-koifish.jpeg"></div>
	  			<div class="artist-name"><h5>홍길동</h5></div>
	  			<div class="artist-university"><span>OO대학교</span></div>
	  		</div>
	  		<div class="artist-wrap">
	  			<div class="artist-background"><img alt="배경사진" src="../assets/images/artist/artist-detail/img-korean-two-koifish.jpeg"></div>
	  			<div class="artist-profile"><img alt="프로필사진" src="../assets/images/artist/artist-detail/img-korean-two-koifish.jpeg"></div>
	  			<div class="artist-name"><h5>홍길동</h5></div>
	  			<div class="artist-university"><span>OO대학교</span></div>
	  		</div>
	  	</div>
	  	
	  	<div class="pagination-bar">
			<img class="pagination-icon"
				src="../assets/images/display/art/left.png" alt="left" />
			<div class="page-number">1</div>
			<div class="page-number">2</div>
			<div class="page-number">3</div>
			<div class="page-number">4</div>
			<div class="page-number">5</div>
			<img class="pagination-icon"
				src="../assets/images/display/art/right.png" alt="right" />
		</div>
	</div>
	
	<%@ include file="../layout/footer.jsp"%>
</body>
<script type="text/javascript" src="../assets/js/artist/artist-main.js"></script>
</html>