package com.app.vo;

import java.util.Objects;

public class UniversityExhibitionImageVO {
	private long id;
	private String universityExhibitionImgName;
	private String universityExhibitionImgPath;
	private long universityExhibitionId;
	
	public UniversityExhibitionImageVO() {;}
	public UniversityExhibitionImageVO(long id, String universityExhibitionImgName, String universityExhibitionImgPath,
			long universityExhibitionId) {
		this.id = id;
		this.universityExhibitionImgName = universityExhibitionImgName;
		this.universityExhibitionImgPath = universityExhibitionImgPath;
		this.universityExhibitionId = universityExhibitionId;
	}
	public long getId() {
		return id;
	}
	public void setId(long id) {
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
	public long getUniversityExhibitionId() {
		return universityExhibitionId;
	}
	public void setUniversityExhibitionId(long universityExhibitionId) {
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
		UniversityExhibitionImageVO other = (UniversityExhibitionImageVO) obj;
		return id == other.id;
	}
}
