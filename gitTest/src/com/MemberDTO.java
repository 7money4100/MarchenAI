package com;

public class MemberDTO {
	private String member_id;
	private String pw;
	private String name;
	private String email;
	
	
	public MemberDTO(String name) {
		super();
		this.name = name;
	}
	public MemberDTO(String member_id, String pw) {
		super();
		this.member_id = member_id;
		this.pw = pw;
	}
	public MemberDTO(String member_id, String pw, String name, String email) {
		super();
		this.member_id = member_id;
		this.pw = pw;
		this.name = name;
		this.email = email;
	}
	
	
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}


	
}