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
      HttpSession session = request.getSession();
      MemberDTO loginDTO = (MemberDTO)session.getAttribute("info");
      //�α��� ��ÿ��� �޾ƿ��� DTO, "info"��� ����
      
      request.setCharacterEncoding("EUC-KR");
      String member_id = loginDTO.getMember_id();
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