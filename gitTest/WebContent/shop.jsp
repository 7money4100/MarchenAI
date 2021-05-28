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
	      CharacterDAO dao = new CharacterDAO();
	      if(cList == null){
	         // cList = dao.characterRandomSelect(); 
	    	 // �α� ĳ���� ���� select
	    	  cList = new ArrayList<CharacterDTO>();
	    	  cList.add(new CharacterDTO("characterImg/basic.png","basic"));
	    	  cList.add(new CharacterDTO("characterImg/basic.png","basic"));
	    	  cList.add(new CharacterDTO("characterImg/basic.png","basic"));
	    	  cList.add(new CharacterDTO("characterImg/basic.png","basic"));
	    	  cList.add(new CharacterDTO("characterImg/basic.png","basic"));
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
									<li><a href="index.jsp">Home</a></li>
									<li><a href="shop.jsp">Character</a></li>
									<li><a href="blog.jsp">Blog</a></li>
									<%if(info != null){ %>
									<li><a href="LogoutService">Logout</a></li>
									<%}else{ %>
									<li><a href="login.jsp">Login</a></li>
									<%} %>
								</ul>
							</nav>
						</div>
						<!-- Header Right -->
						<div class="header-right">
							<ul>
								<%if(info != null){ %>
								<li><%=info.getMember_id()%>�� ȯ���մϴ�.<a href="myPage.jsp"><span
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
		<!-- Hero Area Start-->
		<div class="slider-area ">
			<div class="single-slider slider-height2 d-flex align-items-center">
				<div class="container">
					<div class="row">
						<div class="col-xl-12">
							<div class="hero-cap text-center">
								<h2>Character</h2>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<form action="#">
			<!-- ������ -->
			<div class="input-group mb-3" style="margin-left: 33%">
				<input type="file" value="���ϼ����ϱ�" name="file" class="btn_3" />
				<!-- <input type="submit" value="���ε�" class = "btn_4"/> -->
				<input type="submit" value="����">
				<!-- ���� -->
			</div>
		</form>
		<form action="CharacterRandomService">
			<!-- ������ -->
			<div class="input-group mb-3" style="margin-left: 33%">
				<input type="submit" value="������" class="btn_3">
				<!-- ���� -->
			</div>
		</form>
		<!-- Hero Area End-->
		<!-- Latest Products Start -->
		<section class="popular-items latest-padding">
			<div class="container">
				<div class="row product-btn justify-content-between mb-40">

					<!-- Grid and List view -->
					<div class="grid-list-view"></div>
					<!-- Select items -->
					<div class="select-this">
						<form action="#">
							<div class="select-itms">
								<select name="select" id="select1">
									<option value="">40 per page</option>
									<option value="">50 per page</option>
									<option value="">60 per page</option>
									<option value="">70 per page</option>
								</select>
							</div>
						</form>
					</div>
				</div>
				<!-- Nav Card -->
				<div class="tab-content" id="nav-tabContent">
					<!-- card one -->
					<div class="tab-pane fade show active" id="nav-home"
						role="tabpanel" aria-labelledby="nav-home-tab">
						<div class="row">
							<%for(int i=0; i<cList.size();i++){%>
							
							<div class="col-xl-4 col-lg-4 col-md-6 col-sm-6">
								<div class="single-popular-items mb-50 text-center">
									<div class="popular-img">
										<a> <img src="<%=cList.get(i).getCharacter_filename()%>" alt="">
										</a>
										<form action="CartAddService" id="frm">
                                			<div class="img-cap">
                                    			<span onclick="document.getElementById('frm').submit();">Add to cart</span>
                                   				<input name="Character_filename" value="<%=cList.get(i).getCharacter_filename()%>" style="display:none">
                                   				<input name="Character_price" value="<%=cList.get(i).getCharacter_price() %>" style="display:none">
                                			</div>
                            			</form>
										<div class="favorit-items">
											<span class="flaticon-heart"></span>
										</div>
									</div>
									<div class="popular-caption">
										<h3>
											Thermo Ball Etip Gloves</a>
										</h3>
										<span>$ 45,743</span>
									</div>
								</div>
							</div>
							<%} %>
							<!-- 1����Ŭ -->
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
								<h6>Free Shipping Method</h6>
								<p>aorem ixpsacdolor sit ameasecur adipisicing elitsf edasd.</p>
							</div>
						</div>
						<div class="col-xl-4 col-lg-4 col-md-6">
							<div class="single-method mb-40">
								<i class="ti-unlock"></i>
								<h6>Secure Payment System</h6>
								<p>aorem ixpsacdolor sit ameasecur adipisicing elitsf edasd.</p>
							</div>
						</div>
						<div class="col-xl-4 col-lg-4 col-md-6">
							<div class="single-method mb-40">
								<i class="ti-reload"></i>
								<h6>Secure Payment System</h6>
								<p>aorem ixpsacdolor sit ameasecur adipisicing elitsf edasd.</p>
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
									<div class="footer-pera">
										<p>Asorem ipsum adipolor sdit amet, consectetur
											adipisicing elitcf sed do eiusmod tem.</p>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xl-2 col-lg-3 col-md-3 col-sm-5">
						<div class="single-footer-caption mb-50">
							<div class="footer-tittle">
								<h4>Quick Links</h4>
								<ul>
									<li><a href="#">About</a></li>
									<li><a href="#"> Offers & Discounts</a></li>
									<li><a href="#"> Get Coupon</a></li>
									<li><a href="#"> Contact Us</a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-xl-3 col-lg-3 col-md-4 col-sm-7">
						<div class="single-footer-caption mb-50">
							<div class="footer-tittle">
								<h4>New Products</h4>
								<ul>
									<li><a href="#">Woman Cloth</a></li>
									<li><a href="#">Fashion Accessories</a></li>
									<li><a href="#"> Man Accessories</a></li>
									<li><a href="#"> Rubber made Toys</a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-xl-3 col-lg-3 col-md-5 col-sm-7">
						<div class="single-footer-caption mb-50">
							<div class="footer-tittle">
								<h4>Support</h4>
								<ul>
									<li><a href="#">Frequently Asked Questions</a></li>
									<li><a href="#">Terms & Conditions</a></li>
									<li><a href="#">Privacy Policy</a></li>
									<li><a href="#">Report a Payment Issue</a></li>
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

</body>
</html>