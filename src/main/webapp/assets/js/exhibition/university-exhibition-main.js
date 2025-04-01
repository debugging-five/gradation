const exhibitionList = document.getElementById('exhibition-list');
const regionFilter = document.getElementById('region-filter');
const statusFilter = document.getElementById('status-filter');
const searchInput = document.getElementById('search-input');
const inquiryButton = document.getElementById("inquiry-button");
const registerButton = document.getElementById("register-button");
const mapWrapper = document.getElementById("map-wrapper");

// 마이페이지 문의하기 페이지로 이동
inquiryButton.addEventListener("click", () => {
	location.href = "../mypage/mypage-service-center-qna-send.mypage";
})

// 대학교 등록 신청 양식 페이지로 이동
registerButton.addEventListener("click", () => {
	location.href = "university-exhibition-form.exhibition";
})

// 대학교 전시회 데이터
const exhibitions = [
  {
    id: 1,
    name: '서울대학교 전시회',
    number: '제 8회 졸업전시회',
    major: '디자인학과',
    date: '2025/02/22 ~ 2025/02/28',
    region: 'seoul',
    status: 'upcoming',
    location: '강원 삼척시 중앙로 346 강원대학교 조형관 1층',
    logo: '../assets/images/exhibition/university-logo-1.png',
    address : '도곡로3길 27',
    url: 'https://multidesign.kangwon.ac.kr/multidesign/2023-school-year.do?mode=view&articleNo=427696&title=2023+%EA%B0%95%EC%9B%90%EB%8C%80%ED%95%99%EA%B5%90+%EC%82%BC%EC%B2%99%EC%BA%A0%ED%8D%BC%EC%8A%A4+%EB%A9%80%ED%8B%B0%EB%94%94%EC%9E%90%EC%9D%B8%ED%95%99%EA%B3%BC+++%EC%A0%9C8%ED%9A%8C+%EC%A1%B8%EC%97%85%EC%A0%84%EC%8B%9C%ED%9A%8C++%E3%80%8AUNLOCK+THE+FUTURE%E3%80%8B'
  },
  {
    id: 2,
    name: '경기대학교 전시',
    number: '제 8회 졸업전시회',
    major: '디자인학과',
    date: '2025/02/22 ~ 2025/02/28',
    region: 'gyeonggi',
    status: 'ongoing',
    location: '강원 삼척시 중앙로 346 강원대학교 조형관 1층',
    logo: '../assets/images/exhibition/university-logo-2.png',
  	url: 'http://artndesign.ewha.ac.kr/artewha/61/subview.do'
  },
  {
    id: 3,
    name: '강원대학교 전시회',
    number: '제 8회 졸업전시회',
    major: '디자인학과',
    date: '2025/02/22 ~ 2025/02/28',
    region: 'gangwon',
    status: 'upcoming',
    location: '서울 강남구 역삼동 123-45',
    logo: '../assets/images/exhibition/university-logo-1.png',
    url: 'https://multidesign.kangwon.ac.kr/multidesign/2023-school-year.do?mode=view&articleNo=427696&title=2023+%EA%B0%95%EC%9B%90%EB%8C%80%ED%95%99%EA%B5%90+%EC%82%BC%EC%B2%99%EC%BA%A0%ED%8D%BC%EC%8A%A4+%EB%A9%80%ED%8B%B0%EB%94%94%EC%9E%90%EC%9D%B8%ED%95%99%EA%B3%BC+++%EC%A0%9C8%ED%9A%8C+%EC%A1%B8%EC%97%85%EC%A0%84%EC%8B%9C%ED%9A%8C++%E3%80%8AUNLOCK+THE+FUTURE%E3%80%8B'
  },
  {
    id: 4,
    name: '인천대학교 전시회',
    number: '제 8회 졸업전시회',
    major: '디자인학과',
    date: '2025/02/22 ~ 2025/02/28',
    region: 'incheon',
    status: 'ongoing',
    location: '서울 인천광역시 중구 10번지',
    logo: '../assets/images/exhibition/university-logo-2.png',
  	url: 'http://artndesign.ewha.ac.kr/artewha/61/subview.do'

  },
  {
    id: 5,
    name: '충남대학교 전시회',
    number: '제 8회 졸업전시회',
    major: '디자인학과',
    date: '2025/02/22 ~ 2025/02/28',
    region: 'chungnam',
    status: 'upcoming',
    location: '충남 천안시 중앙로 123번길',
    logo: '../assets/images/exhibition/university-logo-1.png',
  	url: 'https://multidesign.kangwon.ac.kr/multidesign/2023-school-year.do?mode=view&articleNo=427696&title=2023+%EA%B0%95%EC%9B%90%EB%8C%80%ED%95%99%EA%B5%90+%EC%82%BC%EC%B2%99%EC%BA%A0%ED%8D%BC%EC%8A%A4+%EB%A9%80%ED%8B%B0%EB%94%94%EC%9E%90%EC%9D%B8%ED%95%99%EA%B3%BC+++%EC%A0%9C8%ED%9A%8C+%EC%A1%B8%EC%97%85%EC%A0%84%EC%8B%9C%ED%9A%8C++%E3%80%8AUNLOCK+THE+FUTURE%E3%80%8B'

  },
  {
    id: 6,
    name: '대전대학교 전시회',
    number: '제 8회 졸업전시회',
    major: '디자인학과',
    date: '2025/02/22 ~ 2025/02/28',
    region: 'daejeon',
    status: 'ongoing',
    location: '대전 서구 둔산동 123번지',
    logo: '../assets/images/exhibition/university-logo-2.png',
	url: 'http://artndesign.ewha.ac.kr/artewha/61/subview.do'

  },
];

