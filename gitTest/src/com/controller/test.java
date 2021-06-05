package com.controller;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.util.Enumeration;

import javax.imageio.ImageIO;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.MemberDTO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@WebServlet("/test")
public class test extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");
		HttpSession session = request.getSession();
		String realFolder = "";
		String filename1 = "";
		int maxSize = 1024 * 1024 * 5;
		String encType = "euc-kr";
		String savefile = "img";
		ServletContext scontext = getServletContext();
		realFolder = scontext.getRealPath(savefile);
		MultipartRequest multi = null;
		try {
			multi = new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());

			Enumeration<?> files = multi.getFileNames();
			String file1 = (String) files.nextElement();
			filename1 = multi.getFilesystemName(file1);
		} catch (Exception e) {
			e.printStackTrace();
		}

		File in = multi.getFile("file");
		BufferedImage inputImage = ImageIO.read(in);
		File outt = new File(
				"G:/내 드라이브/Colab/java/IndieIndie/WebContent/characterImg/target.jpg");
		ImageIO.write(inputImage, "jpg", outt);
		outt = new File(
				"G:/내 드라이브/Colab/java/IndieIndie/WebContent/characterImg/origin.jpg");
		ImageIO.write(inputImage, "jpg", outt);
		MemberDTO loginDTO = (MemberDTO) session.getAttribute("info");
		String member_id = "";

		if (loginDTO == null) {
			response.sendRedirect("login.jsp");
		} else {
			member_id = loginDTO.getMember_id();
		}
		String fileNm = "target.jpg";
		File f = new File("G:/내 드라이브/Colab/java/IndieIndie/WebContent/characterImg/" + fileNm);
		if (f.exists()) {
			session.setAttribute("isRan", false);
			response.sendRedirect("flasktest.jsp?name=" + member_id);
		} else {
			response.sendRedirect("shop.jsp");
		}
	}

}