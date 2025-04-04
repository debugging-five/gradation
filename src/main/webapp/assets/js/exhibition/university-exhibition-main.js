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
