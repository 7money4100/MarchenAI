package com.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.BlogDAO;
import com.BlogDTO;
import com.MemberDTO;


@WebServlet("/BlogLikeItService")
public class BlogLikeItService extends HttpServlet {
   
   protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      HttpSession session = request.getSession();
      MemberDTO loginDTO = (MemberDTO) session.getAttribute("info");
      int cnt;
      String member_id = "";
      if (loginDTO == null) {
         response.sendRedirect("login.jsp");
      } else {
         member_id = loginDTO.getMember_id();
      }
      String req = request.getParameter("like");
      int like = Integer.parseInt(req);
      String file_name = request.getParameter("file_name");
      System.out.println("file_name:"+file_name);
      BlogDAO dao = new BlogDAO();
      BlogDTO dto = null;
      ArrayList<BlogDTO> bList =  dao.loveSelect(file_name, member_id);
      if(bList.size()==0) {
         like +=1;
         System.out.println("like갯수:"+like);
         dto = new BlogDTO(file_name,member_id, like);
         cnt = dao.loveUpdate(dto);
         System.out.println("cnt값:"+cnt);
         if(cnt>0) {
            dao.blogLikeUpdate(like, file_name);
            System.out.println("좋아요 업데이트 성공");
            response.sendRedirect("blog.jsp");
         }else {
            System.out.println("좋아요 업데이트 실패");
            response.sendRedirect("blog.jsp");
         }
      }else {
         like -=1;
         System.out.println("like갯수:"+like);
         dto = new BlogDTO(file_name,member_id, like);
         cnt = dao.loveDlete(dto);
         if(cnt>0) {
            dao.blogLikeUpdate(like, file_name);
            System.out.println("좋아요 삭제 성공");
            response.sendRedirect("blog.jsp");
         }else {
            System.out.println("좋아요 삭제 실패");
            response.sendRedirect("blog.jsp");
         }
         
      }
   }

}