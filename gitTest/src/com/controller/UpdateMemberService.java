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

/**
 * Servlet implementation class UpdateMemberService
 */
@WebServlet("/UpdateMemberService")
public class UpdateMemberService extends HttpServlet {
   private static final long serialVersionUID = 1L;

   protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	   request.setCharacterEncoding("EUC-KR");
	   HttpSession session = request.getSession();
	      String member_id = "";
	      MemberDTO loginDTO = (MemberDTO) session.getAttribute("info");

	      if (loginDTO == null) {
	         response.sendRedirect("login.jsp");
	      } else {
	         member_id = loginDTO.getMember_id();
	      }
      //�α��� ��ÿ��� �޾ƿ��� DTO, "info"��� ����
      
      request.setCharacterEncoding("EUC-KR");
      String pw = request.getParameter("pw");
      String name = request.getParameter("name");
      String email = request.getParameter("email");
      
      MemberDTO info = new MemberDTO(member_id, pw, name, email);
      MemberDAO mDao = new MemberDAO();
      int cnt = mDao.update(info);
      // MemberDTO Ÿ�� info ���ؼ� ������ �� �ֱ�
      if(cnt > 0) {
         session.setAttribute("info", info);
         System.out.println("ȸ������ ���� ����");
         response.sendRedirect("index.jsp");
         // ���������� �ּ� 
      } else {
         System.out.println("ȸ������ ���� ����");
         response.sendRedirect("index.jsp");
      }
   }

}