package com.app.vo;

import java.sql.Date;
import java.util.Objects;

public class UpcycleVO {
	private Long id;
	private String upcycleCategory;
	private String upcycleSize;
	private Date upcycleDate;
	private String upcycleAddress;
	private Long userId;
	
	@Override
	public String toString() {
		return "UpcycleVO [id=" + id + ", upcycleCategory=" + upcycleCategory + ", upcycleSize=" + upcycleSize
				+ ", upcycleDate=" + upcycleDate + ", upcycleAddress=" + upcycleAddress + ", userId=" + userId + "]";
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
		UpcycleVO other = (UpcycleVO) obj;
		return Objects.equals(id, other.id);
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getUpcycleCategory() {
		return upcycleCategory;
	}

	public void setUpcycleCategory(String upcycleCategory) {
		this.upcycleCategory = upcycleCategory;
	}

	public String getUpcycleSize() {
		return upcycleSize;
	}

	public void setUpcycleSize(String upcycleSize) {
		this.upcycleSize = upcycleSize;
	}

	public Date getUpcycleDate() {
		return upcycleDate;
	}

	public void setUpcycleDate(Date upcycleDate) {
		this.upcycleDate = upcycleDate;
	}

	public String getUpcycleAddress() {
		return upcycleAddress;
	}

	public void setUpcycleAddress(String upcycleAddress) {
		this.upcycleAddress = upcycleAddress;
	}

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}
	
	
}
