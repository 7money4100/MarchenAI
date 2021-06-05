package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Decide")
public class Decide extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		String imp_success = request.getParameter("imp_success");
		if(imp_success.equals("true")) {
			out.println("<script>alert('성공') location.href=\"index.jsp\"</script>");
		}else {
			out.println("<script>alert('실패') location.href=\"checkout.jsp\"</script>");
		}
	}

}
