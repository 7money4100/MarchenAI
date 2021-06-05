package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.MemberDTO;
import com.ScrapDAO;
import com.ScrapDTO;


@WebServlet("/ScrapAllDeleteService")
public class ScrapAllDeleteService extends HttpServlet {
   protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	   HttpSession session = request.getSession();
	      String member_id = "";
	      MemberDTO loginDTO = (MemberDTO) session.getAttribute("info");

	      if (loginDTO == null) {
	         response.sendRedirect("login.jsp");
	      } else {
	         member_id = loginDTO.getMember_id();
	      }
      ScrapDAO dao = new ScrapDAO();
      
      int cnt = dao.scrapDeleteAll(member_id);
      
      if(cnt>0) {
         for(int i=0; i<6;i++) {
            session.removeAttribute("heart"+i);
         }
         System.out.println("스크랩 전체삭제 완료");
         response.sendRedirect("myPage.jsp");
      }else {
         System.out.println("스크랩 전체삭제 실패");
         response.sendRedirect("myPage.jsp");
      }
   }

}