package com;

public class CharacterDTO {
	private int group_id;
	private String time;
	private String filenameprefix;
	
	public CharacterDTO(int group_id, String time, String filenameprefix) {
		super();
		this.group_id = group_id;
		this.time = time;
		this.filenameprefix = filenameprefix;
	}

	public int getGroup_id() {
		return group_id;
	}

	public void setGroup_id(int group_id) {
		this.group_id = group_id;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getFilenameprefix() {
		return filenameprefix;
	}

	public void setFilenameprefix(String filenameprefix) {
		this.filenameprefix = filenameprefix;
	}
	
}
