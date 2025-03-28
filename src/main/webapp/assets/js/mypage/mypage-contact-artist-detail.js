const listButton = document.getElementById("list-button");
const deleteButton = document.getElementById("delete-button");
const modifyButton = document.getElementById("modify-button");

/* 내 활동 / 작가와 연락 리스트 페이지로 이동 */
listButton.addEventListener("click", () => {
	location.href = "mypage-contact-artist-list.mypage";
});

function editMode() {
    // 쪽지 내용만 수정 가능
    document.getElementById('contact-content').style.display = 'none';  // 기존 내용 숨김
    document.getElementById('edit-fields').style.display = 'block';    // 수정 입력 필드 보이기
    document.getElementById('modify-button').style.display = 'none';   // 수정 버튼 숨김
    document.getElementById('delete-button').style.display = 'none';   // 삭제 버튼 숨김
    document.getElementById('list-button').style.display = 'none';     // 목록 버튼 숨김
}

function cancelEdit() {
    // 수정 취소
    document.getElementById('edit-fields').style.display = 'none';     // 수정 입력 필드 숨김
    document.getElementById('contact-content').style.display = 'block'; // 기존 내용 보이기
    document.getElementById('modify-button').style.display = 'inline'; // 수정 버튼 보이기
    document.getElementById('delete-button').style.display = 'inline'; // 삭제 버튼 보이기
    document.getElementById('list-button').style.display = 'inline';   // 목록 버튼 보이기
}

function saveEdit() {
    // 수정된 내용 저장
    var content = document.getElementById('content-input').value;
    
    // 수정된 내용 반영
    document.getElementById('content-text').textContent = content;
    
    // 수정 상태 종료 후 원래 상태로 돌아가기
    cancelEdit();
}
