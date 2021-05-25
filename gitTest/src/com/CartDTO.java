package com;

public class CartDTO {
	private int cart_id;
	private String member_id;
	private int group_id;
	
	public CartDTO(int cart_id, String member_id, int group_id) {
		super();
		this.cart_id = cart_id;
		this.member_id = member_id;
		this.group_id = group_id;
	}

	public int getCart_id() {
		return cart_id;
	}

	public void setCart_id(int cart_id) {
		this.cart_id = cart_id;
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

	
}
