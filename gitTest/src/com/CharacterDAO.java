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
	int cnt = 0;
	ResultSet rs = null;
	CharacterDTO characterDto = null;
	ArrayList<CharacterDTO> characterList = null;

	public void conn() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");

			String db_url = "jdbc:oracle:thin:@localhost:1521:xe";
			String db_id = "hr";
			String db_pw = "hr";

			conn = DriverManager.getConnection(db_url, db_id, db_pw);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void close() {
		try {
			if (rs != null) {
				rs.close();
			}
			if (psmt != null) {
				psmt.close();
			}
			if (conn != null) {
				conn.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void insert(CharacterDTO dto) {
		characterList = new ArrayList<CharacterDTO>();
		conn();
		try {
			String sql = "insert into character values(? , ? , ?)";
			psmt = conn.prepareStatement(sql);
			
			psmt.setString(1, dto.getCharacter_filename());
			psmt.setString(2, dto.getMember_id());
			psmt.setString(3, dto.getCharacter_price());
			cnt = psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
	}
	
	public ArrayList<CharacterDTO> characterListSelect(CharacterDTO dto) {

		characterList = new ArrayList<CharacterDTO>();
		String gid = dto.getCharacter_price();

		conn();

		try {
			String sql = "select * from character where character_price=?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, gid);
			rs = psmt.executeQuery();

			while (rs.next()) {
				String Character_filename = rs.getString(1);
				String Member_id = rs.getString(2);
				String Character_price = "2000";

				characterDto = new CharacterDTO(Character_filename, Member_id, Character_price);
				characterList.add(characterDto);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return characterList;
	}

	public ArrayList<CharacterDTO> characterSelect(CharacterDTO dto) {

		characterList = new ArrayList<CharacterDTO>();

		conn();

		try {
			String sql = "select * from character";
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();

			while (rs.next()) {
				String Character_filename = rs.getString(1);
				String Member_id = rs.getString(2);
				String Character_price = rs.getString(3);

				characterDto = new CharacterDTO(Character_filename, Member_id, Character_price);
				characterList.add(characterDto);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return characterList;
	}

	public ArrayList<CharacterDTO> characterRandomSelect() {

		characterList = new ArrayList<CharacterDTO>();

		conn();

		try {
			String sql = "select e.*\r\n"
					+ "from (select ROWNUM as rn, CHARACTER_FILENAME, MEMBER_ID, CHARACTER_PRICE\r\n"
					+ "      from character\r\n" + "      order by dbms_random.value\r\n" + "     ) e\r\n"
					+ "where rn <= 5";
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();

			while (rs.next()) {
				String Character_filename = rs.getString(2);
				String Member_id = rs.getString(3);
				String Character_price = rs.getString(4);

				characterDto = new CharacterDTO(Character_filename, Member_id, Character_price);
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