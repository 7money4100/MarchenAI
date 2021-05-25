package com;

public class PaymentDTO {
	private int payment_id;
	private String member_id;
	private String time;
	private String price;
	private int cart_id;
	
	public PaymentDTO(int payment_id, String member_id, String time, String price, int cart_id) {
		super();
		this.payment_id = payment_id;
		this.member_id = member_id;
		this.time = time;
		this.price = price;
		this.cart_id = cart_id;
	}

	public int getPayment_id() {
		return payment_id;
	}

	public void setPayment_id(int payment_id) {
		this.payment_id = payment_id;
	}

	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public int getCart_id() {
		return cart_id;
	}

	public void setCart_id(int cart_id) {
		this.cart_id = cart_id;
	}
	
}
