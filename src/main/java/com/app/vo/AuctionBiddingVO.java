package com.app.vo;

import java.sql.Timestamp;
import java.util.Objects;

public class AuctionBiddingVO {
	private Long id;
	private int auctionBiddingPrice;
	private boolean auctionBiddingAutoOk;
	private Timestamp auctionBiddingTime;
	private Long auctionId;
	private Long userId;
	
	public AuctionBiddingVO() {;}

	public AuctionBiddingVO(Long id, int auctionBiddingPrice, boolean auctionBiddingAutoOk,
			Timestamp auctionBiddingTime, Long auctionId, Long userId) {
		this.id = id;
		this.auctionBiddingPrice = auctionBiddingPrice;
		this.auctionBiddingAutoOk = auctionBiddingAutoOk;
		this.auctionBiddingTime = auctionBiddingTime;
		this.auctionId = auctionId;
		this.userId = userId;
	}

	@Override
	public String toString() {
		return "AuctionBiddingVO [id=" + id + ", auctionBiddingPrice=" + auctionBiddingPrice + ", auctionBiddingAutoOk="
				+ auctionBiddingAutoOk + ", auctionBiddingTime=" + auctionBiddingTime + ", auctionId=" + auctionId
				+ ", userId=" + userId + "]";
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
		AuctionBiddingVO other = (AuctionBiddingVO) obj;
		return Objects.equals(id, other.id);
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public int getAuctionBiddingPrice() {
		return auctionBiddingPrice;
	}

	public void setAuctionBiddingPrice(int auctionBiddingPrice) {
		this.auctionBiddingPrice = auctionBiddingPrice;
	}

	public boolean isAuctionBiddingAutoOk() {
		return auctionBiddingAutoOk;
	}

	public void setAuctionBiddingAutoOk(boolean auctionBiddingAutoOk) {
		this.auctionBiddingAutoOk = auctionBiddingAutoOk;
	}

	public Timestamp getAuctionBiddingTime() {
		return auctionBiddingTime;
	}

	public void setAuctionBiddingTime(Timestamp auctionBiddingTime) {
		this.auctionBiddingTime = auctionBiddingTime;
	}

	public Long getAuctionId() {
		return auctionId;
	}

	public void setAuctionId(Long auctionId) {
		this.auctionId = auctionId;
	}

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}
}
