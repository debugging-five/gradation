package com.app.vo;

import java.util.Objects;

public class FaqVO {
	private Long id;
	private String faqTitle;
	private String faqContent;
	private String faqCategory;
	
	public FaqVO() {;}

	public FaqVO(Long id, String faqTitle, String faqContent, String faqCategory) {
		this.id = id;
		this.faqTitle = faqTitle;
		this.faqContent = faqContent;
		this.faqCategory = faqCategory;
	}

	@Override
	public String toString() {
		return "FaqVO [id=" + id + ", faqTitle=" + faqTitle + ", faqContent=" + faqContent + ", faqCategory="
				+ faqCategory + "]";
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
		return faqContent;
	}

	public void setFaqContent(String faqContent) {
		this.faqContent = faqContent;
	}

	public String getFaqCategory() {
		return faqCategory;
	}

	public void setFaqCategory(String faqCategory) {
		this.faqCategory = faqCategory;
	}
}
