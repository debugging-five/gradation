package com.app.vo;

import java.sql.Date;
import java.util.Objects;

public class ArtVO {
	private Long id;
	private String artTitle;
	private String artCategory;
	private String artMaterial;
	private String artSize;
	private String artDescription;
	private Date artDate;
	private Date artStartDate;
	private Date artEndDate;
	private Long userId;

	public ArtVO() {;}

	public ArtVO(Long id, String artTitle, String artCategory, String artMaterial, String artSize,
			String artDescription, Date artDate, Date artStartDate, Date artEndDate, Long userId) {
		super();
		this.id = id;
		this.artTitle = artTitle;
		this.artCategory = artCategory;
		this.artMaterial = artMaterial;
		this.artSize = artSize;
		this.artDescription = artDescription;
		this.artDate = artDate;
		this.artStartDate = artStartDate;
		this.artEndDate = artEndDate;
		this.userId = userId;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getArtTitle() {
		return artTitle;
	}

	public void setArtTitle(String artTitle) {
		this.artTitle = artTitle;
	}

	public String getArtCategory() {
		return artCategory;
	}

	public void setArtCategory(String artCategory) {
		this.artCategory = artCategory;
	}

	public String getArtMaterial() {
		return artMaterial;
	}

	public void setArtMaterial(String artMaterial) {
		this.artMaterial = artMaterial;
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

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	@Override
	public String toString() {
		return "ArtVO [id=" + id + ", artTitle=" + artTitle + ", artCategory=" + artCategory + ", artMaterial="
				+ artMaterial + ", artSize=" + artSize + ", artDescription=" + artDescription + ", artDate=" + artDate
				+ ", artStartDate=" + artStartDate + ", artEndDate=" + artEndDate + ", userId=" + userId + "]";
	}

	@Override
	public int hashCode() {
		return Objects.hash(artCategory, artDate, artDescription, artEndDate, artMaterial, artSize, artStartDate,
				artTitle, id, userId);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		ArtVO other = (ArtVO) obj;
		return Objects.equals(artCategory, other.artCategory) && Objects.equals(artDate, other.artDate)
				&& Objects.equals(artDescription, other.artDescription) && Objects.equals(artEndDate, other.artEndDate)
				&& Objects.equals(artMaterial, other.artMaterial) && Objects.equals(artSize, other.artSize)
				&& Objects.equals(artStartDate, other.artStartDate) && Objects.equals(artTitle, other.artTitle)
				&& Objects.equals(id, other.id) && Objects.equals(userId, other.userId);
	}
	
	
}
