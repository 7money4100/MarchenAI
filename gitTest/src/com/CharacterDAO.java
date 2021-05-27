package com;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class CharacterDAO {
	
	Connection conn = null;
	PreparedStatement psmt = null;
	int cnt=0;
	ResultSet rs = null;
	CharacterDTO characterDto = null;
	ArrayList<CharacterDTO> characterList = null;

	public void conn() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			String db_url = "jdbc:oracle:thin:@localhost:1521:xe";
			String db_id = "hr";
			String db_pw = "hr";
			
			conn = DriverManager.getConnection(db_url,db_id,db_pw);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void close() {
		try {
			if(rs != null) {
				rs.close();
			}if(psmt != null) {
				psmt.close();
			}if(conn != null) {
				conn.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<CharacterDTO> characterSelect(CharacterDTO dto) {
		
		characterList = new ArrayList<CharacterDTO>();
		
		conn();
		
		try {
			String sql = "select * from character";
			psmt = conn.prepareStatement(sql);
			
			psmt.setString(1, dto.getCharacter_filename());
			psmt.setString(2, dto.getMember_id());
			psmt.setString(3, dto.getCharacter_title());
			rs = psmt.executeQuery();
			
			while (rs.next()) {
				String Character_filename = rs.getString(1);
				String Member_id = rs.getString(2);
				String Character_title = rs.getString(3);
				
				characterDto = new CharacterDTO(Character_filename, Member_id, Character_title);
				characterList.add(characterDto);
			}
				
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		} 
		
		return characterList;
	}
	
	
public ArrayList<CharacterDTO> characterRandomSelect(CharacterDTO dto) {
		
		characterList = new ArrayList<CharacterDTO>();
		
		conn();
		
		try {
			String sql = "select * from character order by rand() limit 10";
			psmt = conn.prepareStatement(sql);
			
			psmt.setString(1, dto.getCharacter_filename());
			psmt.setString(2, dto.getMember_id());
			psmt.setString(3, dto.getCharacter_title());
			rs = psmt.executeQuery();
			
			while (rs.next()) {
				String Character_filename = rs.getString(1);
				String Member_id = rs.getString(2);
				String Character_title = rs.getString(3);
				
				characterDto = new CharacterDTO(Character_filename, Member_id, Character_title);
				characterList.add(characterDto);
			}
				
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		} 
		
		return characterList;
	}
}
