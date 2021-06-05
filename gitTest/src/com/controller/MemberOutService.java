package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.MemberDAO;
import com.MemberDTO;
import com.ScrapDTO;


@WebServlet("/MemberOutService")
public class MemberOutService extends HttpServlet {
   private static final long serialVersionUID = 1L;

   protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	   HttpSession session = request.getSession();
	      String member_id = "";
	      MemberDTO loginDTO = (MemberDTO) session.getAttribute("info");

	      if (loginDTO == null) {
	         response.sendRedirect("login.jsp");
	      } else {
	         member_id = loginDTO.getMember_id();
	      }
       MemberDAO dao = new MemberDAO();
       int cartCnt = dao.cartDelete(member_id);
       int blogCnt = dao.blogDelete(member_id);
       int characterCnt = dao.characterDelete(member_id);
       int scrapCnt = dao.scrapDelete(member_id);
       int loveCnt = dao.loveDelete(member_id);
      int cnt = dao.delete(member_id);
      if(cnt>0) {
         System.out.println("È¸¿øÅ»Åð ¼º°ø");
         response.sendRedirect("login.jsp");
      }else {
         System.out.println("È¸¿øÅ»Åð ½ÇÆÐ");
         response.sendRedirect("myPage.jsp");
      }
   }
}