package com.app.vo;

import java.sql.Timestamp;
import java.util.Objects;

public class MailVO {
	private Long id;
	private String mailTitle;
	private String mailContents;
	private Timestamp mailSendTime;
	private int mailIsopen;
	private Long sendUserId;
	private Long recieveUserId;
	
	@Override
	public String toString() {
		return "MailVO [id=" + id + ", mailTitle=" + mailTitle + ", mailContents=" + mailContents + ", mailSendTime="
				+ mailSendTime + ", mailIsopen=" + mailIsopen + ", sendUserId=" + sendUserId + ", recieveUserId="
				+ recieveUserId + "]";
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

	public int getMailIsopen() {
		return mailIsopen;
	}

	public void setMailIsopen(int mailIsopen) {
		this.mailIsopen = mailIsopen;
	}

	public Long getSendUserId() {
		return sendUserId;
	}

	public void setSendUserId(Long sendUserId) {
		this.sendUserId = sendUserId;
	}

	public Long getRecieveUserId() {
		return recieveUserId;
	}

	public void setRecieveUserId(Long recieveUserId) {
		this.recieveUserId = recieveUserId;
	}
	
	
	
}
