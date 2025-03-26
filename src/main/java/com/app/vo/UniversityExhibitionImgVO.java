package com.app.vo;

import java.util.Objects;

public class UniversityExhibitionImgVO {
	private Long id;
	private String universityExhibitionImgName;
	private String universityExhibitionImgPath;
	private Long universityExhibitionId;
	
	public UniversityExhibitionImgVO() {;}

	public UniversityExhibitionImgVO(Long id, String universityExhibitionImgName, String universityExhibitionImgPath,
			Long universityExhibitionId) {
		this.id = id;
		this.universityExhibitionImgName = universityExhibitionImgName;
		this.universityExhibitionImgPath = universityExhibitionImgPath;
		this.universityExhibitionId = universityExhibitionId;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getUniversityExhibitionImgName() {
		return universityExhibitionImgName;
	}

	public void setUniversityExhibitionImgName(String universityExhibitionImgName) {
		this.universityExhibitionImgName = universityExhibitionImgName;
	}

	public String getUniversityExhibitionImgPath() {
		return universityExhibitionImgPath;
	}

	public void setUniversityExhibitionImgPath(String universityExhibitionImgPath) {
		this.universityExhibitionImgPath = universityExhibitionImgPath;
	}

	public Long getUniversityExhibitionId() {
		return universityExhibitionId;
	}

	public void setUniversityExhibitionId(Long universityExhibitionId) {
		this.universityExhibitionId = universityExhibitionId;
	}

	@Override
	public String toString() {
		return "UniversityExhibitionImageVO [id=" + id + ", universityExhibitionImgName=" + universityExhibitionImgName
				+ ", universityExhibitionImgPath=" + universityExhibitionImgPath + ", universityExhibitionId="
				+ universityExhibitionId + "]";
	}

	@Override
	public int hashCode() {
		return Objects.hash(id);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		UniversityExhibitionImgVO other = (UniversityExhibitionImgVO) obj;
		return Objects.equals(id, other.id);
	}
	
	
	
}
