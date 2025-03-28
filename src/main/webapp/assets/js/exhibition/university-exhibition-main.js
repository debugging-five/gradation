const universityLogo = document.getElementById("university-logo1");
const backgroundImage = document.getElementById("display-none");
const likeButtons = document.querySelectorAll(".button-like");
const registerButton = document.querySelector(".button.register");
const inquiryButton = document.querySelector(".button.inquiry");
const exhibitionImage = document.querySelector("#img-wrapper img");
const logo1 = document.getElementById("logo1"); 
const logo2 = document.getElementById("logo2"); 

universityLogo.addEventListener("click", () => {
	backgroundImage.style.display = "block";
});


likeButtons.forEach((likeButton) => {
	likeButton.addEventListener("click", () => {
	likeButton.classList.toggle("liked");
	})
});

/* 클릭했을 때 좋아요 버튼 색상 변경 */
likeButtons.forEach((likeButton) => {
	likeButton.addEventListener("click", () => {
		if (likeButton.style.backgroundColor === "var(--color-primary)") {
            likeButton.style.color = "";
            likeButton.style.backgroundColor = "";
        } else {
            likeButton.style.color = "var(--color-gray100)";
            likeButton.style.backgroundColor = "var(--color-primary)";
        }
    })
});

/* 대학교 등록 신청 페이지로 이동*/
registerButton.addEventListener("click", () => {
	location.href = "university-exhibition-form.exhibition";
});

/* 마이페이지 문의 페이지로 이동*/
inquiryButton.addEventListener("click", () => {
	location.href = "../mypage/mypage-service-center-send-qna.mypage";
});

logo1.addEventListener("click", function () {
    exhibitionImage.src = "../assets/images/exhibition/university-exhibition-1.png";
});

logo2.addEventListener("click", function () {
    exhibitionImage.src = "../assets/images/exhibition/university-exhibition-1.png";
});

    // 이미지 리스트 (추가 가능)
    const images = [
        "../assets/images/exhibition/university-exhibition-1.png",
        "../assets/images/exhibition/university-exhibition-2.png",
        "../assets/images/exhibition/university-exhibition-3.png",
        "../assets/images/exhibition/university-exhibition-4.png"
    ];

    let currentIndex = 0; // 현재 이미지 인덱스
    const mainImage = document.getElementById("main-image");
    const leftBtn = document.getElementById("chevron-left");
    const rightBtn = document.getElementById("chevron-right");

    // 왼쪽 버튼 클릭 이벤트
    leftBtn.addEventListener("click", () => {
        currentIndex = (currentIndex - 1 + images.length) % images.length; // 이전 이미지로 변경
        mainImage.src = images[currentIndex];
    });

    // 오른쪽 버튼 클릭 이벤트
    rightBtn.addEventListener("click", () => {
        currentIndex = (currentIndex + 1) % images.length; // 다음 이미지로 변경
        mainImage.src = images[currentIndex];
    });


//=============================================================
// 전시회 데이터 예시
const exhibitions = [
  {
	  id: 1,
	  name: '서울대학교 전시회',
	  number: '제 8회 졸업전시회',
	  major: '디자인학과',
	  date : '2025/02/22 ~ 2025/02/28',
	  region: 'seoul',
	  status: 'upcoming',
	  description: '서울대학교의 새로운 전시회',
	  location : '강원 삼척시 중앙로 346 강원대학교 조형관 1층',
	  logo : '../assets/images/exhibition/university-logo-3.png'
  },
  {
	  id: 2,
	  name: '경기대학교 전시',
	  number: '제 8회 졸업전시회',
	  major: '디자인학과',
	  date : '2025/02/22 ~ 2025/02/28',
	  region: 'gyeonggi',
	  status: 'ongoing',
	  description: '경기대학교의 진행 중인 전시회',
	  location : '강원 삼척시 중앙로 346 강원대학교 조형관 1층',
	  logo : '../assets/images/exhibition/university-logo-3.png'
  },
  {
	  id: 3,
	  name: '강원대학교 전시회',
	  number: '제 8회 졸업전시회',
	  major: '디자인학과',
	  date : '2025/02/22 ~ 2025/02/28',
	  region: 'gangwon',
	  status: 'upcoming',
	  description: '강원대학교 전시회',
	  location : '강원 삼척시 중앙로 346 강원대학교 조형관 1층',
	  logo : '../assets/images/exhibition/university-logo-3.png'
  },
  {
	  id: 4,
	  name: '인천대학교 전시회',
	  number: '제 8회 졸업전시회',
	  major: '디자인학과',
	  date : '2025/02/22 ~ 2025/02/28',
	  region: 'incheon',
	  status: 'ongoing',
	  description: '인천대학교 전시회',
	  location : '강원 삼척시 중앙로 346 강원대학교 조형관 1층',
	  logo : '../assets/images/exhibition/university-logo-3.png'
  },
];

