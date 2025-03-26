package com.app.vo;

import java.util.Objects;

public class ExhibitionPastArtVO {
	private Long id;
	private Long gradationExhibitionId;
	private Long artId;
	
	public ExhibitionPastArtVO() {;}

	public ExhibitionPastArtVO(Long id, Long gradationExhibitionId, Long artId) {
		this.id = id;
		this.gradationExhibitionId = gradationExhibitionId;
		this.artId = artId;
	}

	@Override
	public String toString() {
		return "ExhibitionPastArtVO [id=" + id + ", gradationExhibitionId=" + gradationExhibitionId + ", artId=" + artId
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
		ExhibitionPastArtVO other = (ExhibitionPastArtVO) obj;
		return Objects.equals(id, other.id);
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Long getGradationExhibitionId() {
		return gradationExhibitionId;
	}

	public void setGradationExhibitionId(Long gradationExhibitionId) {
		this.gradationExhibitionId = gradationExhibitionId;
	}

	public Long getArtId() {
		return artId;
	}

	public void setArtId(Long artId) {
		this.artId = artId;
	}
}
