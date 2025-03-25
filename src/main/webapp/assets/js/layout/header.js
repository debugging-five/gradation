var didScroll; /* 스크롤 감지 */
var lastScrollTop = 0; /* 마지막 스크롤 위치 저장 */
var delta = 5; /* 스크롤 감지 최소 간격 */
var navbarHeight = $('header').outerHeight();
const bell = document.querySelector('.header-bell');

/* 스크롤 감지함 */
$(window).scroll(function(event){
    didScroll = true;
});

setInterval(function() {
    if (didScroll) {
        hasScrolled();
        didScroll = false;
    }
}, 250);

function hasScrolled() {
	var st = $(this).scrollTop();
    
    if(Math.abs(lastScrollTop - st) <= delta)
        return;
    
    if (st > lastScrollTop && st > navbarHeight){
        $('header').removeClass('nav-down').addClass('nav-up');
    } else {
        if(st + $(window).height() < $(document).height()) {
            $('header').removeClass('nav-up').addClass('nav-down');
        }
    }
    
    lastScrollTop = st;
}


bell.addEventListener("click", () => {
    location.href = 'mypage-post-list.mypage';
});










