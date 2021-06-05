<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.io.File" import="com.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1 style="text-align:center">캐릭터생성하는중</h1>
<img src="./assets/img/loading.gif" alt="IndieIndie logo">
<%
String value = request.getParameter("name");
ServletContext sc = getServletContext();
Boolean isRan = (Boolean) session.getAttribute("isRan");
MemberDTO loginDTO = (MemberDTO) session.getAttribute("info");
String mid = loginDTO.getMember_id();

int complete = 0;
File dir = null;
System.out.println(isRan);
if(isRan){
	dir = new File("G:/내 드라이브/Colab/java/IndieIndie/WebContent/random");
}else{
	dir = new File("G:/내 드라이브/Colab/java/IndieIndie/WebContent/similar");
}
System.out.println(dir);

File files[] = dir.listFiles();

for (int i = 0; i < files.length; i++) {
    complete++;
}

if(complete>=9){
	String[] filenames = dir.list();
	String ex = filenames[0];
	String gid = ex.split("_")[0]+"_"+ex.split("_")[1]+"_"+mid;
	session.setAttribute("gid", gid);
}
%>
<h1 style="text-align:center"><%=complete%>/9</h1>
<script>
window.onload=function(){
	var complete ="<%=complete%>";
	var loadingChk = setInterval(function() {
		if(complete>=9){
			window.location.replace("/gitTest/CharacterStoreService");
		}else{
			window.location.replace("flasktest.jsp?value="+value);
		}
	}, 3000);
}
</script>

<style>
img {
  margin: 0 auto;
  display: block;
  margin-top: 20%;
}
</style>
</body>
</html>