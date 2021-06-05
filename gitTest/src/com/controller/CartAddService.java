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


@WebServlet("/CartAddService")
public class CartAddService extends HttpServlet {
   protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      
      String num = request.getParameter("num");
      System.out.print(num);
      
      HttpSession session = request.getSession();
      String member_id = "";
      MemberDTO loginDTO = (MemberDTO) session.getAttribute("info");

      if (loginDTO == null) {
         response.sendRedirect("login.jsp");
      } else {
         member_id = loginDTO.getMember_id();
      }
      String Character_filename = request.getParameter("Character_filename");
      String Character_price = request.getParameter("Character_price");
      ArrayList<CartDTO> cartCheckList = null;
      
      
      
      CartDTO dto = new CartDTO(Character_filename, member_id, Character_price);
      CartDAO dao = new CartDAO();
      
      CartDTO checkDTO = new CartDTO(Character_filename, member_id);
      cartCheckList =dao.cartCheck(checkDTO);
      
      if(cartCheckList.size()==0) {
         int cnt = dao.cartUpdate(dto);
         if(cnt>0) {
            System.out.println("업데이트 완료");
            response.sendRedirect("cart.jsp");
         }else {
            System.out.println("업데이트 실패"); response.sendRedirect("shop.jsp");
         }
      }else {
         System.out.println("이미 장바구니에 존재");
         response.sendRedirect("shop.jsp");
      }
      
      
       
      
   }

}