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
@WebServlet("/CharacterRandomService")
public class CharacterRandomService extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		HttpSession session = request.getSession();
	     MemberDTO loginDTO = (MemberDTO)session.getAttribute("info");
	     String member_id="";
	     
	     if(loginDTO == null) {
	    	 response.sendRedirect("login.jsp");
	     }else {
	    	 member_id = loginDTO.getMember_id();
	     }
	     
	     ArrayList<CharacterDTO> characterList = null;
	     String character_filename="";
	     String title="";
	    		 
		 CharacterDAO dao = new CharacterDAO();
		 CharacterDTO dto = new CharacterDTO(character_filename, member_id ,title);
		 characterList = dao.characterRandomSelect();
		 
		 if(characterList != null) {
			 session.setAttribute("cdto", characterList);
			 System.out.println("랜덤캐릭터 불러오기 성공!");
			 response.sendRedirect("shop.jsp");
		 }else {
			 System.out.println("랜덤캐릭터 불러오기 실패");
			 response.sendRedirect("index.jsp");
		 }
		}
	     
	     
}
