<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1 style="text-align:center">캐릭터가져오는중</h1>
<img src="./assets/img/loading.gif" alt="IndieIndie logo">
<h1 style="text-align:center">10초만기다려주세요</h1>
<script>
window.onload=function(){
	var loadingChk = setInterval(function() {
		window.location.replace("shop.jsp");
	}, 10000);
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