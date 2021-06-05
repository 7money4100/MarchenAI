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


@WebServlet("/ScrapDeleteService")
public class ScrapDeleteService extends HttpServlet {
   protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	   HttpSession session = request.getSession();
	      String member_id = "";
	      MemberDTO loginDTO = (MemberDTO) session.getAttribute("info");

	      if (loginDTO == null) {
	         response.sendRedirect("login.jsp");
	      } else {
	         member_id = loginDTO.getMember_id();
	      }
       String scrapFilename = request.getParameter("Character_filename");
      String shop = request.getParameter("shop");
      
      System.out.println(shop);
      
      ScrapDAO dao = new ScrapDAO();
      ScrapDTO dto = new ScrapDTO(member_id, scrapFilename);
      
      
      int cnt = dao.scrapDeleteOne(dto);
      
      if(cnt>0) {
         session.removeAttribute(scrapFilename);
         System.out.println("스크랩 삭제 완료");
         if(shop ==null) {
            response.sendRedirect("myPage.jsp");
         }else {
            response.sendRedirect("shop.jsp");
         }
         
      }else {
         System.out.println("스크랩 삭제 실패");
         if(shop ==null) {
            response.sendRedirect("myPage.jsp");
         }else {
            response.sendRedirect("shop.jsp");
         }
      }
   }

}