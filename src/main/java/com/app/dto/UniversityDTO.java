package com.app.dto;

import java.sql.Date;
import java.sql.Timestamp;
import java.util.Objects;

public class UniversityDTO {
	
//	UniversityVO
	private Long id; // Pk
	private String universityName;
	private String universityLocation;
	private String universityLogoImgName;
	private String universityLogoImgPath;
	private String universityHomepage;
	
//	UniversityLikeVO
	private Long universityId;
	private Long userId;
	private Timestamp universityLikeTime;
	
//	UniversityExhibitionVO
	private Date universityExhibitionDate;
	private String universityExhibitionState;
	private String universityExhibitionTitle;
	private String universityExhibitionLocation;
	private Long majorId;
	
//	UniversityExhibitionImgVO
	private String universityExhibitionImgName;
	private String universityExhibitionImgPath;
	private Long universityExhibitionId;
	
	public UniversityDTO() {;}

	public UniversityDTO(Long id, String universityName, String universityLocation, String universityLogoImgName,
			String universityLogoImgPath, String universityHomepage, Long universityId, Long userId,
			Timestamp universityLikeTime, Date universityExhibitionDate, String universityExhibitionState,
			String universityExhibitionTitle, String universityExhibitionLocation, Long majorId,
			String universityExhibitionImgName, String universityExhibitionImgPath, Long universityExhibitionId) {
		this.id = id;
		this.universityName = universityName;
		this.universityLocation = universityLocation;
		this.universityLogoImgName = universityLogoImgName;
		this.universityLogoImgPath = universityLogoImgPath;
		this.universityHomepage = universityHomepage;
		this.universityId = universityId;
		this.userId = userId;
		this.universityLikeTime = universityLikeTime;
		this.universityExhibitionDate = universityExhibitionDate;
		this.universityExhibitionState = universityExhibitionState;
		this.universityExhibitionTitle = universityExhibitionTitle;
		this.universityExhibitionLocation = universityExhibitionLocation;
		this.majorId = majorId;
		this.universityExhibitionImgName = universityExhibitionImgName;
		this.universityExhibitionImgPath = universityExhibitionImgPath;
		this.universityExhibitionId = universityExhibitionId;
	}

	@Override
	public String toString() {
		return "UniversityDTO [id=" + id + ", universityName=" + universityName + ", universityLocation="
				+ universityLocation + ", universityLogoImgName=" + universityLogoImgName + ", universityLogoImgPath="
				+ universityLogoImgPath + ", universityHomepage=" + universityHomepage + ", universityId="
				+ universityId + ", userId=" + userId + ", universityLikeTime=" + universityLikeTime
				+ ", universityExhibitionDate=" + universityExhibitionDate + ", universityExhibitionState="
				+ universityExhibitionState + ", universityExhibitionTitle=" + universityExhibitionTitle
				+ ", universityExhibitionLocation=" + universityExhibitionLocation + ", majorId=" + majorId
				+ ", universityExhibitionImgName=" + universityExhibitionImgName + ", universityExhibitionImgPath="
				+ universityExhibitionImgPath + ", universityExhibitionId=" + universityExhibitionId + "]";
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
		UniversityDTO other = (UniversityDTO) obj;
		return Objects.equals(id, other.id);
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getUniversityName() {
		return universityName;
	}

	public void setUniversityName(String universityName) {
		this.universityName = universityName;
	}

	public String getUniversityLocation() {
		return universityLocation;
	}

	public void setUniversityLocation(String universityLocation) {
		this.universityLocation = universityLocation;
	}

	public String getUniversityLogoImgName() {
		return universityLogoImgName;
	}

	public void setUniversityLogoImgName(String universityLogoImgName) {
		this.universityLogoImgName = universityLogoImgName;
	}

	public String getUniversityLogoImgPath() {
		return universityLogoImgPath;
	}

	public void setUniversityLogoImgPath(String universityLogoImgPath) {
		this.universityLogoImgPath = universityLogoImgPath;
	}

	public String getUniversityHomepage() {
		return universityHomepage;
	}

	public void setUniversityHomepage(String universityHomepage) {
		this.universityHomepage = universityHomepage;
	}

	public Long getUniversityId() {
		return universityId;
	}

	public void setUniversityId(Long universityId) {
		this.universityId = universityId;
	}

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public Timestamp getUniversityLikeTime() {
		return universityLikeTime;
	}

	public void setUniversityLikeTime(Timestamp universityLikeTime) {
		this.universityLikeTime = universityLikeTime;
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
	
}
