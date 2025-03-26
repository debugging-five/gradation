package com.app.vo;

import java.sql.Timestamp;
import java.util.Objects;

public class MailVO {
	private Long id;
	private String mailTitle;
	private String mailContents;
	private Timestamp mailSendTime;
	private int mailOpenOk;
	private Long sendUserId;
	private Long receiveUserId;
	
	public MailVO() {;}

	public MailVO(Long id, String mailTitle, String mailContents, Timestamp mailSendTime, int mailOpenOk,
			Long sendUserId, Long receiveUserId) {
		super();
		this.id = id;
		this.mailTitle = mailTitle;
		this.mailContents = mailContents;
		this.mailSendTime = mailSendTime;
		this.mailOpenOk = mailOpenOk;
		this.sendUserId = sendUserId;
		this.receiveUserId = receiveUserId;
	}

	@Override
	public String toString() {
		return "MailVO [id=" + id + ", mailTitle=" + mailTitle + ", mailContents=" + mailContents + ", mailSendTime="
				+ mailSendTime + ", mailOpenOk=" + mailOpenOk + ", sendUserId=" + sendUserId + ", receiveUserId="
				+ receiveUserId + "]";
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
		MailVO other = (MailVO) obj;
		return Objects.equals(id, other.id);
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getMailTitle() {
		return mailTitle;
	}

	public void setMailTitle(String mailTitle) {
		this.mailTitle = mailTitle;
	}

	public String getMailContents() {
		return mailContents;
	}

	public void setMailContents(String mailContents) {
		this.mailContents = mailContents;
	}

	public Timestamp getMailSendTime() {
		return mailSendTime;
	}

	public void setMailSendTime(Timestamp mailSendTime) {
		this.mailSendTime = mailSendTime;
	}

	public int getMailOpenOk() {
		return mailOpenOk;
	}

	public void setMailOpenOk(int mailOpenOk) {
		this.mailOpenOk = mailOpenOk;
	}

	public Long getSendUserId() {
		return sendUserId;
	}

	public void setSendUserId(Long sendUserId) {
		this.sendUserId = sendUserId;
	}

	public Long getReceiveUserId() {
		return receiveUserId;
	}

	public void setReceiveUserId(Long receiveUserId) {
		this.receiveUserId = receiveUserId;
	}
}
