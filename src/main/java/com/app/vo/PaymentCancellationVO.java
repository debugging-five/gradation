package com.app.vo;

import java.util.Objects;

public class PaymentCancellationVO {
	private Long id;
	private String paymentCancellationCode;
	private Long paymentId;
	
	public PaymentCancellationVO() {;}
	
	public PaymentCancellationVO(Long id, String paymentCancellationCode, Long paymentId) {
		this.id = id;
		this.paymentCancellationCode = paymentCancellationCode;
		this.paymentId = paymentId;
	}

	@Override
	public String toString() {
		return "PaymentCancellationVO [id=" + id + ", paymentCancellationCode=" + paymentCancellationCode
				+ ", paymentId=" + paymentId + "]";
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
		PaymentCancellationVO other = (PaymentCancellationVO) obj;
		return Objects.equals(id, other.id);
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getPaymentCancellationCode() {
		return paymentCancellationCode;
	}

	public void setPaymentCancellationCode(String paymentCancellationCode) {
		this.paymentCancellationCode = paymentCancellationCode;
	}

	public Long getPaymentId() {
		return paymentId;
	}

	public void setPaymentId(Long paymentId) {
		this.paymentId = paymentId;
	}
}
