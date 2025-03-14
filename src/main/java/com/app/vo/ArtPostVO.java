package com.app.vo;

import java.sql.Timestamp;
import java.util.Objects;

public class ArtPostVO {
	private Long id;
	private Timestamp artPostDate;
	private Long userId;
	private Long artId;
	
	@Override
	public String toString() {
		return "ArtPostVO [id=" + id + ", artPostDate=" + artPostDate + ", userId=" + userId + ", artId=" + artId + "]";
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
		ArtPostVO other = (ArtPostVO) obj;
		return Objects.equals(id, other.id);
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Timestamp getArtPostDate() {
		return artPostDate;
	}

	public void setArtPostDate(Timestamp artPostDate) {
		this.artPostDate = artPostDate;
	}

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public Long getArtId() {
		return artId;
	}

	public void setArtId(Long artId) {
		this.artId = artId;
	}
	
}
