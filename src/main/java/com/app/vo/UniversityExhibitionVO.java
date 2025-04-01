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
	private String universityExhibitionStatus;
	
	public UniversityExhibitionVO() {;}

	public UniversityExhibitionVO(Long id, Date universityExhibitionDate, String universityExhibitionState,
			String universityExhibitionTitle, String universityExhibitionLocation, Long majorId,
			String universityExhibitionStatus) {
		this.id = id;
		this.universityExhibitionDate = universityExhibitionDate;
		this.universityExhibitionState = universityExhibitionState;
		this.universityExhibitionTitle = universityExhibitionTitle;
		this.universityExhibitionLocation = universityExhibitionLocation;
		this.majorId = majorId;
		this.universityExhibitionStatus = universityExhibitionStatus;
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

	public String getUniversityExhibitionStatus() {
		return universityExhibitionStatus;
	}

	public void setUniversityExhibitionStatus(String universityExhibitionStatus) {
		this.universityExhibitionStatus = universityExhibitionStatus;
	}

	@Override
	public String toString() {
		return "UniversityExhibitionVO [id=" + id + ", universityExhibitionDate=" + universityExhibitionDate
				+ ", universityExhibitionState=" + universityExhibitionState + ", universityExhibitionTitle="
				+ universityExhibitionTitle + ", universityExhibitionLocation=" + universityExhibitionLocation
				+ ", majorId=" + majorId + ", universityExhibitionStatus=" + universityExhibitionStatus + "]";
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
	
}