function filterByRegion(location, selectedRegion) {
  const regions = {
    'seoul': /서울/,
    'gyeonggi': /경기/,
    'gangwon': /강원/,
    'incheon': /인천/,
    'chungnam': /충남/,
    'chungbuk': /충북/,
    'daejeon': /대전/,
    'gyeongbuk': /경북/,
    'gyeongnam': /경남/,
    'daegu': /대구/,
    'busan': /부산/,
    'jeonbuk': /전북/,
    'jeonnam': /전남/,
    'gwangju': /광주/,
    'jeju': /제주/
  };

  return regions[selectedRegion] ? regions[selectedRegion].test(location) : true;
}

function renderExhibitions(exhibitionData) {

  exhibitionList.innerHTML = '';
  
  exhibitionData.forEach(exhibition => {
    const exhibitionItem = document.createElement("div");
    exhibitionItem.classList.add("exhibition-item");
    
    exhibitionItem.innerHTML = `
      <div class="exhibition-wrapper">
        <div class="logo-wrapper">
          <div class="exhibition-logo">
            <img src="${exhibition.logo}" alt="${exhibition.name}"
            	onclick="showExhibitionDetails('${exhibition.logo}')">
          </div>
        </div>

        <div class="exhibition-detail">
          <div class="exhibition-name">
            <h6>${exhibition.name}</h6>
          </div>
          <div class="exhibition-number">
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
          <div class="button-wrapper1">
            <button class="status-button" data-url="${exhibition.url}">
              ${exhibition.status === 'upcoming' ? '진행 예정' : '진행 중'}
            </button>
            <button class="like-button">좋아요<i id="heart-icon" class="fa-regular fa-heart fa-xs"></i></button>
          </div>
        </div>
      </div>
    `;
    exhibitionList.appendChild(exhibitionItem);
  });

  document.querySelectorAll('.status-button').forEach(button => {
    button.addEventListener('click', (event) => {
      const url = event.target.getAttribute('data-url'); // 버튼의 data-url 값 가져오기
      if (url) {
        window.open(url, '_blank');
      } else {
        alert('전시회 사이트 정보가 없습니다.');
      }
    });
  });
}

