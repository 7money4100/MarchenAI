package com;

public class ScrapDTO {
	private String member_id;
	private int group_id;
	private int payment_id;
	
	public ScrapDTO(String member_id, int group_id, int payment_id) {
		super();
		this.member_id = member_id;
		this.group_id = group_id;
		this.payment_id = payment_id;
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

	public int getPayment_id() {
		return payment_id;
	}

	public void setPayment_id(int payment_id) {
		this.payment_id = payment_id;
	}
		
}
