package com;

public class ScrapDTO {
	private String scrap_filename;
	private String member_id;
	private String scrap_price;
	
	public ScrapDTO(String scrap_filename, String member_id, String scrap_price) {
		super();
		this.scrap_filename = scrap_filename;
		this.member_id = member_id;
		this.scrap_price = scrap_price;
	}

	public String getScrap_filename() {
		return scrap_filename;
	}

	public void setScrap_filename(String scrap_filename) {
		this.scrap_filename = scrap_filename;
	}

	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	public String getScrap_price() {
		return scrap_price;
	}

	public void setScrap_price(String scrap_price) {
		this.scrap_price = scrap_price;
	}
}
