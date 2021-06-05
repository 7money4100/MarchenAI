package com.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.CartDAO;
import com.CartDTO;
import com.MemberDTO;
import com.ScrapDAO;
import com.ScrapDTO;


@WebServlet("/ScrapAddService")
public class ScrapAddService extends HttpServlet {
   protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	   HttpSession session = request.getSession();
	      String member_id = "";
	      MemberDTO loginDTO = (MemberDTO) session.getAttribute("info");

	      if (loginDTO == null) {
	         response.sendRedirect("login.jsp");
	      } else {
	         member_id = loginDTO.getMember_id();
	      }
      String scrap_filename = request.getParameter("Character_filename");
      String scrap_price = request.getParameter("Character_price");
      String num = request.getParameter("num");
      ArrayList<ScrapDTO> scrapList = null;
      int cnt= 0;
      
      
      ScrapDTO dto = new ScrapDTO(scrap_filename, member_id, scrap_price);
      ScrapDAO dao = new ScrapDAO();
      
      ScrapDTO checkDTO = new ScrapDTO(scrap_filename, member_id);
      scrapList =dao.scrapCheck(checkDTO);
      
      if(scrapList.size() ==0) {
         cnt = dao.scrapUpdate(dto);
         if(cnt>0) {
            session.setAttribute(scrap_filename, "heart"+num);
            System.out.println("��ũ�� ������Ʈ �Ϸ�");
            response.sendRedirect("shop.jsp");
         }else {
            System.out.println("��ũ�� ������Ʈ ����");
            response.sendRedirect("shop.jsp");
         }
      }else {
         System.out.println("�̹� ��ũ�� �Ǿ��ִ� ĳ����");
         response.sendRedirect("shop.jsp");
      }
   }

}