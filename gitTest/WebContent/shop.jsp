<%@page import="com.CharacterDAO"%>
<%@page import="com.CharacterDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html class="no-js" lang="zxx">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Watch shop | eCommers</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="manifest" href="site.webmanifest">
<link rel="shortcut icon" type="image/x-icon"
	href="assets/img/favicon.ico">

<!-- CSS here -->
<link rel="stylesheet" href="assets/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/owl.carousel.min.css">
<link rel="stylesheet" href="assets/css/flaticon.css">
<link rel="stylesheet" href="assets/css/slicknav.css">
<link rel="stylesheet" href="assets/css/animate.min.css">
<link rel="stylesheet" href="assets/css/magnific-popup.css">
<link rel="stylesheet" href="assets/css/fontawesome-all.min.css">
<link rel="stylesheet" href="assets/css/themify-icons.css">
<link rel="stylesheet" href="assets/css/slick.css">
<link rel="stylesheet" href="assets/css/nice-select.css">
<link rel="stylesheet" href="assets/css/style.css">
</head>

<body>
	<%
           MemberDTO info = (MemberDTO) session.getAttribute("info");
         ArrayList<CharacterDTO> cList = (ArrayList<CharacterDTO>) session.getAttribute("cdto");
         Boolean isRan = (Boolean) session.getAttribute("isRan");
         CharacterDAO dao = new CharacterDAO();
         if(cList == null){
            // cList = dao.characterRandomSelect(); 
           // 인기 캐릭터 순위 select
            cList = new ArrayList<CharacterDTO>();
            cList.add(new CharacterDTO("img/card_back.jpg","----"));
            cList.add(new CharacterDTO("img/card_back.jpg","----"));
            cList.add(new CharacterDTO("img/card_back.jpg","----"));
            isRan=true;
         }
   %>
	<!--? Preloader Start -->
	<div id="preloader-active">
		<div
			class="preloader d-flex align-items-center justify-content-center">
			<div class="preloader-inner position-relative">
				<div class="preloader-circle"></div>
				<div class="preloader-img pere-text">
					<img src="assets/img/logo/logo.png" alt="">
				</div>
			</div>
		</div>
	</div>
	<!-- Preloader Start -->
	<header>
		<!-- Header Start -->
		<div class="header-area">
			<div class="main-header header-sticky">
				<div class="container-fluid">
					<div class="menu-wrapper">
						<!-- Logo -->
						<div class="logo">
							<a href="index.jsp"><img src="assets/img/logo/logo.png"
								alt=""></a>
						</div>
						<!-- Main-menu -->
						<div class="main-menu d-none d-lg-block">
							<nav>
								<ul id="navigation">
									<li><a href="index.jsp" style="font-size: 20px">홈</a></li>
									<li><a href="shop.jsp" style="font-size: 20px">캐릭터</a></li>
									<li><a href="blog.jsp" style="font-size: 20px">게시판</a></li>
									<%if(info != null){ %>
									<li><a href="LogoutService" style="font-size: 20px">로그아웃</a></li>
									<%}else{ %>
									<li><a href="login.jsp" style="font-size: 20px">로그인</a></li>
									<%} %>
								</ul>
							</nav>
						</div>
						<!-- Header Right -->
						<div class="header-right">
							<ul>
								<%if(info != null){ %>
								<li><%=info.getMember_id()%>님 환영합니다.<a href="myPage.jsp"><span
										class="flaticon-user"></span></a></li>
								<li><a href="cart.jsp"><span
										class="flaticon-shopping-cart"></span></a></li>
								<%}else{ %>
								<li><a href="login.jsp"><span class="flaticon-user"></span></a></li>
								<li><a href="login.jsp"><span
										class="flaticon-shopping-cart"></span></a></li>
								<%} %>
							</ul>
						</div>
					</div>
					<!-- Mobile Menu -->
					<div class="col-12">
						<div class="mobile_menu d-block d-lg-none"></div>
					</div>
				</div>
			</div>
		</div>
		<!-- Header End -->
	</header>
	<main>
		<!--? Hero Area Start-->
		<div>
			<img src="assets/img/hero/character_ban.png" style="width: 100%">
		</div>
		<!--? Hero Area End-->
		<br> <br>
		<table style="display: table; margin-left: auto; margin-right: auto">
			<tr>
			<%if(info !=null){ %>
				<form action="test" enctype="multipart/form-data" method="post">
					<td><input type="file" value="파일선택하기" name="file" /></td>
					<td><input TYPE="IMAGE" src="./assets/img/btn/btn_up.png"
						name="Submit" value="Submit" style="align: absmiddle"></td>
				</form>
				<td>&nbsp;&nbsp;&nbsp;</td>
				<td>
					<form action="CharacterGenerateService">
						<input TYPE="IMAGE" src="./assets/img/btn/btn_random.png"
							name="Submit" value="Submit" style="align: absmiddle">
					</form>
				</td>
			<%}else{%>
				<form action="login.jsp" enctype="multipart/form-data" method="post">
					<td><input type="file" value="파일선택하기" name="file" /></td>
					<td><input TYPE="IMAGE" src="./assets/img/btn/btn_up.png"
						name="Submit" value="Submit" style="align: absmiddle"></td>
				</form>
				<td>&nbsp;&nbsp;&nbsp;</td>
				<td>
					<form action="login.jsp">
						<input TYPE="IMAGE" src="./assets/img/btn/btn_random.png"
							name="Submit" value="Submit" style="align: absmiddle">
					</form>
				</td>
			<%} %>
			</tr>
		</table>
		<!-- Hero Area End-->
		<!-- Latest Products Start -->
		<section class="popular-items latest-padding" style="padding-top:25px">
			<div class="container" style="text-align: center; padding-bottom:0px">
			<% if(!isRan){ %>
				<img src="characterImg/origin.jpg" style="width:360px; height:523px; object-fit:scale-down">
			<%} %>
			</div>
			<div class="container">
				<div class="row product-btn justify-content-between mb-40">

					<!-- Grid and List view -->
					<div class="grid-list-view"></div>
					<!-- Select items -->
					<div class="select-this">
						<form action="#">
							<div class="select-itms"></div>
						</form>
					</div>
				</div>
				<!-- Nav Card -->
				<div class="tab-content" id="nav-tabContent">
					<!-- card one -->
					<div class="tab-pane fade show active" id="nav-home"
						role="tabpanel" aria-labelledby="nav-home-tab">
						<div class="row">
							<%int test=0;%>
							<%for(int i=0; i<cList.size();i++){%>
							<%String a ="heart"; 
                     String heart= (String)session.getAttribute(cList.get(i).getCharacter_filename());
                     System.out.println("세션값"+heart);
                     %>
							<div class="col-xl-4 col-lg-4 col-md-6 col-sm-6">
								<div class="single-popular-items mb-50 text-center">
									<div class="popular-img">
										<a> <img src="<%=cList.get(i).getCharacter_filename()%>"
											alt="">
										</a><%if(cList.size()>=9){ %>
										<form action="CartAddService" id="addCart<%=i %>">
											<div class="img-cap">
												<span
													onclick="document.getElementById('addCart<%=i %>').submit();">장바구니
													추가</span> <input name="Character_filename"
													value="<%=cList.get(i).getCharacter_filename()%>"
													style="display: none"> <input
													name="Character_price"
													value="<%=cList.get(i).getCharacter_price()%>"
													style="display: none"> <input name="num"
													value="<%=i%>" style="display: none">
											</div>
										</form>
										<%if(heart==null){ %>
										<form action="ScrapAddService" id="addHeart<%=i %>">
											<div class="favorit-items">
												<span
													onclick="document.getElementById('addHeart<%=i %>').submit();">
													<img class="n" id="heart<%=i%>"
													src="./assets/img/heart.png" value="0"></img>
												</span> <input name="Character_filename"
													value="<%=cList.get(i).getCharacter_filename()%>"
													style="display: none"> <input
													name="Character_price"
													value="<%=cList.get(i).getCharacter_price()%>"
													style="display: none"> <input name="num"
													value="<%=i%>" style="display: none">
											</div>
										</form>
										<%}else{%>
										<form action="ScrapDeleteService" id="addHeart<%=i %>">
											<div class="favorit-items">
												<span
													onclick="document.getElementById('addHeart<%=i %>').submit();">
													<img class="n" id="heart<%=i%>"
													src="./assets/img/redheart.png" value="0"></img>
												</span> <input name="Character_filename"
													value="<%=cList.get(i).getCharacter_filename()%>"
													style="display: none"> <input name="num"
													value="<%=i%>" style="display: none"> <input
													name="shop" value="shop" style="display: none">
											</div>
										</form>
										<%} %><%} %>
									</div>
									<div class="popular-caption">
										<span><%=cList.get(i).getCharacter_price()%>원</span>
									</div>
								</div>
							</div>
							<%} %>
							<!-- 1사이클 -->
							<!-- End Nav Card -->
						</div>
		</section>
		<!-- Latest Products End -->
		<!--? Shop Method Start-->
		<div class="shop-method-area">
			<div class="container">
				<div class="method-wrapper">
					<div class="row d-flex justify-content-between">
						<div class="col-xl-4 col-lg-4 col-md-6">
							<div class="single-method mb-40">
								<i class="ti-package"></i>
								<h6>구매 관련 정책</h6>
								<p>구매시 이메일을 정확히 기입해주시길 바랍니다.</p>
							</div>
						</div>
						<div class="col-xl-4 col-lg-4 col-md-6">
							<div class="single-method mb-40">
								<i class="ti-unlock"></i>
								<h6>저작권 보호 정책</h6>
								<p>대한민국 전체 개발사와 개발자를 위한 무상 리소스 지원 플랫폼입니다.</p>
							</div>
						</div>
						<div class="col-xl-4 col-lg-4 col-md-6">
							<div class="single-method mb-40">
								<i class="ti-reload"></i>
								<h6>환불 정책</h6>
								<p>구매 세부정보에 따라 환불이 불가능할 수도 있으니 고객센터에 문의해주세요.</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Shop Method End-->
	</main>
	<footer>
		<!-- Footer Start-->
		<div class="footer-area footer-padding">
			<div class="container">
				<div class="row d-flex justify-content-between">
					<div class="col-xl-3 col-lg-3 col-md-5 col-sm-6">
						<div class="single-footer-caption mb-50">
							<div class="single-footer-caption mb-30">
								<!-- logo -->
								<div class="footer-logo">
									<a href="index.jsp"><img
										src="assets/img/logo/logo2_footer.png" alt=""></a>
								</div>
								<div class="footer-tittle">
									<div class="footer-pera"></div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xl-2 col-lg-3 col-md-3 col-sm-5">
						<div class="single-footer-caption mb-50">
							<div class="footer-tittle">
								<h4>바로가기</h4>
								<ul>
									<li><a href="index.jsp">홈</a></li>
									<li><a href="shop.jsp">캐릭터</a></li>
									<li><a href="blog.jsp">게시판</a></li>
									<li><a href="login.jsp">회원가입 / 로그인</a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-xl-3 col-lg-3 col-md-4 col-sm-7">
						<div class="single-footer-caption mb-50">
							<div class="footer-tittle">
								<h4>서비스</h4>
								<ul>
									<li><a href="shop.jsp">유사 캐릭터 추천</a></li>
									<li><a href="shop.jsp">랜덤 캐릭터 추천</a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-xl-3 col-lg-3 col-md-5 col-sm-7">
						<div class="single-footer-caption mb-50">
							<div class="footer-tittle">
								<h4>고객지원</h4>
								<ul>
									<li><a href="#">공지사항</a></li>
									<li><a href="#">Q&A</a></li>
									<li><a href="#">이용약관</a></li>
									<li><a href="#">개인정보처리방침</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<!-- Footer bottom -->
				<div class="row align-items-center">
					<div class="col-xl-7 col-lg-8 col-md-7">
						<div class="footer-copy-right">
							<p>
								<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
								Copyright &copy;
								<script>document.write(new Date().getFullYear());</script>
								All rights reserved | This template is made with <i
									class="fa fa-heart" aria-hidden="true"></i> by <a
									href="https://colorlib.com" target="_blank">Colorlib</a>
								<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
							</p>
						</div>
					</div>
					<div class="col-xl-5 col-lg-4 col-md-5">
						<div class="footer-copy-right f-right">
							<!-- social -->
							<div class="footer-social">
								<a href="#"><i class="fab fa-twitter"></i></a> <a
									href="https://www.facebook.com/sai4ull"><i
									class="fab fa-facebook-f"></i></a> <a href="#"><i
									class="fab fa-behance"></i></a> <a href="#"><i
									class="fas fa-globe"></i></a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Footer End-->
	</footer>
	<!--? Search model Begin -->
	<div class="search-model-box">
		<div class="h-100 d-flex align-items-center justify-content-center">
			<div class="search-close-btn">+</div>
			<form class="search-model-form">
				<input type="text" id="search-input"
					placeholder="Searching key.....">
			</form>
		</div>
	</div>
	<!-- Search model end -->

	<!-- JS here -->
	<!-- All JS Custom Plugins Link Here here -->
	<script src="./assets/js/vendor/modernizr-3.5.0.min.js"></script>
	<!-- Jquery, Popper, Bootstrap -->
	<script src="./assets/js/vendor/jquery-1.12.4.min.js"></script>
	<script src="./assets/js/popper.min.js"></script>
	<script src="./assets/js/bootstrap.min.js"></script>
	<!-- Jquery Mobile Menu -->
	<script src="./assets/js/jquery.slicknav.min.js"></script>

	<!-- Jquery Slick , Owl-Carousel Plugins -->
	<script src="./assets/js/owl.carousel.min.js"></script>
	<script src="./assets/js/slick.min.js"></script>

	<!-- One Page, Animated-HeadLin -->
	<script src="./assets/js/wow.min.js"></script>
	<script src="./assets/js/animated.headline.js"></script>
	<script src="./assets/js/jquery.magnific-popup.js"></script>

	<!-- Scroll up, nice-select, sticky -->
	<script src="./assets/js/jquery.scrollUp.min.js"></script>
	<script src="./assets/js/jquery.nice-select.min.js"></script>
	<script src="./assets/js/jquery.sticky.js"></script>

	<!-- contact js -->
	<script src="./assets/js/contact.js"></script>
	<script src="./assets/js/jquery.form.js"></script>
	<script src="./assets/js/jquery.validate.min.js"></script>
	<script src="./assets/js/mail-script.js"></script>
	<script src="./assets/js/jquery.ajaxchimp.min.js"></script>


	<!-- Jquery Plugins, main Jquery -->
	<script src="./assets/js/plugins.js"></script>
	<script src="./assets/js/main.js"></script>
	<script type="text/javascript">
                              
      function changeImage(i){                                 
         alert("11111");
         var s = "heart";
         s+=i; 
         var e = document.getElementById(s);
         if(sessionStorage.getItem(s)==null){
            sessionStorage.setItem(s, "y");
            e.src="./assets/img/redheart.png";
         }else{
            sessionStorage.removeItem(s);
            e.src="./assets/img/heart.png";
         }
      }
   </script>

</body>
</html>