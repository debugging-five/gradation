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
	private String UpcycleImgName;
	private String UpcycleImgPath;
	
	public UpcycleVO() {;}

	public UpcycleVO(Long id, String upcycleCategory, String upcycleSize, Date upcycleDate, String upcycleAddress,
			Long userId, String upcycleImgName, String upcycleImgPath) {
		super();
		this.id = id;
		this.upcycleCategory = upcycleCategory;
		this.upcycleSize = upcycleSize;
		this.upcycleDate = upcycleDate;
		this.upcycleAddress = upcycleAddress;
		this.userId = userId;
		UpcycleImgName = upcycleImgName;
		UpcycleImgPath = upcycleImgPath;
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

	public String getUpcycleImgName() {
		return UpcycleImgName;
	}

	public void setUpcycleImgName(String upcycleImgName) {
		UpcycleImgName = upcycleImgName;
	}

	public String getUpcycleImgPath() {
		return UpcycleImgPath;
	}

	public void setUpcycleImgPath(String upcycleImgPath) {
		UpcycleImgPath = upcycleImgPath;
	}

	@Override
	public String toString() {
		return "UpcycleVO [id=" + id + ", upcycleCategory=" + upcycleCategory + ", upcycleSize=" + upcycleSize
				+ ", upcycleDate=" + upcycleDate + ", upcycleAddress=" + upcycleAddress + ", userId=" + userId
				+ ", UpcycleImgName=" + UpcycleImgName + ", UpcycleImgPath=" + UpcycleImgPath + "]";
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

	
}
