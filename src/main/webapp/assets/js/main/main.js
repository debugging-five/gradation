const text = document.getElementById('main-text-wrap');
const auction = document.getElementById('auction-title');
const art = document.getElementById('art-title');
const upcycling = document.getElementById('upcycling-title');

window.addEventListener('scroll', () => {
   text.classList.add('show');
})

auction.addEventListener('click', () => {
   location.href = "../auction/auction-main.auction";
})
art.addEventListener('click', () => {
   location.href = "../display/display-main-ing.display";
})
upcycling.addEventListener('click', () => {
   location.href = "../upcycling/upcycling-main.upcycling";
})
