package com;

public class BlogDTO {
	private int blog_id;
	private String member_id;
	private int group_id;
	private String content;
	private String time;
	private String recommend;
	
	public BlogDTO(int blog_id, String member_id, int group_id, String content, String time, String recommend) {
		super();
		this.blog_id = blog_id;
		this.member_id = member_id;
		this.group_id = group_id;
		this.content = content;
		this.time = time;
		this.recommend = recommend;
	}

	public int getBlog_id() {
		return blog_id;
	}

	public void setBlog_id(int blog_id) {
		this.blog_id = blog_id;
	}

	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	public int getGroup_id() {
		return group_id;
	}

	public void setGroup_id(int group_id) {
		this.group_id = group_id;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getRecommend() {
		return recommend;
	}

	public void setRecommend(String recommend) {
		this.recommend = recommend;
	}
	
}
