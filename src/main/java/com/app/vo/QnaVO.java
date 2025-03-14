package com.app.vo;

import java.sql.Timestamp;
import java.util.Objects;

public class QnaVO {
	private Long id;
	private String qnaTitle;
	private String qnaContent;
	private Timestamp qnaTime;
	private String qnaImgName;
	private String qnaImgPath;
	private Long userId;
	
	public QnaVO() {;}
	
	public QnaVO(Long id, String qnaTitle, String qnaContent, Timestamp qnaTime, String qnaImgName, String qnaImgPath,
			Long userId) {
		this.id = id;
		this.qnaTitle = qnaTitle;
		this.qnaContent = qnaContent;
		this.qnaTime = qnaTime;
		this.qnaImgName = qnaImgName;
		this.qnaImgPath = qnaImgPath;
		this.userId = userId;
	}

	@Override
	public String toString() {
		return "QnaVO [id=" + id + ", qnaTitle=" + qnaTitle + ", qnaContent=" + qnaContent + ", qnaTime=" + qnaTime
				+ ", qnaImgName=" + qnaImgName + ", qnaImgPath=" + qnaImgPath + ", userId=" + userId + "]";
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
		QnaVO other = (QnaVO) obj;
		return Objects.equals(id, other.id);
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getQnaTitle() {
		return qnaTitle;
	}

	public void setQnaTitle(String qnaTitle) {
		this.qnaTitle = qnaTitle;
	}

	public String getQnaContent() {
		return qnaContent;
	}

	public void setQnaContent(String qnaContent) {
		this.qnaContent = qnaContent;
	}

	public Timestamp getQnaTime() {
		return qnaTime;
	}

	public void setQnaTime(Timestamp qnaTime) {
		this.qnaTime = qnaTime;
	}

	public String getQnaImgName() {
		return qnaImgName;
	}

	public void setQnaImgName(String qnaImgName) {
		this.qnaImgName = qnaImgName;
	}

	public String getQnaImgPath() {
		return qnaImgPath;
	}

	public void setQnaImgPath(String qnaImgPath) {
		this.qnaImgPath = qnaImgPath;
	}

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}
	
}
