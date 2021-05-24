package com;

public class MemberDTO {
	private String id;
	private String pw;
	private String name;
	private String mail;
	
	public MemberDTO(String id, String pw, String name, String mail) {
		super();
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.mail = mail;
	}

	public MemberDTO(String id, String pw) {
		super();
		this.id = id;
		this.pw = pw;
	}

	public MemberDTO(String name) {
		super();
		this.name = name;
	}
	
	
	
	

	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
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
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
}
