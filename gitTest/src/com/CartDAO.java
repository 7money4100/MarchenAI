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
   
   // ��ٱ��� �߰�
   public int cartUpdate(CartDTO dto) {
      
      conn();
      
      try {
         String sql = "insert into cart values(?, ?, ?)";
         psmt = conn.prepareStatement(sql);
         
         psmt.setString(1, dto.getCart_filename());
         psmt.setString(2, dto.getMember_id());
         psmt.setString(3, dto.getCart_price());
         cnt = psmt.executeUpdate();
         
      } catch (SQLException e) {
         e.printStackTrace();
      } finally {
         close();
      }
      
      return cnt;
      
   }
   
   // ��ٱ��Ͽ� ��ȸ�ؼ� ����� ��
   public ArrayList<CartDTO> cartSelect(String id) {
         
      cartList = new ArrayList<CartDTO>();
         
      conn();
         
      try {
         String sql = "select * from cart where member_id = ?";
         psmt = conn.prepareStatement(sql);
         
         psmt.setString(1, id);
         rs = psmt.executeQuery();
            
         while (rs.next()) {
            String cart_filename = rs.getString(1);
            String member_id = rs.getString(2);
            String cart_price = rs.getString(3);
               
            cartDto = new CartDTO(cart_filename, member_id, cart_price);
            cartList.add(cartDto);
         }
               
      } catch (SQLException e) {
         e.printStackTrace();
      } finally {
         close();
      }
      return cartList;
      }
   
   
   // �Ȱ��� ��ǰ�� ��ٱ��Ͽ� �߰� ���ϰ� �ϱ�
      public ArrayList<CartDTO> cartCheck(CartDTO dto) {
            
         cartList = new ArrayList<CartDTO>();
            
         conn();
            
         try {
            String sql = "select * from cart where member_id = ? and cart_filename =?";
            psmt = conn.prepareStatement(sql);
            
            psmt.setString(1, dto.getMember_id());
            psmt.setString(2, dto.getCart_filename());
            rs = psmt.executeQuery();
               
            while (rs.next()) {
               String cart_filename = rs.getString(1);
               String member_id = rs.getString(2);
               String cart_price = rs.getString(3);
                  
               cartDto = new CartDTO(cart_filename, member_id, cart_price);
               cartList.add(cartDto);
            }
                  
         } catch (SQLException e) {
            e.printStackTrace();
         } finally {
            close();
         }
         return cartList;
         }
   
   // ��ٱ��� ��ü ����
   public int cartDeleteAll(String id) {

      conn();

      try {
      String sql = "delete from cart where member_id = ?";
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
   
   // ��ٱ��� ���� ���� (where�� ���� �� �����غ��� ��)
   public int cartDeleteOne(CartDTO dto) {
      
   conn();
   
   try {
      String sql = "delete from cart where cart_filename = ? and member_id = ?";
      psmt = conn.prepareStatement(sql);
      psmt.setString(1, dto.getCart_filename());
      psmt.setString(2, dto.getMember_id());
      cnt = psmt.executeUpdate();

      } catch (SQLException e) {
         e.printStackTrace();
      } finally {
         close();
      }

      return cnt;

      }

}