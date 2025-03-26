package com.app.vo;

import java.util.Objects;

public class UniversityVO {
   private Long id; // Pk
   private String universityName;
   private String universityLocation;
   private String universityLogoImgName;
   private String universityLogoImgPath;
   private String universityHomepage;
   
   public UniversityVO() {;}

	public UniversityVO(Long id, String universityName, String universityLocation, String universityLogoImgName,
			String universityLogoImgPath, String universityHomepage) {
		this.id = id;
		this.universityName = universityName;
		this.universityLocation = universityLocation;
		this.universityLogoImgName = universityLogoImgName;
		this.universityLogoImgPath = universityLogoImgPath;
		this.universityHomepage = universityHomepage;
	}

	@Override
	public String toString() {
		return "UniversityVO [id=" + id + ", universityName=" + universityName + ", universityLocation="
				+ universityLocation + ", universityLogoImgName=" + universityLogoImgName + ", universityLogoImgPath="
				+ universityLogoImgPath + ", universityHomepage=" + universityHomepage + "]";
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
		UniversityVO other = (UniversityVO) obj;
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
}