// 필터링 함수
function filterExhibitions() {
  const region = document.getElementById('regionFilter').value;
  const status = document.getElementById('statusFilter').value;
  const searchQuery = document.getElementById('searchInput').value.toLowerCase();

  const filteredExhibitions = exhibitions.filter(exhibition => {
    // 지역 필터링
    const regionMatch = region ? exhibition.region === region : true;
    // 상태 필터링
    const statusMatch = status ? exhibition.status === status : true;
    // 검색 기능
    const searchMatch = exhibition.name.toLowerCase().includes(searchQuery);

    return regionMatch && statusMatch && searchMatch;
  });

  displayExhibitions(filteredExhibitions);
}

// 전시회 목록 표시 함수
/*
function displayExhibitions(exhibitions) {
  const exhibitionList = document.getElementById('exhibitionList');
  exhibitionList.innerHTML = ''; // 기존 목록 초기화

  exhibitions.forEach(exhibition => {
    const exhibitionItem = document.createElement('div');
    exhibitionItem.classList.add('exhibition-item');
    exhibitionItem.innerHTML = `
      <h3>${exhibition.name}</h3>
      <p>${exhibition.description}</p>
      <button class="like-btn">좋아요</button>
    `;
    exhibitionList.appendChild(exhibitionItem);
  });
}
*/
// 초기 로딩 시 전시회 표시
displayExhibitions(exhibitions);

// 이벤트 리스너 추가 (필터 변경 시마다 필터링 및 재렌더링)
document.getElementById('regionFilter').addEventListener('change', filterExhibitions);
document.getElementById('statusFilter').addEventListener('change', filterExhibitions);
document.getElementById('searchInput').addEventListener('input', filterExhibitions);



function displayExhibitions(exhibitions) {
  const exhibitionList = document.getElementById('exhibitionList');
  exhibitionList.innerHTML = ''; // 기존 목록 초기화

  exhibitions.forEach(exhibition => {
    const exhibitionItem = document.createElement('div');
    exhibitionItem.classList.add('exhibition-item');

    exhibitionItem.innerHTML = `
      <div class="exhibition-card">
      <div class="logo-wrapper">
        <img src="${exhibition.logo}" alt="전시 이미지" class="exhibition-image">
       </div>
       
        <div class="exhibition-info">
	        <div class="exhibition-title">
	        	<h6>${exhibition.name}</h6>
	        </div>
	        <div class="exhibition-description">
	        	<p>${exhibition.number}</p>
	        </div>
	        <div class="exhibition-major">
	          <p>${exhibition.major}</p>        
	        </div>
	        <div class="exhibition-date">
	          <p>${exhibition.date}</p>
	        </div>
	        <div class="exhibition-location">
	          <p>${exhibition.location}</p>
	        </div>
          <div class="exhibition-buttons">
            <button class="status-btn">${exhibition.status === 'upcoming' ? '전시 예정' : '진행 중'}</button>
            <button class="like-btn">좋아요 ♡</button>
        </div>
          </div>
          
 
      </div>
    `;

    exhibitionList.appendChild(exhibitionItem);
  });
}
