package com.app.vo;

import java.sql.Date;
import java.util.Objects;

public class GradationExhibitionVO {
	private Long id;
	private String gradationExhibitionTitle;
	private int gradationExhibitionCount;
	private Date gradationExhibitionTime;
	private int gradationExhibitionFee;
	private String gradationExhibitionTel;
	private String gradationExhibitionAddress;
	private Date gradationExhibitionDate;
	private String gradationExhibitionAddressImgName;
	private String gradationExhibitionAddressImgPath;
	
	public GradationExhibitionVO() {;}

	public GradationExhibitionVO(Long id, String gradationExhibitionTitle, int gradationExhibitionCount,
			Date gradationExhibitionTime, int gradationExhibitionFee, String gradationExhibitionTel,
			String gradationExhibitionAddress, Date gradationExhibitionDate, String gradationExhibitionAddressImgName,
			String gradationExhibitionAddressImgPath) {
		this.id = id;
		this.gradationExhibitionTitle = gradationExhibitionTitle;
		this.gradationExhibitionCount = gradationExhibitionCount;
		this.gradationExhibitionTime = gradationExhibitionTime;
		this.gradationExhibitionFee = gradationExhibitionFee;
		this.gradationExhibitionTel = gradationExhibitionTel;
		this.gradationExhibitionAddress = gradationExhibitionAddress;
		this.gradationExhibitionDate = gradationExhibitionDate;
		this.gradationExhibitionAddressImgName = gradationExhibitionAddressImgName;
		this.gradationExhibitionAddressImgPath = gradationExhibitionAddressImgPath;
	}

	@Override
	public String toString() {
		return "GradationExhibitionVO [id=" + id + ", gradationExhibitionTitle=" + gradationExhibitionTitle
				+ ", gradationExhibitionCount=" + gradationExhibitionCount + ", gradationExhibitionTime="
				+ gradationExhibitionTime + ", gradationExhibitionFee=" + gradationExhibitionFee
				+ ", gradationExhibitionTel=" + gradationExhibitionTel + ", gradationExhibitionAddress="
				+ gradationExhibitionAddress + ", gradationExhibitionDate=" + gradationExhibitionDate
				+ ", gradationExhibitionAddressImgName=" + gradationExhibitionAddressImgName
				+ ", gradationExhibitionAddressImgPath=" + gradationExhibitionAddressImgPath + "]";
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
		GradationExhibitionVO other = (GradationExhibitionVO) obj;
		return Objects.equals(id, other.id);
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getGradationExhibitionTitle() {
		return gradationExhibitionTitle;
	}

	public void setGradationExhibitionTitle(String gradationExhibitionTitle) {
		this.gradationExhibitionTitle = gradationExhibitionTitle;
	}

	public int getGradationExhibitionCount() {
		return gradationExhibitionCount;
	}

	public void setGradationExhibitionCount(int gradationExhibitionCount) {
		this.gradationExhibitionCount = gradationExhibitionCount;
	}

	public Date getGradationExhibitionTime() {
		return gradationExhibitionTime;
	}

	public void setGradationExhibitionTime(Date gradationExhibitionTime) {
		this.gradationExhibitionTime = gradationExhibitionTime;
	}

	public int getGradationExhibitionFee() {
		return gradationExhibitionFee;
	}

	public void setGradationExhibitionFee(int gradationExhibitionFee) {
		this.gradationExhibitionFee = gradationExhibitionFee;
	}

	public String getGradationExhibitionTel() {
		return gradationExhibitionTel;
	}

	public void setGradationExhibitionTel(String gradationExhibitionTel) {
		this.gradationExhibitionTel = gradationExhibitionTel;
	}

	public String getGradationExhibitionAddress() {
		return gradationExhibitionAddress;
	}

	public void setGradationExhibitionAddress(String gradationExhibitionAddress) {
		this.gradationExhibitionAddress = gradationExhibitionAddress;
	}

	public Date getGradationExhibitionDate() {
		return gradationExhibitionDate;
	}

	public void setGradationExhibitionDate(Date gradationExhibitionDate) {
		this.gradationExhibitionDate = gradationExhibitionDate;
	}

	public String getGradationExhibitionAddressImgName() {
		return gradationExhibitionAddressImgName;
	}

	public void setGradationExhibitionAddressImgName(String gradationExhibitionAddressImgName) {
		this.gradationExhibitionAddressImgName = gradationExhibitionAddressImgName;
	}

	public String getGradationExhibitionAddressImgPath() {
		return gradationExhibitionAddressImgPath;
	}

	public void setGradationExhibitionAddressImgPath(String gradationExhibitionAddressImgPath) {
		this.gradationExhibitionAddressImgPath = gradationExhibitionAddressImgPath;
	}
}
