package com;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class ScrapDAO {

	Connection conn = null;
	PreparedStatement psmt = null;
	int cnt = 0;
	ResultSet rs = null;
	ScrapDTO scrapDto = null;
	ArrayList<ScrapDTO> scrapList = null;

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

	// 스크랩 추가 버튼 눌렀을 때
	public int scrapUpdate(ScrapDTO dto) {

		conn();

		try {
			String sql = "insert into scrap values(? , ? , ? , ?)";
			psmt = conn.prepareStatement(sql);

			psmt.setString(1, dto.getMember_id());
			psmt.setInt(2, dto.getGroup_id());
			psmt.setInt(3, dto.getPayment_id());
			psmt.setString(4, dto.getTime());
			cnt = psmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		
		return cnt;
		
	}

	// 스크랩 한 이미지 조회해서 띄워줄 때
	public ArrayList<ScrapDTO> scrapSelect(String id) {

		scrapList = new ArrayList<ScrapDTO>();

		conn();

		try {
			String sql = "select * from scrap where member_id = ?";
			psmt = conn.prepareStatement(sql);

			psmt.setString(1, id);
			rs = psmt.executeQuery();

			while (rs.next()) {
				String member_id = rs.getString(1);
				int group_id = rs.getInt(2);
				int payment_id = rs.getInt(3);
				String time = rs.getString(4);

				scrapDto = new ScrapDTO(member_id, group_id, payment_id, time);
				scrapList.add(scrapDto);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return scrapList;
	}

	// 스크랩 전체 삭제
	public int scrapDeleteAll(String id) {

		conn();

		try {
			String sql = "delete from scrap where member_id = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, id);
			cnt = psmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return cnt;

	}

	// 스크랩 단일 삭제 (where절 비교할 값 생각해봐야 함)
	public int scrapDeleteOne(String group_id) {

		conn();

		try {
			String sql = "delete from scrap where group_id = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, group_id);
			cnt = psmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		
		return cnt;
		
	}
}
