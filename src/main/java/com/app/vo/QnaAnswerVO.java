package com.app.vo;

import java.sql.Timestamp;
import java.util.Objects;

public class QnaAnswerVO {
	private Long id;
	private String qnaAnswerTitle;
	private String qnaAnswerContent;
	private Timestamp qnaAnswerTime;
	private Long qnaId;
	
	public QnaAnswerVO() {;}
	
	public QnaAnswerVO(Long id, String qnaAnswerTitle, String qnaAnswerContent, Timestamp qnaAnswerTime, Long qnaId) {
		this.id = id;
		this.qnaAnswerTitle = qnaAnswerTitle;
		this.qnaAnswerContent = qnaAnswerContent;
		this.qnaAnswerTime = qnaAnswerTime;
		this.qnaId = qnaId;
	}

	@Override
	public String toString() {
		return "qnaAnswer [id=" + id + ", qnaAnswerTitle=" + qnaAnswerTitle + ", qnaAnswerContent=" + qnaAnswerContent
				+ ", qnaAnswerTime=" + qnaAnswerTime + ", qnaId=" + qnaId + "]";
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
		QnaAnswerVO other = (QnaAnswerVO) obj;
		return Objects.equals(id, other.id);
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getQnaAnswerTitle() {
		return qnaAnswerTitle;
	}

	public void setQnaAnswerTitle(String qnaAnswerTitle) {
		this.qnaAnswerTitle = qnaAnswerTitle;
	}

	public String getQnaAnswerContent() {
		return qnaAnswerContent;
	}

	public void setQnaAnswerContent(String qnaAnswerContent) {
		this.qnaAnswerContent = qnaAnswerContent;
	}

	public Timestamp getQnaAnswerTime() {
		return qnaAnswerTime;
	}

	public void setQnaAnswerTime(Timestamp qnaAnswerTime) {
		this.qnaAnswerTime = qnaAnswerTime;
	}

	public Long getQnaId() {
		return qnaId;
	}

	public void setQnaId(Long qnaId) {
		this.qnaId = qnaId;
	}
	
}	
