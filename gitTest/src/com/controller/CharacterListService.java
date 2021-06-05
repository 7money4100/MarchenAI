package com.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.CharacterDAO;
import com.CharacterDTO;
import com.MemberDTO;

/**
 * Servlet implementation class CharacterListService
 */
@WebServlet("/CharacterListService")
public class CharacterListService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		String gid = (String) session.getAttribute("gid");
		MemberDTO loginDTO = (MemberDTO) session.getAttribute("info");
		String member_id = "";

		if (loginDTO == null) {
			response.sendRedirect("login.jsp");
		} else {
			member_id = loginDTO.getMember_id();
		}

		ArrayList<CharacterDTO> characterList = null;

		CharacterDAO dao = new CharacterDAO();
		CharacterDTO dto = new CharacterDTO(null,null,gid);
		characterList = dao.characterListSelect(dto);

		if (characterList != null) {
			session.setAttribute("cdto", characterList);
			System.out.println("캐릭터 생성 성공!");
			response.sendRedirect("loading.jsp");
		} else {
			System.out.println("캐릭터 생성 실패");
			response.sendRedirect("index.jsp");
		}
	}

}
