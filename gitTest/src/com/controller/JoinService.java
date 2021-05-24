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
 * Servlet implementation class JoinService
 */
@WebServlet("/JoinService")
public class JoinService extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JoinService() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("EUC-KR");
		String member_id = request.getParameter("member_id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		
		MemberDTO dto = new MemberDTO(member_id, pw, name, email);
		MemberDAO dao = new MemberDAO();
		int cnt = dao.join(dto);
		
		if(cnt > 0) {
			HttpSession session = request.getSession();
			session.setAttribute("id", member_id);
			System.out.println("회원가입 성공");
			response.sendRedirect("login.jsp");
		} else {
			System.out.println("회원가입 실패");
			response.sendRedirect("login.jsp");
		}
	}

}
