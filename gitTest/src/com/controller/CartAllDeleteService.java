package com.controller;

import java.io.IOException;
import java.util.ArrayList;

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
import com.ScrapDTO;

@WebServlet("/CartAllDeleteService")
public class CartAllDeleteService extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession();
		String member_id = "";
		MemberDTO loginDTO = (MemberDTO) session.getAttribute("info");

		if (loginDTO == null) {
			response.sendRedirect("login.jsp");
		} else {
			member_id = loginDTO.getMember_id();
		}

		CartDAO dao = new CartDAO();

		int cnt = dao.cartDeleteAll(member_id);

		if (cnt > 0) {
			System.out.println("��ٱ��� ��ü���� �Ϸ�");
			response.sendRedirect("cart.jsp");
		} else {
			System.out.println("��ٱ��� ��ü���� ����");
			response.sendRedirect("cart.jsp");
		}
	}

}