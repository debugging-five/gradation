const exhibitionList = document.getElementById('exhibition-list');
const regionFilter = document.getElementById('region-filter');
const statusFilter = document.getElementById('status-filter');
const searchInput = document.getElementById('search-input');
const inquiryButton = document.getElementById("inquiry-button");
const registerButton = document.getElementById("register-button");
const mapWrapper = document.getElementById("map-wrapper");
const likeButtons = document.querySelectorAll(".like-button");
const logoWrapper = document.querySelectorAll(".logo-wrapper");
const displayWrapper = document.getElementById("display-none");
const items = document.querySelectorAll(".exhibition-item");

// display-none
logoWrapper.forEach((logo) => {
	logo.addEventListener("click", () => {
	displayWrapper.style.visibility = "visible";
	})
})

// 좋아요 버튼 토글
likeButtons.forEach((button) => {
  button.addEventListener("click", () => {
    button.classList.toggle("liked");
  });
});

// 마이페이지 문의하기 페이지로 이동
inquiryButton.addEventListener("click", () => {
	location.href = "../mypage/mypage-service-center-qna-send.mypage";
})

// 대학교 등록 신청 양식 페이지로 이동
registerButton.addEventListener("click", () => {
	location.href = "university-exhibition-form.exhibition";
})

// 대학교 전시회 이미지
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

 
// 드롭다운, input 필터링
window.addEventListener("DOMContentLoaded", () => {
	const searchInput = document.getElementById("search-input");
	const regionFilter = document.getElementById("region-filter");
	const statusFilter = document.getElementById("status-filter");
	
	searchInput.addEventListener("input", filterExhibitions);
	regionFilter.addEventListener("change", filterExhibitions);
	statusFilter.addEventListener("change", filterExhibitions);
});

const filterExhibitions = ()  => {
	const searchText = document.getElementById("search-input").value;
	const selectedRegion = document.getElementById("region-filter").value;
	const selectedStatus = document.getElementById("status-filter").value;

	const regionList = {
		seoul : "서울",
		gyeonggi : "경기",
		gangwon : "강원",
		incheon : "인천",
		chungnam : "충남",
		chungbuk : "충북",
		daejeon : "대전",
		gyeongbuk : "경북",
		gyeongnam : "경남",
		daegu : "대구",
		busan : "부산",
		jeonbuk : "전북",
		jeonnam : "전남",
		gwangju : "광주",
		jeju: "제주"
	};

	 const statusList = {
	 	upcoming : "진행 예정",
	   	ongoing : "진행 중"
	 };

	items.forEach(item => {
		const name = item.dataset.name;
		const region = item.dataset.region;
		const status = item.dataset.status;

		const matchName = name.includes(searchText);
		const matchRegion = !selectedRegion || region.includes(regionList[selectedRegion]);
		const matchStatus = !selectedStatus || status.includes(statusList[selectedStatus]);
	
		if (matchName && matchRegion && matchStatus) {
		  item.style.display = "flex";
		} else {
		  item.style.display = "none";
		}
	});
}


