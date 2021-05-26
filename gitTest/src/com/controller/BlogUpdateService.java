package com.controller;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.BlogDAO;
import com.BlogDTO;
import com.MemberDAO;
import com.MemberDTO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@WebServlet("/BlogUpdateService")
public class BlogUpdateService extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 request.setCharacterEncoding("euc-kr");
		 String fullpath= "";
		 String title="";
		 String content="";
		 String member_id="";
		 int recommend=0;
		 
		 
		 String realFolder = "";
		 String filename1 = "";
		 int maxSize = 1024*1024*5;
		 String encType = "euc-kr";
		 String savefile = "img";
		 ServletContext scontext = getServletContext();
		 realFolder = scontext.getRealPath(savefile);
		 System.out.println("������>>"+realFolder);
		 
		 
		 try{
		  MultipartRequest multi=new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());

		  title = multi.getParameter("title"); //blogWriting.jsp�� form�±׿��� enctype="multipart/form-data"�� ���� ������ ���⿡ ����Ѵ�.
		  content = multi.getParameter("content");
		  System.out.println(title);
		  System.out.println(content);
			 
		  Enumeration<?> files = multi.getFileNames();
		     String file1 = (String)files.nextElement();
		     filename1 = multi.getFilesystemName(file1);
		 } catch(Exception e) {
		  e.printStackTrace();
		 }
		 
		 
		 realFolder = "img";
		 System.out.println("������>>"+realFolder);
		 System.out.println("������>>"+filename1);
		 fullpath = realFolder + "/" + filename1;
		 System.out.println("���ϸ����>>"+fullpath);
		 
		 
		 
		 
		 //title, content, fullpath 
		 
		
		 HttpSession session = request.getSession();
	     MemberDTO loginDTO = (MemberDTO)session.getAttribute("info");
	     
	     if(loginDTO == null) {
	    	 response.sendRedirect("login.jsp");
	     }else {
	    	 member_id = loginDTO.getMember_id();
	     }
	     
		 
		
		 
		 BlogDTO dto = new BlogDTO(fullpath, member_id, content, title, recommend);
		 BlogDAO dao = new BlogDAO();
		 int cnt = dao.insert(dto);
		 
		 if(cnt>0) {
			 System.out.println("DB������Ʈ �Ϸ�");
			 response.sendRedirect("blog.jsp");
		 }else {
			 System.out.println("DB������Ʈ ����");
			 response.sendRedirect("blogWriting.jsp");
		 }
		}	 
		 
}


