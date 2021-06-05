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
 * Servlet implementation class LoginService
 */
@WebServlet("/LoginService")
public class LoginService extends HttpServlet {
   private static final long serialVersionUID = 1L;

   protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      request.setCharacterEncoding("EUC-KR");
      String id = request.getParameter("member_id");
      String pw = request.getParameter("pw");
      // login.jsp 에서 input text name 속성 지정해줄 것
      
      HttpSession session = request.getSession();
      session.invalidate();
      MemberDTO dto = new MemberDTO(id, pw);
      MemberDAO dao = new MemberDAO();
      MemberDTO loginDTO = dao.login(dto);
      
      if(loginDTO != null) {
         session = request.getSession();
         session.setAttribute("info", loginDTO);
         System.out.println("로그인 성공");
         response.sendRedirect("index.jsp");
      } else {
         System.out.println("로그인 실패");
         response.sendRedirect("login.jsp");
      }
      
   }

}