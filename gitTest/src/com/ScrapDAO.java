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

   // ��ũ�� �߰� ��ư ������ ��
   public int scrapUpdate(ScrapDTO dto) {

      conn();

      try {
         String sql = "insert into scrap values(? , ? , ?)";
         psmt = conn.prepareStatement(sql);

         psmt.setString(1, dto.getScrap_filename());
         psmt.setString(2, dto.getMember_id());
         psmt.setString(3, dto.getScrap_price());

         cnt = psmt.executeUpdate();

      } catch (SQLException e) {
         e.printStackTrace();
      } finally {
         close();
      }
      
      return cnt;
      
   }
   
   // ��ũ�� �� �̹��� ��ȸ�ؼ� ����� ��
   public ArrayList<ScrapDTO> scrapSelect(String id) {

      scrapList = new ArrayList<ScrapDTO>();

      conn();

      try {
         String sql = "select * from scrap where member_id = ?";
         psmt = conn.prepareStatement(sql);

         psmt.setString(1, id);
         rs = psmt.executeQuery();

         while (rs.next()) {
            String scrap_filename = rs.getString(1);
            String member_id = rs.getString(2);
            String scrap_price = rs.getString(3);

            scrapDto = new ScrapDTO(scrap_filename, member_id, scrap_price);
            scrapList.add(scrapDto);
         }

      } catch (SQLException e) {
         e.printStackTrace();
      } finally {
         close();
      }

      return scrapList;
   }
   
   
   // ��ũ���Ϸ����ϴ� �̹����� �̹� ��ũ���� �ִ��� Ȯ���� ��
   public ArrayList<ScrapDTO> scrapCheck(ScrapDTO dto) {

      scrapList = new ArrayList<ScrapDTO>();

      conn();

      try {
         String sql = "select * from scrap where member_id = ? and scrap_filename =?";
         psmt = conn.prepareStatement(sql);

         psmt.setString(1, dto.getMember_id());
         psmt.setString(2, dto.getScrap_filename());
         rs = psmt.executeQuery();

         while (rs.next()) {
            String scrap_filename = rs.getString(1);
            String member_id = rs.getString(2);
            String scrap_price = rs.getString(3);

            scrapDto = new ScrapDTO(scrap_filename, member_id, scrap_price);
            scrapList.add(scrapDto);
         }

      } catch (SQLException e) {
         e.printStackTrace();
      } finally {
         close();
      }

      return scrapList;
   }

   // ��ũ�� ���� ����
   public int scrapDeleteOne(ScrapDTO dto) {

      conn();

      try {
         String sql = "delete from scrap where member_id = ? and scrap_filename =?";
         psmt = conn.prepareStatement(sql);
         psmt.setString(1, dto.getMember_id());
         psmt.setString(2, dto.getScrap_filename());
         cnt = psmt.executeUpdate();

      } catch (SQLException e) {
         e.printStackTrace();
      } finally {
         close();
      }
      
      return cnt;
      
   }
   
   // ��ũ�� ��ü ����
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
}