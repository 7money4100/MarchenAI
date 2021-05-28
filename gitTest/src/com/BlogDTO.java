package com;

public class BlogDTO {
	
	private String filename;
	private String member_id;
	private String content;
	private String title;
	private int recommend;
	
	public BlogDTO(String filename, String member_id, String content, String title, int recommend) {
		super();
		this.filename = filename;
		this.member_id = member_id;
		this.content = content;
		this.title = title;
		this.recommend = recommend;
	}
	
	// ¡¡æ∆ø‰
	public BlogDTO(int recommend) { 
		super();
		this.recommend = recommend;
	}

	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public int getRecommend() {
		return recommend;
	}
	public void setRecommend(int recommend) {
		this.recommend = recommend;
	}	
}
