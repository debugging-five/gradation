package com.app.vo;

import java.util.Objects;

public class ArtImgVO {
	private Long id;
	private String artImgName;
	private String artImgPath;
	private Long artId;
	
	public ArtImgVO() {;}
	
	public ArtImgVO(Long id, String artImgName, String artImgPath, Long artId) {
		this.id = id;
		this.artImgName = artImgName;
		this.artImgPath = artImgPath;
		this.artId = artId;
	}

	@Override
	public String toString() {
		return "ArtImgVO [id=" + id + ", artImgName=" + artImgName + ", artImgPath=" + artImgPath + ", artId=" + artId
				+ "]";
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
		ArtImgVO other = (ArtImgVO) obj;
		return Objects.equals(id, other.id);
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
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

	public Long getArtId() {
		return artId;
	}

	public void setArtId(Long artId) {
		this.artId = artId;
	}
	
}
