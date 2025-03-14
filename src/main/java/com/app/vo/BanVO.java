package com.app.vo;

import java.sql.Timestamp;
import java.util.Objects;

public class BanVO {
	private Long id;
	private String banReason;
	private Timestamp banDate;
	private Long userId;
	
	public BanVO() {;}
	
	public BanVO(Long id, String banReason, Timestamp banDate, Long userId) {
		this.id = id;
		this.banReason = banReason;
		this.banDate = banDate;
		this.userId = userId;
	}

	@Override
	public String toString() {
		return "BanVO [id=" + id + ", banReason=" + banReason + ", banDate=" + banDate + ", userId=" + userId + "]";
	}

	@Override
	public int hashCode() {
		return Objects.hash(banDate);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		BanVO other = (BanVO) obj;
		return Objects.equals(banDate, other.banDate);
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getBanReason() {
		return banReason;
	}

	public void setBanReason(String banReason) {
		this.banReason = banReason;
	}

	public Timestamp getBanDate() {
		return banDate;
	}

	public void setBanDate(Timestamp banDate) {
		this.banDate = banDate;
	}

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}
	
	
}
