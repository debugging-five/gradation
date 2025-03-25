function showCustomAlert() {
  const answer = document.querySelector('textarea[name="answer"]').value.trim();
  if (!answer) {
    alert("답변 내용을 입력해주세요.");
    return;
  }
  document.getElementById("alertOverlay").style.display = "flex";
}

function confirmSubmit() {
  document.getElementById("alertOverlay").style.display = "none";
  document.getElementById("answerForm").submit();
}
