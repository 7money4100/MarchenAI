package com;

public class CharacterDTO {
	
	private int group_id;
	private String time;
	private String fileNamePrefix;
	
	
	
	
	public CharacterDTO(int group_id, String time, String fileNamePrefix) {
		super();
		this.group_id = group_id;
		this.time = time;
		this.fileNamePrefix = fileNamePrefix;
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
	public String getFileNamePrefix() {
		return fileNamePrefix;
	}
	public void setFileNamePrefix(String fileNamePrefix) {
		this.fileNamePrefix = fileNamePrefix;
	}
	
	
	
}
