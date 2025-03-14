package com.app.vo;

import java.util.Objects;

public class FaqVO {
	private Long id;
	private String faqTitle;
	private String FaqContent;
	
	@Override
	public String toString() {
		return "FaqVO [id=" + id + ", faqTitle=" + faqTitle + ", FaqContent=" + FaqContent + "]";
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
		FaqVO other = (FaqVO) obj;
		return Objects.equals(id, other.id);
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getFaqTitle() {
		return faqTitle;
	}

	public void setFaqTitle(String faqTitle) {
		this.faqTitle = faqTitle;
	}

	public String getFaqContent() {
		return FaqContent;
	}

	public void setFaqContent(String faqContent) {
		FaqContent = faqContent;
	}
}