// 전시회 상세
function showExhibitionDetails(imageSrc) {
  const displayNone = document.getElementById('display-none');
  const mainImage = document.getElementById('main-image');

  // 클릭된 전시회 이미지
  mainImage.src = imageSrc;

  displayNone.style.visibility = 'visible';
}

function closeExhibitionDetails() {
  const displayNone = document.getElementById('display-none');

  displayNone.style.visibility = 'hidden';
}

function filterExhibitions() {
  const selectedRegion = regionFilter.value.toLowerCase(); 
  const selectedStatus = statusFilter.value;
  const searchTerm = searchInput.value.toLowerCase();

  const filteredExhibitions = exhibitions.filter(exhibition => {
    const matchesRegion = selectedRegion ? filterByRegion(exhibition.location, selectedRegion) : true;
    const matchesStatus = selectedStatus ? exhibition.status === selectedStatus : true;
    const matchesSearch = exhibition.name.toLowerCase().includes(searchTerm);

    return matchesRegion && matchesStatus && matchesSearch;
  });

  renderExhibitions(filteredExhibitions);
}

regionFilter.addEventListener('change', filterExhibitions);
statusFilter.addEventListener('change', filterExhibitions);
searchInput.addEventListener('input', filterExhibitions);

renderExhibitions(exhibitions);

const logoWrappers = document.querySelectorAll('.logo-wrapper'); 

const exhibitionImages = [
    {
        images: [
            "../assets/images/exhibition/university-exhibition-1.png",
            "../assets/images/exhibition/university-exhibition-2.png",
            "../assets/images/exhibition/university-exhibition-3.png",
            "../assets/images/exhibition/university-exhibition-4.png"
        ]
    },
    {
        images: [
            "../assets/images/exhibition/university-exhibition-1.png",
            "../assets/images/exhibition/university-exhibition-2.png",
            "../assets/images/exhibition/university-exhibition-3.png",
            "../assets/images/exhibition/university-exhibition-4.png"
        ]
    },
    {
        images: [
            "../assets/images/exhibition/university-exhibition-1.png",
            "../assets/images/exhibition/university-exhibition-2.png",
            "../assets/images/exhibition/university-exhibition-3.png",
            "../assets/images/exhibition/university-exhibition-4.png"
        ]
    },
    {
        images: [
            "../assets/images/exhibition/university-exhibition-1.png",
            "../assets/images/exhibition/university-exhibition-2.png",
            "../assets/images/exhibition/university-exhibition-3.png",
            "../assets/images/exhibition/university-exhibition-4.png"
        ]
    },
    {
        images: [
            "../assets/images/exhibition/university-exhibition-1.png",
            "../assets/images/exhibition/university-exhibition-2.png",
            "../assets/images/exhibition/university-exhibition-3.png",
            "../assets/images/exhibition/university-exhibition-4.png"
        ]
    },
];

let currentIndex = 0; 
let images = []; 

const mainImage = document.getElementById("main-image");
const leftBtn = document.getElementById("chevron-left");
const rightBtn = document.getElementById("chevron-right");

logoWrappers.forEach((wrapper, index) => {
    wrapper.addEventListener('click', function () {
        images = exhibitionImages[index].images;
        currentIndex = 0; // 첫 번째 이미지
        mainImage.src = images[currentIndex]; // 첫 번째 이미지
    });
});

leftBtn.addEventListener("click", () => {
    if (images.length > 0) {
        currentIndex = (currentIndex - 1 + images.length) % images.length; 
        mainImage.src = images[currentIndex];
    }
});

rightBtn.addEventListener("click", () => {
    if (images.length > 0) {
        currentIndex = (currentIndex + 1) % images.length; 
        mainImage.src = images[currentIndex];
    }
});

  exhibitionList.addEventListener("click", function (event) {
    if (event.target.classList.contains("like-button")) {
      event.target.classList.toggle("liked");
    }
 });
