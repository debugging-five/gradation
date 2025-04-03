/**
 * 
 */
const answerDiv = document.querySelector("#answer-div");
const answerContent = document.querySelector("#answer-content");
const updateQna = document.querySelector("#update-qna");
const deleteQna = document.querySelector("#delete-qna");

if(answerContent.textContent == "") {
	answerDiv.style.display = "none"
}else {
	updateQna.style.display = "none"
	deleteQna.style.display = "none"
}


