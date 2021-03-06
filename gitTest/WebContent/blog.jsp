<%@page import="com.BlogDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.BlogDAO"%>
<%@page import="com.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 
<html class="no-js" lang="zxx">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Watch shop | eCommers</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="manifest" href="site.webmanifest">
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">    

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

<!-- 로그인 정보 받아오기 -->
<%
   String input_search="";
   input_search = request.getParameter("input_search");
   MemberDTO info = (MemberDTO) session.getAttribute("info");
   String member_id = info.getMember_id();
   BlogDAO dao =  new BlogDAO();
   ArrayList<BlogDTO> bAllList=null;
   ArrayList<BlogDTO> bSelectList=null;
   bAllList = dao.allSelect();
   bSelectList = dao.select(input_search);
   System.out.println(bSelectList);
   
%>
<!--? Preloader Start -->
    <div id="preloader-active">
        <div class="preloader d-flex align-items-center justify-content-center">
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
                            <a href="index.jsp"><img src="assets/img/logo/logo.png" alt=""></a>
                        </div>
                        <!-- Main-menu -->
                        <div class="main-menu d-none d-lg-block">
                            <nav>                                                
                                <ul id="navigation">  
                                    <li><a href="index.jsp" style="font-size:20px">홈</a></li>
                                    <li><a href="shop.jsp" style="font-size:20px">캐릭터</a></li>
                                    <li><a href="blog.jsp" style="font-size:20px">게시판</a></li>
                                    <%if(info != null){ %>
                                       <li><a href="LogoutService" style="font-size:20px">로그아웃</a></li>
                           <%}else{ %>
                              <li><a href="login.jsp" style="font-size:20px">로그인</a></li>
                           <%} %>
                                </ul>
                            </nav>
                        </div>
                        <!-- Header Right -->
                        <div class="header-right">
                            <ul>
                                <%if(info != null){ %>
                                     <li><%=info.getMember_id()%>님 환영합니다.<a href="myPage.jsp"><span class="flaticon-user"></span></a></li>
                                      <li><a href="cart.jsp"><span class="flaticon-shopping-cart"></span></a> </li>
                                <%}else{ %>
                                   <li> <a href="login.jsp"><span class="flaticon-user"></span></a></li>
                                      <li><a href="login.jsp"><span class="flaticon-shopping-cart"></span></a> </li>
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
        <div><img src="assets/img/hero/board_ban.png" style="width:100%"></div>
        <!--? Hero Area End-->
        <!--================Blog Area =================-->
        <section class="blog_area section-padding">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 mb-5 mb-lg-0">
                        <div class="blog_left_sidebar">
                           <%if(input_search==null){ %>
                              <%for(int i=bAllList.size()-1; i>=0; i--){ %> 
                                 <article class="blog_item">
                                   <div class="blog_item_img">
                                         <form action="BlogDeleteService" id="blogDeleteService<%=i%>" style="float :right">
                                           <div class="favorit-items">
                                               <span onclick="document.getElementById('blogDeleteService<%=i%>').submit();">
                                                  <img src="./assets/img/remove.png"></img>
                                               </span>
                                               <input name="title" value="<%=bAllList.get(i).getTitle()%>" style="display:none">
                                           </div>
                                        </form>
                                       <img class="card-img rounded-0" src="<%=bAllList.get(i).getFilename()%>" alt="" style="width:610px; height:300px; object-fit:scale-down">
                                   </div>
                                   <div class="blog_details">
                                       <a class="d-inline-block" href="single-blog.jsp">
                                           <h2><%=bAllList.get(i).getTitle()%></h2>
                                       </a>
                                       <p><%=bAllList.get(i).getContent()%></p>
                                       <ul class="blog-info-link">
                                       <%ArrayList<BlogDTO> bList= dao.loveSelect(bAllList.get(i).getFilename(), member_id); %>
                                           <li><%if(info != null){ %>
                                           <%if(bList.size() ==0){ %>
                                           <form action="BlogLikeItService" id="addHeartBlog<%=i %>">
                                                 <div class="favorit-items">
                                                    <span onclick="document.getElementById('addHeartBlog<%=i %>').submit();">
                                                       <img class="n" id="heart<%=i%>" src="./assets/img/heart.png" value="0"></img>
                                                       <%=bAllList.get(i).getRecommend()%>
                                                    </span>
                                                    <input name="like" value="<%=bAllList.get(i).getRecommend()%>" style="display: none">
                                                    <input name="file_name" value="<%=bAllList.get(i).getFilename()%>" style="display: none">
                                                 </div>
                                           </form>
                                           <%}else{ %>
                                           <form action="BlogLikeItService" id="addHeartBlog<%=i %>">
                                                 <div class="favorit-items">
                                                    <span onclick="document.getElementById('addHeartBlog<%=i %>').submit();">
                                                       <img class="n" id="heart<%=i%>" src="./assets/img/redheart.png" value="0"></img>
                                                       <%=bAllList.get(i).getRecommend()%>
                                                    </span>
                                                    <input name="like" value="<%=bAllList.get(i).getRecommend()%>" style="display: none">
                                                    <input name="file_name" value="<%=bAllList.get(i).getFilename()%>" style="display: none">
                                                 </div>
                                           </form>
                                           <!--<a href="BlogLikeItService?like=<%=bAllList.get(i).getRecommend()%>&file_name=<%=bAllList.get(i).getFilename()%>"><i class="flaticon-heart"></i> <%=bAllList.get(i).getRecommend()%></a>  -->
                                           <%} %>
                                           <%}else{%>
                                           <a href="login.jsp"><i class="flaticon-heart"></i> <%=bAllList.get(i).getRecommend() %></a>
                                           <%}%>
                                           </li>
                                       </ul>
                                   </div>
                               </article>
                              <%} %>
                           <%}else{%>
                              <%for(int i=bSelectList.size()-1; i>=0; i--){ %> 
                                 <article class="blog_item">
                                   <div class="blog_item_img">
                                       <img class="card-img rounded-0" src="<%=bSelectList.get(i).getFilename()%>" alt="" style="width:610px; height:300px; object-fit:scale-down">
                                   </div>
                                   <div class="blog_details">
                                       <a class="d-inline-block" href="single-blog.jsp">
                                           <h2><%=bSelectList.get(i).getTitle()%></h2>
                                       </a>
                                       <p><%=bSelectList.get(i).getContent()%></p>
                                       <ul class="blog-info-link">
                                       <%ArrayList<BlogDTO> bList= dao.loveSelect(bAllList.get(i).getFilename(), member_id); %>
                                           <li><%if(info != null){ %>
                                           <%if(bList.size() ==0){ %>
                                           <form action="BlogLikeItService" id="addHeartBlog<%=i %>">
                                                 <div class="favorit-items">
                                                    <span onclick="document.getElementById('addHeartBlog<%=i %>').submit();">
                                                       <img class="n" id="heart<%=i%>" src="./assets/img/heart.png" value="0"></img>
                                                       <%=bAllList.get(i).getRecommend()%>
                                                    </span>
                                                    <input name="like" value="<%=bAllList.get(i).getRecommend()%>" style="display: none">
                                                    <input name="file_name" value="<%=bAllList.get(i).getFilename()%>" style="display: none">
                                                 </div>
                                           </form>
                                           <%}else{ %>
                                           <form action="BlogLikeItService" id="addHeartBlog<%=i %>">
                                                 <div class="favorit-items">
                                                    <span onclick="document.getElementById('addHeartBlog<%=i %>').submit();">
                                                       <img class="n" id="heart<%=i%>" src="./assets/img/redheart.png" value="0"></img>
                                                       <%=bAllList.get(i).getRecommend()%>
                                                    </span>
                                                    <input name="like" value="<%=bAllList.get(i).getRecommend()%>" style="display: none">
                                                    <input name="file_name" value="<%=bAllList.get(i).getFilename()%>" style="display: none">
                                                 </div>
                                           </form>
                                           <!--<a href="BlogLikeItService?like=<%=bAllList.get(i).getRecommend()%>&file_name=<%=bAllList.get(i).getFilename()%>"><i class="flaticon-heart"></i> <%=bAllList.get(i).getRecommend()%></a>  -->
                                           <%} %>
                                           <%}else{%>
                                           <a href="login.jsp"><i class="flaticon-heart"></i> <%=bAllList.get(i).getRecommend() %></a>
                                           <%}%>
                                           </li>
                                       </ul>
                                   </div>
                               </article>
                              <%} %>
                           <%} %>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="blog_right_sidebar">
                            <aside class="single_sidebar_widget search_widget">
                                <form action="blog.jsp">
                                    <div class="form-group">
                                        <div class="input-group mb-3">
                                            <input type="text" class="form-control" placeholder='키워드 검색'
                                                onfocus="this.placeholder = ''"
                                                onblur="this.placeholder = 'Search Keyword'" name="input_search">
                                            <div class="input-group-append">
                                                <button class="btns" type="submit"><i class="ti-search"></i></button>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                                <%if(info != null){ %>
                                <a href="blogWriting.jsp"class="button rounded-0 primary-bg text-white w-100 btn_1 boxed-btn" name="Btn_blogItemWrite">
                               글쓰기</a>
                                <%}else{ %>
                                <a href="login.jsp"class="button rounded-0 primary-bg text-white w-100 btn_1 boxed-btn" name="Btn_blogItemWrite">
                               글쓰기</a>
                               <%} %>
                               <%if(info != null){ %>
                                  <a href="blog_my.jsp"class="button rounded-0 primary-bg text-white w-100 btn_1 boxed-btn" name="Btn_blogItemWrite">
                                 내가쓴글 보러가기</a>
                               <%}else{ %>
                               <a href="login.jsp"class="button rounded-0 primary-bg text-white w-100 btn_1 boxed-btn" name="Btn_blogItemWrite">
                                 내가쓴글 보러가기</a>
                               <%} %>
                            </aside>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--================Blog Area =================-->
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
                                    <a href="index.jsp"><img src="assets/img/logo/logo2_footer.png" alt=""></a>
                                </div>
                                <div class="footer-tittle">
                                    <div class="footer-pera">
                                </div>
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
                            <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>                  
                        </div>
                    </div>
                    <div class="col-xl-5 col-lg-4 col-md-5">
                        <div class="footer-copy-right f-right">
                            <!-- social -->
                            <div class="footer-social">
                                <a href="#"><i class="fab fa-twitter"></i></a>
                                <a href="https://www.facebook.com/sai4ull"><i class="fab fa-facebook-f"></i></a>
                                <a href="#"><i class="fab fa-behance"></i></a>
                                <a href="#"><i class="fas fa-globe"></i></a>
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
                <input type="text" id="search-input" placeholder="Searching key.....">
            </form>
        </div>
    </div>
    <!-- Search model end -->

    <!-- JS here -->

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
    
    <!-- Scrollup, nice-select, sticky -->
    <script src="./assets/js/jquery.scrollUp.min.js"></script>
    <script src="./assets/js/jquery.nice-select.min.js"></script>
    <script src="./assets/js/jquery.sticky.js"></script>
    <script src="./assets/js/jquery.magnific-popup.js"></script>

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