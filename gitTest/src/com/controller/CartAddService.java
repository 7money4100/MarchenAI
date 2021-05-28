package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.BlogDAO;
import com.BlogDTO;
import com.CartDAO;
import com.CartDTO;
import com.MemberDTO;


@WebServlet("/CartAddService")
public class CartAddService extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
	    MemberDTO loginDTO = (MemberDTO)session.getAttribute("info");
	    String memeber_id = loginDTO.getMember_id();
		String Character_filename = request.getParameter("Character_filename");
		String Character_price = request.getParameter("Character_price");
		
		
		
		CartDTO dto = new CartDTO(Character_filename, memeber_id, Character_price);
		CartDAO dao = new CartDAO();
		
		int cnt = dao.cartUpdate(dto);
		if(cnt>0) {
			System.out.println("업데이트 완료");
			response.sendRedirect("cart.jsp");
		}else {
			System.out.println("업데이트 실패");
			response.sendRedirect("shop.jsp");
		}
		
	}

}
