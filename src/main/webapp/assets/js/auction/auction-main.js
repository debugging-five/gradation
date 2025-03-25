/**
 * 
 */
function toggleSortDropdown() {
	const dropdown = document.getElementById("sortDropdown");
	dropdown.style.display = dropdown.style.display === "flex" ? "none" : "flex";
}

function sortGallery(type) {
	const columns = document.querySelectorAll(".gallery-column");

	columns.forEach(column => {
		const images = Array.from(column.querySelectorAll(".gallery-image"));

		images.sort((a, b) => {
			if (type === "name-asc") {
				return a.alt.localeCompare(b.alt);
			} else if (type === "name-desc") {
				return b.alt.localeCompare(a.alt);
			} else if (type === "date") {
				const dateA = a.dataset.date || "2000-01-01";
				const dateB = b.dataset.date || "2000-01-01";
				return new Date(dateA) - new Date(dateB);
			}
		});

		images.forEach(img => column.appendChild(img));
	});
	
	// 정렬 후 드롭다운 닫기
	document.getElementById("sortDropdown").style.display = "none";
}

// 외부 클릭 시 드롭다운 닫기
document.addEventListener("click", function (e) {
	const dropdown = document.getElementById("sortDropdown");
	const sortIcon = document.querySelector(".sort-icon");
	
	if (!dropdown.contains(e.target) && e.target !== sortIcon) {
		dropdown.style.display = "none";
	}
});