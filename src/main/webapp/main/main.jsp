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
   
   
	<div class="swiper verticalSwiper">
     	<div class="swiper-wrapper">
     	
     		<div class="swiper-slide">
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
			</div>
	     
     


     		<div class="swiper-slide">
     		
		     <!-- auction -->
				<section id="auction-section">
					<div id="auction-title-wrap">
						<h1 id="auction-title">Gradation Auction</h1>
						<div id="line1"></div>
					</div>
					<div id="auction-banner">
			      		<div>
							<img src="../assets/images/main/main-auction.png" alt="main-auction"/>
						</div>
						<div id="auction-text">
							<h3>졸업작품 전문 경매 플랫폼</h3>
							<h2 style="margin-top: 25px">그라데이션은 미래의 창작가를</h2>
							<h2>응원할 당신을 기다립니다.</h2>
						</div>
					</div>
				</section>
				
			</div>   
			
			<div class="swiper-slide">
			
				<section id="auction-section">
					<div id="auction-title-wrap">
						<h1 id="art-title">Gradation Art</h1>
						<div id="line2"></div>
					</div>
					<div id="gradation-banner">
						<div>
							<img src="../assets/images/main/main-exhibition1.png" alt="main-art"/><img src="../assets/images/main/main-exhibition2.png" alt="main-art"/>
						</div>
						<div id="gradation-text">
							<div id="text1">
								<h3>세상이 알지 못한</h3>
								<h2 style="margin-top: 8px">숨겨진 작품들</h2>
							</div>
							<div id="text2">
								<h3>꿈꾸는 청춘들을</h3>
								<h2 style="margin-top: 8px">만나보세요</h2>
							</div>
						</div>
					</div>
				</section>
				
			</div>
			
			
			<div class="swiper-slide">
			
				<section id="auction-section" style="margin-bottom: 200px">
					<div id="auction-title-wrap">
						<h1 id="upcycling-title">Gradation Upcycling</h1>
						<div id="line3"></div>
					</div>
					<div id="gradation-banner">
						<div>
							<img src="../assets/images/main/main-upcycling.png" alt="main-upcycling"/>
						</div>
						<div id="upcycling-text">
							<div>
								<h3>창작과 환경의 공존</h3>
								<h2 style="margin-top: 8px">작은 노력이 큰 변화를 만들어 냅니다.</h2>
							</div>
						</div>
					</div>
				</section>
				
			</div>

					
	     </div>
     </div>
     
	<footer>
   		<%@ include file="../layout/footer.jsp" %>
   	</footer>
   
<script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
<script>
	document.addEventListener('DOMContentLoaded', function () {
		const horizontalSwiper = new Swiper('.mySwiper', {
			slidesPerView: 'auto',
	    	spaceBetween: 40,
	    	loop: true,
	    	speed: 3000,
	    	autoplay: {
	      		delay: 0,
	      		disableOnInteraction: false,
	    	},
		});

		const verticalSwiper = new Swiper('.verticalSwiper', {
		    direction: 'vertical',
	    	slidesPerView: 1,
	    	mousewheel: {
	      		sensitivity: 1,
	    	},
	    	speed: 800,
	    	pagination: {
	      		el: '.swiper-pagination',
	      		clickable: true,
	    	},
	  	});
	});

</script>
   
</body>
<script type="text/javascript" src="../assets/js/main/main.js"></script>
</html>



