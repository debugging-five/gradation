package com.app.vo;

import java.sql.Timestamp;
import java.util.Objects;

public class UniversityLikeVO {
	private Long id;
	private Long universityId;
	private Long userId;
	private Timestamp universityLikeTime;
	
	@Override
	public String toString() {
		return "UniversityLikeVO [id=" + id + ", universityId=" + universityId + ", userId=" + userId
				+ ", universityLikeTime=" + universityLikeTime + "]";
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
		UniversityLikeVO other = (UniversityLikeVO) obj;
		return Objects.equals(id, other.id);
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
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
	
}
