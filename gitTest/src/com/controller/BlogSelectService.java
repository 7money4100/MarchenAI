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
import com.MemberDTO;

@WebServlet("/BlogSelectService")
public class BlogSelectService extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String member_id="";
		HttpSession session = request.getSession();
	     MemberDTO loginDTO = (MemberDTO)session.getAttribute("info");
	     if(loginDTO == null) {
	    	 response.sendRedirect("login.jsp");
	     }else {
	    	 member_id = loginDTO.getMember_id();
	     }
	     
		 
	     ArrayList<BlogDTO> bList = null;
	     String input_search="";
		 BlogDAO dao = new BlogDAO();
		 bList = dao.select(input_search);
		 
		 if(bList != null) {
			 System.out.println("조회 성공!");
			 response.sendRedirect("selectBlog.jsp");
		 }else {
			 System.out.println("조회 실패");
			 response.sendRedirect("blog.jsp");
		 }
		}	 
}


