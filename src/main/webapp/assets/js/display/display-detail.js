
// 좋아요 버튼
document.addEventListener("DOMContentLoaded", function() {
    let likeBtn = document.getElementById("likeBtn");

    likeBtn.addEventListener("click", function() {
        this.classList.toggle("liked");
    });
});





// 댓글 좋아요
function toggleCommentLike(element) {
    let likeCount = element.querySelector(".comment-like-count");
    let currentCount = parseInt(likeCount.textContent);
    
    if (element.classList.contains("liked")) {
        likeCount.textContent = currentCount - 1; // 숫자 감소
        element.classList.remove("liked");
    } else {
        likeCount.textContent = currentCount + 1; // 숫자 증가
        element.classList.add("liked");
    }
}



