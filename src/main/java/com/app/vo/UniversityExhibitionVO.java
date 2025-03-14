package com.app.vo;

import java.sql.Date;
import java.util.Objects;

public class UniversityExhibitionVO {
	private Long id;
	private Date universityExhibitionDate;
	private String universityExhibitionState;
	private String universityExhibitionTitle;
	private String universityExhibitionLocation;
	private Long majorId;
	
	@Override
	public String toString() {
		return "UniversityExhibitionVO [id=" + id + ", universityExhibitionDate=" + universityExhibitionDate
				+ ", universityExhibitionState=" + universityExhibitionState + ", universityExhibitionTitle="
				+ universityExhibitionTitle + ", universityExhibitionLocation=" + universityExhibitionLocation
				+ ", majorId=" + majorId + "]";
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
		UniversityExhibitionVO other = (UniversityExhibitionVO) obj;
		return Objects.equals(id, other.id);
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public Date getUniversityExhibitionDate() {
		return universityExhibitionDate;
	}
	public void setUniversityExhibitionDate(Date universityExhibitionDate) {
		this.universityExhibitionDate = universityExhibitionDate;
	}
	public String getUniversityExhibitionState() {
		return universityExhibitionState;
	}
	public void setUniversityExhibitionState(String universityExhibitionState) {
		this.universityExhibitionState = universityExhibitionState;
	}
	public String getUniversityExhibitionTitle() {
		return universityExhibitionTitle;
	}
	public void setUniversityExhibitionTitle(String universityExhibitionTitle) {
		this.universityExhibitionTitle = universityExhibitionTitle;
	}
	public String getUniversityExhibitionLocation() {
		return universityExhibitionLocation;
	}
	public void setUniversityExhibitionLocation(String universityExhibitionLocation) {
		this.universityExhibitionLocation = universityExhibitionLocation;
	}
	public Long getMajorId() {
		return majorId;
	}
	public void setMajorId(Long majorId) {
		this.majorId = majorId;
	}
	
	
}
