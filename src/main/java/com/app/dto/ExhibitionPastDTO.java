package com.app.dto;

import java.sql.Date;
import java.util.Objects;

public class ExhibitionPastDTO {
//	TBL_GRADATION_EXHOBITION
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

//  TBL_EXHIBITION_PAST_ART
	private Long exhibitionPastArtID;

//	TBL_ART
	private Long artId;
	private String artTitle;
	private String artCategoty;
	private String artMeterial;
	private String artSize;
	private String artDescription;
	private Date artDate;
	private Date artStartDate;
	private Date artEndDate;

//	TBL_ART_IMAGE
	private Long artImgId;
	private String artImgName;
	private String artImgPath;

	public ExhibitionPastDTO(Long id, String gradationExhibitionTitle, int gradationExhibitionCount,
			Date gradationExhibitionTime, int gradationExhibitionFee, String gradationExhibitionTel,
			String gradationExhibitionAddress, Date gradationExhibitionDate, String gradationExhibitionAddressImgName,
			String gradationExhibitionAddressImgPath, Long exhibitionPastArtID, Long artId, String artTitle,
			String artCategoty, String artMeterial, String artSize, String artDescription, Date artDate,
			Date artStartDate, Date artEndDate, Long artImgId, String artImgName, String artImgPath) {
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
		this.exhibitionPastArtID = exhibitionPastArtID;
		this.artId = artId;
		this.artTitle = artTitle;
		this.artCategoty = artCategoty;
		this.artMeterial = artMeterial;
		this.artSize = artSize;
		this.artDescription = artDescription;
		this.artDate = artDate;
		this.artStartDate = artStartDate;
		this.artEndDate = artEndDate;
		this.artImgId = artImgId;
		this.artImgName = artImgName;
		this.artImgPath = artImgPath;
	}

	@Override
	public String toString() {
		return "ExhibitionPastDTO [id=" + id + ", gradationExhibitionTitle=" + gradationExhibitionTitle
				+ ", gradationExhibitionCount=" + gradationExhibitionCount + ", gradationExhibitionTime="
				+ gradationExhibitionTime + ", gradationExhibitionFee=" + gradationExhibitionFee
				+ ", gradationExhibitionTel=" + gradationExhibitionTel + ", gradationExhibitionAddress="
				+ gradationExhibitionAddress + ", gradationExhibitionDate=" + gradationExhibitionDate
				+ ", gradationExhibitionAddressImgName=" + gradationExhibitionAddressImgName
				+ ", gradationExhibitionAddressImgPath=" + gradationExhibitionAddressImgPath + ", exhibitionPastArtID="
				+ exhibitionPastArtID + ", artId=" + artId + ", artTitle=" + artTitle + ", artCategoty=" + artCategoty
				+ ", artMeterial=" + artMeterial + ", artSize=" + artSize + ", artDescription=" + artDescription
				+ ", artDate=" + artDate + ", artStartDate=" + artStartDate + ", artEndDate=" + artEndDate
				+ ", artImgId=" + artImgId + ", artImgName=" + artImgName + ", artImgPath=" + artImgPath + "]";
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

	public Long getExhibitionPastArtID() {
		return exhibitionPastArtID;
	}

	public void setExhibitionPastArtID(Long exhibitionPastArtID) {
		this.exhibitionPastArtID = exhibitionPastArtID;
	}

	public Long getArtId() {
		return artId;
	}

	public void setArtId(Long artId) {
		this.artId = artId;
	}

	public String getArtTitle() {
		return artTitle;
	}

	public void setArtTitle(String artTitle) {
		this.artTitle = artTitle;
	}

	public String getArtCategoty() {
		return artCategoty;
	}

	public void setArtCategoty(String artCategoty) {
		this.artCategoty = artCategoty;
	}

	public String getArtMeterial() {
		return artMeterial;
	}

	public void setArtMeterial(String artMeterial) {
		this.artMeterial = artMeterial;
	}

	public String getArtSize() {
		return artSize;
	}

	public void setArtSize(String artSize) {
		this.artSize = artSize;
	}

	public String getArtDescription() {
		return artDescription;
	}

	public void setArtDescription(String artDescription) {
		this.artDescription = artDescription;
	}

	public Date getArtDate() {
		return artDate;
	}

	public void setArtDate(Date artDate) {
		this.artDate = artDate;
	}

	public Date getArtStartDate() {
		return artStartDate;
	}

	public void setArtStartDate(Date artStartDate) {
		this.artStartDate = artStartDate;
	}

	public Date getArtEndDate() {
		return artEndDate;
	}

	public void setArtEndDate(Date artEndDate) {
		this.artEndDate = artEndDate;
	}

	public Long getArtImgId() {
		return artImgId;
	}

	public void setArtImgId(Long artImgId) {
		this.artImgId = artImgId;
	}

	public String getArtImgName() {
		return artImgName;
	}

	public void setArtImgName(String artImgName) {
		this.artImgName = artImgName;
	}

	public String getArtImgPath() {
		return artImgPath;
	}

	public void setArtImgPath(String artImgPath) {
		this.artImgPath = artImgPath;
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
		ExhibitionPastDTO other = (ExhibitionPastDTO) obj;
		return Objects.equals(id, other.id);
	}

}
