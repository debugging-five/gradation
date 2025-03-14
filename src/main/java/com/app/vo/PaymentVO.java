package com.app.vo;

import java.sql.Timestamp;
import java.util.Objects;

public class PaymentVO {
	private Long id;
	private Long auctionId;
	private String paymentMethod;
	private int paymentAmount;
	private Timestamp paymentDate;
	private String paymentCode;
	
	public PaymentVO() {;}
	
	public PaymentVO(Long id, Long auctionId, String paymentMethod, int paymentAmount, Timestamp paymentDate,
			String paymentCode) {
		this.id = id;
		this.auctionId = auctionId;
		this.paymentMethod = paymentMethod;
		this.paymentAmount = paymentAmount;
		this.paymentDate = paymentDate;
		this.paymentCode = paymentCode;
	}

	@Override
	public String toString() {
		return "PaymentVO [id=" + id + ", auctionId=" + auctionId + ", paymentMethod=" + paymentMethod
				+ ", paymentAmount=" + paymentAmount + ", paymentDate=" + paymentDate + ", paymentCode=" + paymentCode
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
		PaymentVO other = (PaymentVO) obj;
		return Objects.equals(id, other.id);
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Long getAuctionId() {
		return auctionId;
	}

	public void setAuctionId(Long auctionId) {
		this.auctionId = auctionId;
	}

	public String getPaymentMethod() {
		return paymentMethod;
	}

	public void setPaymentMethod(String paymentMethod) {
		this.paymentMethod = paymentMethod;
	}

	public int getPaymentAmount() {
		return paymentAmount;
	}

	public void setPaymentAmount(int paymentAmount) {
		this.paymentAmount = paymentAmount;
	}

	public Timestamp getPaymentDate() {
		return paymentDate;
	}

	public void setPaymentDate(Timestamp paymentDate) {
		this.paymentDate = paymentDate;
	}

	public String getPaymentCode() {
		return paymentCode;
	}

	public void setPaymentCode(String paymentCode) {
		this.paymentCode = paymentCode;
	}
}
