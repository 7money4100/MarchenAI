package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.MemberDTO;

/**
 * Servlet implementation class CharacterGenerateService
 */
@WebServlet("/CharacterGenerateService")
public class CharacterGenerateService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		session.setAttribute("isRan", true);
		MemberDTO loginDTO = (MemberDTO) session.getAttribute("info");
		String member_id = "";

		if (loginDTO == null) {
			response.sendRedirect("login.jsp");
		} else {
			member_id = loginDTO.getMember_id();
		}
		response.sendRedirect("flasktest.jsp?name="+member_id);//'flaskserver주소/메소드?name='+member_id
	}

}
