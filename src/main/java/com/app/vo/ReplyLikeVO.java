package com.app.vo;

import java.sql.Timestamp;
import java.util.Objects;

public class ReplyLikeVO {
	private Long id;
	private Long replyId;
	private Long userId;
	private Timestamp replyLikeTime;
	
	public ReplyLikeVO() {;}
	
	public ReplyLikeVO(Long id, Long replyId, Long userId, Timestamp replyLikeTime) {
		this.id = id;
		this.replyId = replyId;
		this.userId = userId;
		this.replyLikeTime = replyLikeTime;
	}

	@Override
	public String toString() {
		return "ReplyLikeVO [id=" + id + ", replyId=" + replyId + ", userId=" + userId + ", replyLikeTime="
				+ replyLikeTime + "]";
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
		ReplyLikeVO other = (ReplyLikeVO) obj;
		return Objects.equals(id, other.id);
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Long getReplyId() {
		return replyId;
	}

	public void setReplyId(Long replyId) {
		this.replyId = replyId;
	}

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public Timestamp getReplyLikeTime() {
		return replyLikeTime;
	}

	public void setReplyLikeTime(Timestamp replyLikeTime) {
		this.replyLikeTime = replyLikeTime;
	}
	
}
