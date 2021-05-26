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
      //로그인 당시에서 받아오는 DTO, "info"라는 세션
      
      request.setCharacterEncoding("EUC-KR");
      String member_id = loginDTO.getMember_id();
      String pw = request.getParameter("pw");
      String name = request.getParameter("name");
      String email = request.getParameter("email");
      
      MemberDTO info = new MemberDTO(member_id, pw, name, email);
      MemberDAO mDao = new MemberDAO();
      int cnt = mDao.update(info);
      // MemberDTO 타입 info 통해서 수정된 값 넣기
      if(cnt > 0) {
         session.setAttribute("info", info);
         System.out.println("회원정보 수정 성공");
         response.sendRedirect("index.jsp");
         // 마이페이지 주소 
      } else {
         System.out.println("회원정보 수정 실패");
         response.sendRedirect("index.jsp");
      }
   }

}