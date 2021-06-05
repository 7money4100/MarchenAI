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
   ArrayList<String> List = null;
   BlogDTO bDTO = null;
   
   int cnt = 0;
   int result = 0;
   
   
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
   
//   public void conn() { //���߿� ���°ɷ�
//      try {
//         Class.forName("oracle.jdbc.driver.OracleDriver");
//         
//         String db_url = "jdbc:oracle:thin@localhost:1521:xe";
//         String db_user = "hr";
//         String db_pw = "hr";
//         conn = DriverManager.getConnection(db_url, db_user, db_pw);
//         
//      } catch (ClassNotFoundException e) {
//         e.printStackTrace();
//      } catch (SQLException e) {
//         e.printStackTrace();
//      }
//      
//   }
   
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
         // filename, member_id, content, title, recommend
         String sql = "INSERT INTO blog VALUES(?, ?, ?, ?, ?)";
         
         psmt = conn.prepareStatement(sql);
         psmt.setString(1, dto.getFilename());
         psmt.setString(2, dto.getMember_id());
         psmt.setString(3, dto.getContent());
         psmt.setString(4, dto.getTitle());
         psmt.setInt(5, dto.getRecommend());
         
         cnt = psmt.executeUpdate();
      } catch (Exception e) {
         
      } finally {
         close();
      }
      
      return cnt;
   }
   
   
   // filename, member_id, content, title, recommend
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
            String filename = rs.getString(1);
            String member_id = rs.getString(2);
            String content = rs.getString(3);
            String title = rs.getString(4);
            int recommend = rs.getInt(5);
            
            bDTO = new BlogDTO(filename, member_id, content, title, recommend);
            bList.add(bDTO);
         }
         
      } catch (Exception e) {
         e.printStackTrace();
      } finally {
         close();
      }
      
      return bList;
      
   }
   
   //���� �ۼ��� �۸� ��ȸ
   public ArrayList<BlogDTO> myAllSelect(String id) {
         bList = new ArrayList<BlogDTO>();
         conn();
         
         try {
            String sql = "SELECT * FROM blog where member_id=?";
            psmt = conn.prepareStatement(sql);
            psmt.setString(1, id);
            rs = psmt.executeQuery();
            
            
            // sql ���� ������ ��
            while(rs.next()) {
               String filename = rs.getString(1);
               String member_id = rs.getString(2);
               String content = rs.getString(3);
               String title = rs.getString(4);
               int recommend = rs.getInt(5);
               
               bDTO = new BlogDTO(filename, member_id, content, title, recommend);
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
               + "OR content LIKE '%'||?||'%'";
               
         psmt = conn.prepareStatement(sql);
         psmt.setString(1, input_search);
         psmt.setString(2, input_search);
         
         rs = psmt.executeQuery();
         while(rs.next()) {
            String filename = rs.getString(1);
            String member_id = rs.getString(2);
            String content = rs.getString(3);
            String title = rs.getString(4);
            int recommend = rs.getInt(5);
            
            bDTO = new BlogDTO(filename, member_id, content, title, recommend);
            bList.add(bDTO);
         }
      } catch (Exception e) {
         e.printStackTrace();
      } finally {
         close();
      }
      
      return bList;
   }
   
   // (���� �� �� ��) input_search �ؽ�Ʈ �ʵ� ���ڿ� �����ϴ� �Խñ� �˻�
   public ArrayList<BlogDTO> mySelect(String input_search, String id) {
      bList = new ArrayList<BlogDTO>();
      conn();
      try {
         String sql = "SELECT * FROM blog WHERE member_id=? AND title LIKE '%'||?||'%' "
               + "OR content LIKE '%'||?||'%'";
               
               
         psmt = conn.prepareStatement(sql);
         psmt.setString(1, id);
         psmt.setString(2, input_search);
         psmt.setString(3, input_search);
         
         rs = psmt.executeQuery();
         while(rs.next()) {
            String filename = rs.getString(1);
            String member_id = rs.getString(2);
            String content = rs.getString(3);
            String title = rs.getString(4);
            int recommend = rs.getInt(5);
            
            bDTO = new BlogDTO(filename, member_id, content, title, recommend);
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
   public int delete(BlogDTO bDTO) {
      conn();
      try {
         String sql = "DELETE FROM blog WHERE member_id=? and title=?";
         psmt = conn.prepareStatement(sql);
         psmt.setString(1, bDTO.getMember_id());
         psmt.setString(2, bDTO.getTitle());
         cnt = psmt.executeUpdate();
      } catch (Exception e) {
         e.printStackTrace();
      } finally {
         close();
      }
            
      return cnt;
   }
   
   

   // ���ƿ� ���̺� �߰��ϱ��� ��ȸ�۾�
   public ArrayList<BlogDTO> loveSelect(String file, String id) {
      bList = new ArrayList<BlogDTO>();
      conn();
      try {
         String sql = "SELECT * from love where l_file_name=? AND l_member_id=? ";
         psmt = conn.prepareStatement(sql);
         
         psmt.setString(1, file);
         psmt.setString(2, id);
         
         rs = psmt.executeQuery();
         while(rs.next()) {
            String filename = rs.getString(1);
            String member_id = rs.getString(2);
            int recommend = rs.getInt(3);
            
            bDTO = new BlogDTO(filename, member_id, recommend);
            bList.add(bDTO);
         }
      } catch (SQLException e) {
         e.printStackTrace();
      } finally {
         close();
      }
      
      return bList;
   }
   
   // ���ƿ� ���̺� �߰�
   public int loveUpdate(BlogDTO bDto) {
      conn();
      try {
         String sql = "INSERT INTO love VALUES(?, ?, ?)";
         psmt = conn.prepareStatement(sql);
         
         psmt.setString(1, bDto.getFilename());
         psmt.setString(2, bDto.getMember_id());
         psmt.setInt(3, bDto.getRecommend());
         
         cnt = psmt.executeUpdate();
      } catch (SQLException e) {
         e.printStackTrace();
      } finally {
         close();
      }
      
      return cnt;
   }
   
   // ��α� ���̺� ���ƿ� �߰�
   public int blogLikeUpdate(int num, String file_name) {
      conn();
      try {
         String sql = "UPDATE blog SET recommend=? WHERE filename=?";
         psmt = conn.prepareStatement(sql);
         
         psmt.setInt(1, num);
         psmt.setString(2, file_name);
         
         cnt = psmt.executeUpdate();
      } catch (SQLException e) {
         e.printStackTrace();
      } finally {
         close();
      }
      
      return cnt;
   }

   // ���ƿ� ���̺� ����
   public int loveDlete(BlogDTO dto) {
      conn();
      try {
         String sql = "DELETE FROM love WHERE l_file_name=? and l_member_id=?";
         psmt = conn.prepareStatement(sql);
         
         psmt.setString(1, dto.getFilename());
         psmt.setString(2, dto.getMember_id());
         
         cnt = psmt.executeUpdate();
      } catch (SQLException e) {
         e.printStackTrace();
      } finally {
         close();
      }
      
      return cnt;
   }
   
   // �α�Խñ� TOP3
   public ArrayList<String> popular() {
      List = new ArrayList<String>();
      conn();
      
      try {
         String sql = "select ROWNUM, filename from (select ROWNUM, filename from blog order by recommend DESC) where ROWNUM<=3";
         psmt = conn.prepareStatement(sql);
         rs = psmt.executeQuery();
         
         // sql ���� ������ ��
         while(rs.next()) {
            String filename = rs.getString(2);
            
            List.add(filename);
         }
         
      } catch (Exception e) {
         e.printStackTrace();
      } finally {
         close();
      }
      
      return List;
      
   }
}