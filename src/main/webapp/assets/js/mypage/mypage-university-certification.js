/**
 * 
 */
const certificationButton = document.querySelector("#certification-button");

document.querySelector("#file").addEventListener("change", function () {
	let fileName = this.value.split("\\").pop();
	document.querySelector(".upload-name").value = fileName;
	certificationButton.type = "submit";
});

certificationButton.addEventListener('click',() => {
	alert("파일을 첨부해 주세요")
})

const query = new URLSearchParams(window.location.search);
if(query.get("certification")) {
	alert("인증신청이 완료되었습니다\n인증까지는 약 24시간이 소요될 수 있습니다");
}