<%@page import="java.awt.image.BufferedImage"%>
<%@page import="javax.imageio.ImageIO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.io.File"%>
<%@page import="com.oreilly.servlet.multipart.FileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="java.awt.image.BufferedImage"%>
<%@page import="com.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�����ο� ���� ���ε� �ߴ�</title>
</head>
<body>
	<%
	MemberDTO loginDTO = (MemberDTO) session.getAttribute("info");
	String member_id = "";

	if (loginDTO == null) {
		response.sendRedirect("login.jsp");
	} else {
		member_id = loginDTO.getMember_id();
	}
	String saveDirectory = pageContext.getServletContext().getRealPath("/characterImg");
	System.out.println(saveDirectory);

	File saveDir = new File(saveDirectory);
	if (!saveDir.exists())
		saveDir.mkdirs();
	int maxPostSize = 1024 * 1024 * 5; // 5MB  ���� byte
	String encoding = "UTF-8";
	FileRenamePolicy policy = new DefaultFileRenamePolicy();
	MultipartRequest mrequest = new MultipartRequest(request //MultipartRequest�� ����� ���� request
			, saveDirectory //���� ��ġ
			, maxPostSize //�ִ�ũ��
			, encoding //���ڵ� Ÿ��
			, policy); //���� ��å
	String name = mrequest.getParameter("name");
	File uploadFile = mrequest.getFile("file"); //upload
	long uploadFile_length = uploadFile.length();
	String originalFileName = mrequest.getOriginalFileName("file");//���� �̸�
	String filesystemName = mrequest.getFilesystemName("file");//����
	System.out.println(name);
	System.out.println(uploadFile);
	System.out.println(originalFileName);
	System.out.println(filesystemName);
	System.out.println(uploadFile_length);
	%>

	> �̸� :
	<%=name%><br> > ÷�ε� ���ϸ� :
	<%=uploadFile.getName()%><br> >>> originalFileName :
	<%=originalFileName%><br> >>> filesystemName :
	<%=filesystemName%><br> > ÷�ε� ���� ũ�� :
	<%=uploadFile_length%>bytes
	<br>

	<%
		// ���� �̸� original -> target
	//File in = new File("./characterImg/"+filesystemName);
	File in = uploadFile;
	BufferedImage inputImage = ImageIO.read(in);
	File outt = new File(
			"C:/Users/smhrd/Desktop/MarchenAI/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/flasktest2/characterImg/target.jpg");
	ImageIO.write(inputImage, "jpg", outt);
	%>
	<%
	
	String fileNm = "target.jpg";
	File f = new File("CharacterImg/" + fileNm);
	if (f.exists()){
		session.setAttribute("isRan", false);
		RequestDispatcher dispatcher = request.getRequestDispatcher("flasktest.jsp?name="+member_id);
		dispatcher.forward(request, response);
	}else{
		RequestDispatcher dispatcher = request.getRequestDispatcher("shop.jsp");
		dispatcher.forward(request, response);
	}
	%>
</body>
</html>