package com;

public class CartDTO {
	private String cart_filename;
	private String member_id;
	private String cart_price;
	
	public CartDTO(String cart_filename, String member_id, String cart_price) {
		super();
		this.cart_filename = cart_filename;
		this.member_id = member_id;
		this.cart_price = cart_price;
	}

	public String getCart_filename() {
		return cart_filename;
	}

	public void setCart_filename(String cart_filename) {
		this.cart_filename = cart_filename;
	}

	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	public String getCart_price() {
		return cart_price;
	}

	public void setCart_price(String cart_price) {
		this.cart_price = cart_price;
	}
}
