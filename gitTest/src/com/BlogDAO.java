package com;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class BlogDAO {
	
	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	
	ArrayList<BlogDTO> bList = null;
	BlogDTO bDTO = null;
	
	int cnt = 0;
	int result = 0;
	
	public void conn() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			String db_url = "jdbc:oracle:thin@localhost:1521:xe";
			String db_user = "hr";
			String db_pw = "hr";
			conn = DriverManager.getConnection(db_url, db_user, db_pw);
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	
	public void close() {
		try {
			if(rs != null) {
				rs.close();
			}
			if(psmt != null) {
				psmt.close();
			}
			if(conn != null) {
				conn.close();
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
	}

	// �Խñ� �ۼ�
	public int insert(BlogDTO dto) {
		conn();
		try {
			// blog_id, member_id, group_id, content, time, recommend
			String sql = "INSERT INTO blog VALUES(blog_id.NEXTVAL, ?, ?, ?, ?, ?)";
			
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getMember_id());
			psmt.setInt(2, dto.getGroup_id());
			psmt.setString(3, dto.getContent());
			psmt.setString(4, dto.getTime());
			psmt.setString(5, dto.getRecommend());
			
			cnt = psmt.executeUpdate();
		} catch (Exception e) {
			
		} finally {
			close();
		}
		
		return cnt;
	}
	
	// �Խñ� ��ü��ȸ, ���ΰ�ħ �� ���
	public ArrayList<BlogDTO> allSelect() {
		bList = new ArrayList<BlogDTO>();
		conn();
		
		try {
			String sql = "SELECT * FROM blog";
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			
			// sql ���� ������ ��
			while(rs.next()) {
				int blog_id = rs.getInt(1);
				String member_id = rs.getString(2);
				int group_id = rs.getInt(3);
				String title = rs.getString(4);
				String content = rs.getString(5);
				String time = rs.getString(6);
				String recommend = rs.getString(7);
				
				bDTO = new BlogDTO(blog_id, member_id, group_id, title, content, time, recommend);
				bList.add(bDTO);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		
		return bList;
		
	}
	
	// input_search �ؽ�Ʈ �ʵ� ���ڿ� �����ϴ� �Խñ� �˻�
	public ArrayList<BlogDTO> select(String input_search) {
		bList = new ArrayList<BlogDTO>();
		conn();
		try {
			String sql = "SELECT * FROM blog WHERE title LIKE '%'||?||'%' "
					+ "OR content LIKE '%'||?||'%' OR member_id LIKE '%'||?||'%' "
					+ "ORDER BY num DESC";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, input_search);
			psmt.setString(2, input_search);
			psmt.setString(3, input_search);
			
			rs = psmt.executeQuery();
			while(rs.next()) {
				int blog_id = rs.getInt(1);
				String member_id = rs.getString(2);
				int group_id = rs.getInt(3);
				String title = rs.getString(4);
				String content = rs.getString(5);
				String time = rs.getString(6);
				String recommend = rs.getString(7);
				
				bDTO = new BlogDTO(blog_id, member_id, group_id, title, content, time, recommend);
				bList.add(bDTO);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		
		return bList;
	}
	
	// �Խñ� ����
	public int update(BlogDTO bDto) {
		conn();
		try {
			String sql = "UPDATE blog SET title=?, content=? WHERE member_id=?";
			psmt = conn.prepareStatement(sql);
			
			psmt.setString(1, bDto.getTitle());
			psmt.setString(2, bDto.getContent());
			psmt.setString(3, bDto.getMember_id());
			
			result = psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		
		
		return result;
	}
	
	// �Խñ� ����
	public int delete(String blog_id) {
		conn();
		try {
			String sql = "DELETE FROM blog WHERE blog_id=?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, blog_id);
			cnt = psmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
				
		return cnt;
	}

}
