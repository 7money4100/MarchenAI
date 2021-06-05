package com;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;



public class MemberDAO {
   
   Connection conn = null;
   PreparedStatement psmt = null;
   int cnt=0;
   ResultSet rs = null;
   MemberDTO loginDto = null;

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
         if(rs!=null) {
            rs.close();
         }if(psmt!=null) {
            psmt.close();
         }if(conn!=null) {
            conn.close();
         }
      }catch (SQLException e) {
         e.printStackTrace();
      }
   }
   
   public int join(MemberDTO dto) {
      conn();
      try {
         String sql = "insert into member values(? , ? , ? , ?)";
         psmt = conn.prepareStatement(sql);
         
         psmt.setString(1, dto.getMember_id());
         psmt.setString(2, dto.getPw());
         psmt.setString(3, dto.getName());
         psmt.setString(4, dto.getEmail());
         cnt = psmt.executeUpdate();
      } catch (SQLException e) {
         e.printStackTrace();
      }finally {
         close();
      }
      return cnt;
   }
   
   
   public MemberDTO login(MemberDTO dto) {
      conn();
      try {
         String sql = "select * from member where member_id=? and pw=?";
         psmt = conn.prepareStatement(sql);
         psmt.setString(1,dto.getMember_id());
         psmt.setString(2, dto.getPw());
         rs = psmt.executeQuery();
         
         if(rs.next()) {
            String member_id = rs.getString(1);
            String pw = rs.getString(2);
            
            loginDto = new MemberDTO(member_id,pw);
         }
      } catch (SQLException e) {
         e.printStackTrace();
      }finally {
         close();
      }
      return loginDto;
   }
   
   
   public int update(MemberDTO dto) {
      conn();
      try {
         String sql = "update member set pw = ?, name = ?, email = ? where member_id = ?";
         psmt = conn.prepareStatement(sql);
         
         psmt.setString(1, dto.getPw());
         psmt.setString(2, dto.getName());
         psmt.setString(3,  dto.getEmail());
         psmt.setString(4,  dto.getMember_id());
         
         cnt = psmt.executeUpdate();
      } catch (SQLException e) {
         e.printStackTrace();
      }finally {
         close();
      }return cnt;
   }
   
   public String select(String member_id) {
      String name = null;
      conn();
      try {
         String sql = "select name from member where member_id = ?";
         psmt = conn.prepareStatement(sql);
         
         psmt.setString(1, member_id);
         rs = psmt.executeQuery();
         if(rs.next()) {
            name = rs.getString(1);
         }
      } catch (SQLException e) {
         e.printStackTrace();
      }finally {
         close();
      }return name;
      
   }
   
   
   // ȸ��Ż�� ���� ĳ���� ���̺� ������� (pk-kf������)
      public int characterDelete(String id) {
         conn();
         try {
            String sql = "DELETE FROM character WHERE member_id=?";
            psmt = conn.prepareStatement(sql);
            psmt.setString(1,id);
            cnt = psmt.executeUpdate();
         } catch (Exception e) {
            e.printStackTrace();
         } finally {
            close();
         }
         return cnt;
      }
   
   // ȸ��Ż�� ���� love(���ƿ�) ���̺� �������
      public int loveDelete(String id) {
         conn();
         try {
            String sql = "DELETE FROM cart WHERE member_id=?";
            psmt = conn.prepareStatement(sql);
            psmt.setString(1,id);
            cnt = psmt.executeUpdate();
         } catch (Exception e) {
            e.printStackTrace();
         } finally {
            close();
         }
         return cnt;
      }
      
   // ȸ��Ż�� ���� īƮ ���̺� �������
      public int cartDelete(String id) {
         conn();
         try {
            String sql = "DELETE FROM cart WHERE member_id=?";
            psmt = conn.prepareStatement(sql);
            psmt.setString(1,id);
            cnt = psmt.executeUpdate();
         } catch (Exception e) {
            e.printStackTrace();
         } finally {
            close();
         }
         return cnt;
      }
      
   // ȸ��Ż�� ���� ��α� ���̺� �������
      public int blogDelete(String id) {
         conn();
         try {
            String sql = "DELETE FROM blog WHERE member_id=?";
            psmt = conn.prepareStatement(sql);
            psmt.setString(1,id);
            cnt = psmt.executeUpdate();
         } catch (Exception e) {
            e.printStackTrace();
         } finally {
            close();
         }
         return cnt;
      }
   
      // ȸ��Ż�� ���� ��ũ�� ���̺� �������
      public int scrapDelete(String id) {
         conn();
         try {
            String sql = "DELETE FROM scrap WHERE member_id=?";
            psmt = conn.prepareStatement(sql);
            psmt.setString(1,id);
            cnt = psmt.executeUpdate();
         } catch (Exception e) {
            e.printStackTrace();
         } finally {
            close();
         }
         return cnt;
      }
   
   // ȸ��Ż��
      public int delete(String id) {
         conn();
         try {
            String sql = "DELETE FROM member WHERE member_id=?";
            psmt = conn.prepareStatement(sql);
            psmt.setString(1,id);
            cnt = psmt.executeUpdate();
         } catch (Exception e) {
            e.printStackTrace();
         } finally {
            close();
         }
         return cnt;
      }
      
}