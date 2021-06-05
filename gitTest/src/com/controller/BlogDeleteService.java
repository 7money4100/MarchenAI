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

@WebServlet("/BlogDeleteService")
public class BlogDeleteService extends HttpServlet {
   protected void service(HttpServletRequest request, HttpServletResponse response)
         throws ServletException, IOException {
      String member_id = "";
      HttpSession session = request.getSession();
      MemberDTO loginDTO = (MemberDTO) session.getAttribute("info");

      if (loginDTO == null) {
         response.sendRedirect("login.jsp");
      } else {
         member_id = loginDTO.getMember_id();
      }
      String title = request.getParameter("title");
      String filename= request.getParameter("filename");

      BlogDAO dao = new BlogDAO();
      BlogDTO dto = new BlogDTO(member_id, title, filename);
      int cnt = dao.delete(dto);

      if (cnt >0) {
         System.out.println("삭제 성공!");
         response.sendRedirect("blog.jsp");
      } else {
         System.out.println("삭제 실패");
         response.sendRedirect("blog.jsp");
      }
   }
}