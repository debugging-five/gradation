package com.app.vo;

import java.sql.Date;
import java.util.Objects;

public class ReplyVO {
	private Long id;
	private Long artPostId;
	private Long userId;
	private String replyContents;
	private Date replyDate;
	
	@Override
	public String toString() {
		return "ReplyVO [id=" + id + ", artPostId=" + artPostId + ", userId=" + userId + ", replyContents="
				+ replyContents + ", replyDate=" + replyDate + "]";
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
		ReplyVO other = (ReplyVO) obj;
		return Objects.equals(id, other.id);
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Long getArtPostId() {
		return artPostId;
	}

	public void setArtPostId(Long artPostId) {
		this.artPostId = artPostId;
	}

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public String getReplyContents() {
		return replyContents;
	}

	public void setReplyContents(String replyContents) {
		this.replyContents = replyContents;
	}

	public Date getReplyDate() {
		return replyDate;
	}

	public void setReplyDate(Date replyDate) {
		this.replyDate = replyDate;
	}
	
}
