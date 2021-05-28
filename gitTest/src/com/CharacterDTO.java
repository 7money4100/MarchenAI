package com;

public class CharacterDTO {

	private String character_filename;
	private String member_id;
	private String character_price;	
	
	public CharacterDTO(String character_filename, String character_price) {
		super();
		this.character_filename = character_filename;
		this.character_price = character_price;
	}

	public CharacterDTO(String character_filename, String member_id, String character_price) {
		super();
		this.character_filename = character_filename;
		this.member_id = member_id;
		this.character_price = character_price;
	}

	public String getCharacter_filename() {
		return character_filename;
	}

	public void setCharacter_filename(String character_filename) {
		this.character_filename = character_filename;
	}

	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	public String getCharacter_price() {
		return character_price;
	}

	public void setCharacter_price(String character_price) {
		this.character_price = character_price;
	}
}
