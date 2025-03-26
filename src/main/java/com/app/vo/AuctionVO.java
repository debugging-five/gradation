package com.app.vo;

import java.sql.Date;
import java.util.Objects;

public class AuctionVO {
	private Long id; // pk
	private Long artId; // 작품 테이블 id 참조키
	private Long userId; // 유저 테이블 id 참조키
	private Date auctionStartDate; // 경매 시작 시간
	private Long auctionStartPrice; // 시작가
	private Long auctionEstimatedPrice; // 추정가
	private int auctionAttracted; // 본 필드는 경매낙찰여부 입니다. 0유찰 1낙찰
	private Long auctionBidPrice; // 낙찰가
	private Date auctionBidDate; // 경매 종료일
	
	public AuctionVO() {;}

	public AuctionVO(Long id, Long artId, Long userId, Date auctionStartDate, Long auctionStartPrice,
			Long auctionEstimatedPrice, int auctionAttracted, Long auctionBidPrice, Date auctionBidDate) {
		this.id = id;
		this.artId = artId;
		this.userId = userId;
		this.auctionStartDate = auctionStartDate;
		this.auctionStartPrice = auctionStartPrice;
		this.auctionEstimatedPrice = auctionEstimatedPrice;
		this.auctionAttracted = auctionAttracted;
		this.auctionBidPrice = auctionBidPrice;
		this.auctionBidDate = auctionBidDate;
	}

	@Override
	public String toString() {
		return "AuctionVO [id=" + id + ", artId=" + artId + ", userId=" + userId + ", auctionStartDate="
				+ auctionStartDate + ", auctionStartPrice=" + auctionStartPrice + ", auctionEstimatedPrice="
				+ auctionEstimatedPrice + ", auctionAttracted=" + auctionAttracted + ", auctionBidPrice="
				+ auctionBidPrice + ", auctionBidDate=" + auctionBidDate + "]";
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
		AuctionVO other = (AuctionVO) obj;
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

	public Date getAuctionStartDate() {
		return auctionStartDate;
	}

	public void setAuctionStartDate(Date auctionStartDate) {
		this.auctionStartDate = auctionStartDate;
	}

	public Long getAuctionStartPrice() {
		return auctionStartPrice;
	}

	public void setAuctionStartPrice(Long auctionStartPrice) {
		this.auctionStartPrice = auctionStartPrice;
	}

	public Long getAuctionEstimatedPrice() {
		return auctionEstimatedPrice;
	}

	public void setAuctionEstimatedPrice(Long auctionEstimatedPrice) {
		this.auctionEstimatedPrice = auctionEstimatedPrice;
	}

	public int getAuctionAttracted() {
		return auctionAttracted;
	}

	public void setAuctionAttracted(int auctionAttracted) {
		this.auctionAttracted = auctionAttracted;
	}

	public Long getAuctionBidPrice() {
		return auctionBidPrice;
	}

	public void setAuctionBidPrice(Long auctionBidPrice) {
		this.auctionBidPrice = auctionBidPrice;
	}

	public Date getAuctionBidDate() {
		return auctionBidDate;
	}

	public void setAuctionBidDate(Date auctionBidDate) {
		this.auctionBidDate = auctionBidDate;
	}
}
