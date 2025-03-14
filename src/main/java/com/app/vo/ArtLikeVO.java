package com.app.vo;

import java.sql.Timestamp;
import java.util.Objects;

public class ArtLikeVO {
	private Long id;
	private Long artId;
	private Long userId;
	private Timestamp artLikeTime;
	@Override
	public String toString() {
		return "ArtLikeVO [id=" + id + ", artId=" + artId + ", userId=" + userId + ", artLikeTime=" + artLikeTime + "]";
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
		ArtLikeVO other = (ArtLikeVO) obj;
		return Objects.equals(id, other.id);
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public Long getArtId() {
		return artId;
	}
	public void setArtId(Long artId) {
		this.artId = artId;
	}
	public Long getUserId() {
		return userId;
	}
	public void setUserId(Long userId) {
		this.userId = userId;
	}
	public Timestamp getArtLikeTime() {
		return artLikeTime;
	}
	public void setArtLikeTime(Timestamp artLikeTime) {
		this.artLikeTime = artLikeTime;
	}
	
}
