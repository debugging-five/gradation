package com.app.vo;

import java.sql.Date;
import java.util.Objects;

public class GradationExhibitionVO {
	private Long id;
	private String GradationExhibitionTitle;
	private int GradationExhibitionCount;
	private Date GradationExhibitionTime;
	private int GradationExhibitionFee;
	private String GradationExhibitionTel;
	private String GradationExhibitionAddress;
	private Date GradationExhibitionDate;
	
	@Override
	public String toString() {
		return "GradationExhibitionVO [id=" + id + ", GradationExhibitionTitle=" + GradationExhibitionTitle
				+ ", GradationExhibitionCount=" + GradationExhibitionCount + ", GradationExhibitionTime="
				+ GradationExhibitionTime + ", GradationExhibitionFee=" + GradationExhibitionFee
				+ ", GradationExhibitionTel=" + GradationExhibitionTel + ", GradationExhibitionAddress="
				+ GradationExhibitionAddress + ", GradationExhibitionDate=" + GradationExhibitionDate + "]";
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
		return GradationExhibitionTitle;
	}

	public void setGradationExhibitionTitle(String gradationExhibitionTitle) {
		GradationExhibitionTitle = gradationExhibitionTitle;
	}

	public int getGradationExhibitionCount() {
		return GradationExhibitionCount;
	}

	public void setGradationExhibitionCount(int gradationExhibitionCount) {
		GradationExhibitionCount = gradationExhibitionCount;
	}

	public Date getGradationExhibitionTime() {
		return GradationExhibitionTime;
	}

	public void setGradationExhibitionTime(Date gradationExhibitionTime) {
		GradationExhibitionTime = gradationExhibitionTime;
	}

	public int getGradationExhibitionFee() {
		return GradationExhibitionFee;
	}

	public void setGradationExhibitionFee(int gradationExhibitionFee) {
		GradationExhibitionFee = gradationExhibitionFee;
	}

	public String getGradationExhibitionTel() {
		return GradationExhibitionTel;
	}

	public void setGradationExhibitionTel(String gradationExhibitionTel) {
		GradationExhibitionTel = gradationExhibitionTel;
	}

	public String getGradationExhibitionAddress() {
		return GradationExhibitionAddress;
	}

	public void setGradationExhibitionAddress(String gradationExhibitionAddress) {
		GradationExhibitionAddress = gradationExhibitionAddress;
	}

	public Date getGradationExhibitionDate() {
		return GradationExhibitionDate;
	}

	public void setGradationExhibitionDate(Date gradationExhibitionDate) {
		GradationExhibitionDate = gradationExhibitionDate;
	}
}
