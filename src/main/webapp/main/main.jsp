<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../assets/css/main/main.css" />
<link rel="stylesheet" type="text/css" href="../assets/css/font/font.css" />
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css"/>
<title>Gradation</title>
</head>
<body>
	<%@ include file="../layout/header.jsp" %>
	
	  <div id="main">
		<div class="swiper mySwiper">
		  <div class="swiper-wrapper">
		    <div class="swiper-slide">
		      <img src="../assets/images/main/main-image1.png" alt="main-image1" />
		    </div>
		    <div class="swiper-slide">
		      <img src="../assets/images/main/main-image2.png" alt="main-image2" />
		    </div>
		    <div class="swiper-slide">
		      <img src="../assets/images/main/main-image3.png" alt="main-image3" />
		    </div>
		    <div class="swiper-slide">
		      <img src="../assets/images/main/main-image4.png" alt="main-image4" />
		    </div>
		    <div class="swiper-slide">
		      <img src="../assets/images/main/main-image1.png" alt="main-image1" />
		    </div>
		    <div class="swiper-slide">
		      <img src="../assets/images/main/main-image2.png" alt="main-image2" />
		    </div>
		    <div class="swiper-slide">
		      <img src="../assets/images/main/main-image3.png" alt="main-image3" />
		    </div>
		    <div class="swiper-slide">
		      <img src="../assets/images/main/main-image4.png" alt="main-image4" />
		    </div>
		  </div>
		</div>
		<div id="main-text-wrap">
	    	<p id="main-text">모든 작품들은 빛날 가치가 있습니다</p>
	    </div>
	  </div>
	
	<%@ include file="../layout/footer.jsp" %>
	
<script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
<script>
	document.addEventListener('DOMContentLoaded', function () {
		const swiper = new Swiper('.mySwiper', {
			slidesPerView: 'auto',
			spaceBetween: 40,
			loop: true,
      		speed: 3000,
      		autoplay: {
        		delay: 0,
        		disableOnInteraction: false,
      		},
      		freeMode: true,
      		freeModeMomentum: false,
    	});
	});
</script>
	
</body>
</html>



