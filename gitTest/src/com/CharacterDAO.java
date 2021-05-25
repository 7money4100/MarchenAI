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
	ArrayList<CharacterDTO> cList = null;

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
	
	public ArrayList<CharacterDTO> select(CharacterDTO dto) {
		
		cList = new ArrayList<CharacterDTO>();
		
		conn();
		
		try {
			String sql = "select * from character";
			psmt = conn.prepareStatement(sql);
			
			psmt.setInt(1, dto.getGroup_id());
			psmt.setString(2, dto.getTime());
			psmt.setString(3, dto.getFilenameprefix());
			rs = psmt.executeQuery();
			
			while (rs.next()) {
				int group_id = rs.getInt(1);
				String time = rs.getString(2);
				String filenameprefix = rs.getString(3);
				
				characterDto = new CharacterDTO(group_id, time, filenameprefix);
				cList.add(characterDto);
			}
				
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		} 
		
		return cList;
		
	}
}
