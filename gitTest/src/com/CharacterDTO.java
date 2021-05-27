package com;

public class CharacterDTO {

	private String character_filename;
	private String member_id;
	private String character_title;
	
	
	public CharacterDTO(String character_filename, String character_title) {
		super();
		this.character_filename = character_filename;
		this.character_title = character_title;
	}


	public CharacterDTO(String character_filename, String member_id, String character_title) {
		super();
		this.character_filename = character_filename;
		this.member_id = member_id;
		this.character_title = character_title;
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


	public String getCharacter_title() {
		return character_title;
	}


	public void setCharacter_title(String character_title) {
		this.character_title = character_title;
	}
	
	
	
	
}
