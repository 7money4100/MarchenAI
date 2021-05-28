package com;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class CartDAO {
	
	Connection conn = null;
	PreparedStatement psmt = null;
	int cnt=0;
	ResultSet rs = null;
	CartDTO cartDto = null;
	ArrayList<CartDTO> cartList = null;

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
	
	// 장바구니 추가
	public int cartUpdate(CartDTO dto) {
		
		conn();
		
		try {
			String sql = "insert into cart values(?, ?, ?)";
			psmt = conn.prepareStatement(sql);
			
			psmt.setString(1, dto.getCharacter_filename());
			psmt.setString(2, dto.getMember_id());
			psmt.setString(3, dto.getCharacter_title());
			cnt = psmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		
		return cnt;
		
	}
	
	// 장바구니에 조회해서 띄워줄 때
//	public ArrayList<CartDTO> cartSelect(String id) {
//			
//		cartList = new ArrayList<CartDTO>();
//			
//		conn();
//			
//		try {
//			String sql = "select * from cart where member_id = ?";
//			psmt = conn.prepareStatement(sql);
//			
//			psmt.setString(1, id);
//			rs = psmt.executeQuery();
//				
//			while (rs.next()) {
//				int cart_id = rs.getInt(1);
//				String member_id = rs.getString(2);
//				int group_id = rs.getInt(3);
//					
//				cartDto = new CartDTO(cart_id, member_id, group_id);
//				cartList.add(cartDto);
//			}
//					
//		} catch (SQLException e) {
//			e.printStackTrace();
//		} finally {
//			close();
//		}
//		
//		return cartList;
//		
//		}
//	
//	// 장바구니 전체 삭제
//	public int cartDeleteAll(String id) {
//
//		conn();
//
//		try {
//		String sql = "delete from cart where member_id = ?";
//		psmt = conn.prepareStatement(sql);
//		psmt.setString(1, id);
//		cnt = psmt.executeUpdate();
//
//		} catch (SQLException e) {
//			e.printStackTrace();
//		} finally {
//			close();
//		}
//
//		return cnt;
//
//		}
//	
//	// 장바구니 단일 삭제 (where절 비교할 값 생각해봐야 함)
//	public int cartDeleteOne(String cart_id) {
//
//	conn();
//
//	try {
//		String sql = "delete from scrap where group_id = ?";
//		psmt = conn.prepareStatement(sql);
//		psmt.setString(1, cart_id);
//		cnt = psmt.executeUpdate();
//
//		} catch (SQLException e) {
//			e.printStackTrace();
//		} finally {
//			close();
//		}
//
//		return cnt;
//
//		}

}
