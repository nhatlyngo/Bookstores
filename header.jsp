<%@ page import="vn.edu.nlu.fit.Utill.Util" %>
<%@ page import="vn.edu.nlu.fit.DB.DBConnect" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="vn.edu.nlu.fit.Model.Cart" %>
<%@ page import="vn.edu.nlu.fit.Model.Product" %>
<%@ page import="vn.edu.nlu.fit.controller.ListProduct" %>


<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Shop-Grid</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- Favicons -->
        <link rel="shortcut icon" href="images/favicon.ico">
        <link rel="apple-touch-icon" href="images/icon.png">

        <!-- Google font (font-family: 'Roboto', sans-serif; Poppins ; Satisfy) -->
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Poppins:300,300i,400,400i,500,600,600i,700,700i,800" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700,900" rel="stylesheet">

        <!-- Stylesheets -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/plugins.css">
        <link rel="stylesheet" href="css/style.css">



        <script language="javascript">

            function searchText() {
                var req;
                var name = document.myform.name.value;
                var url = "SearchController?name=" + name;
                if(window.XMLHttpRequest){
                    req = new XMLHttpRequest();
                }
                else {
                    req = new ActiveXObject("Microsoft.XMLHttp");  }
                    req.onreadystatechange = function () {
                        if (req.readyState == 4){
                            var data =  req.responseText;
                            document.getElementById("searchresult").innerHTML = data;

                        }

                            }

                    req.open("POST",url,true);
                    req.send(null);



            }

        </script>

        <!-- Cusom css -->
        <link rel="stylesheet" href="css/custom.css">

        <!-- Modernizer js -->
        <script src="js/vendor/modernizr-3.5.0.min.js"></script>
        <!--	Font awesome-->
        <script src="https://kit.fontawesome.com/c25baca2b9.js" crossorigin="anonymous"></script>
        <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.0/jquery.min.js"></script>

        <style>

            .meninmenu li .active  {
             color: #007bff;
                background:  #007bff;
            }
        </style>

    </head>

<body>
<header id="wn__header" class="header__area header__absolute sticky__header">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-6 col-sm-6 col-6 ">
                <div class="log">
                    <a href="index.jsp">


                        <img class="l" src="images/logo/nobitavn-103639.jpg" height="140" width="350"/></a>
                </div>
            </div>
            <div class="col-lg-8 d-none d-lg-block myDIV">

                <nav class="mainmenu__nav">
                    <ul class="meninmenu d-flex justify-content-start">

                        <li class="drop with--one--item "><a href="<%= Util.fullPath("ListProductTrangchu")%>">Trang chủ</a></li>


                        <li class="drop "><a href="<%= Util.fullPath("ListProduct")%>">Danh mục sách</a>
                            <div class="megamenu mega03">
                                <ul class="item item03">
                                    <li class="title">Sách đáng chú ý</li>
                                    <%

                                        String sql1 = "SELECT id,name FROM producttype WHERE active=1;";
                                        PreparedStatement s1 = DBConnect.getPrepareStatement(sql1);
                                        ResultSet rs1 =s1.executeQuery(sql1);
                                        while (rs1.next()){
                                    %>
                                    <li><a href="<%= Util.fullPath("ListProduct?type="+rs1.getInt(1))%>"><%= rs1.getString(2) %></a></li>
                                    <% } %>
                                </ul>

                                <ul class="item item03">
                                    <li class="title">Sách tuổi teen</li>
                                    <%

                                        String sql2 = "SELECT id,name FROM producttype WHERE active=2";
                                        PreparedStatement s2 = DBConnect.getPrepareStatement(sql2);
                                        ResultSet rs2 =s2.executeQuery(sql2);
                                        while (rs2.next()){
                                    %>
                                    <li><a href="<%= Util.fullPath("ListProduct?type="+rs2.getInt(1))%>"><%= rs2.getString(2) %></a></li>
                                    <% } %>
                                </ul>
                                <ul class="item item03">
                                    <li class="title">Sách thiếu nhi</li>
                                    <%

                                        String sql3 = "SELECT id,name FROM producttype WHERE active=3";
                                        PreparedStatement s3 = DBConnect.getPrepareStatement(sql3);
                                        ResultSet rs3 =s3.executeQuery(sql3);
                                        while (rs3.next()){
                                    %>
                                    <li><a href="<%= Util.fullPath("ListProduct?type="+rs3.getInt(1))%>"><%= rs3.getString(2) %></a></li>
                                    <% } %>
                                </ul>
                            </div>
                        </li>

                        <li class="drop "><a href="about.jsp">Giới thiệu </a></li>
                        <li class="drop "><a href="#">Hỗ trợ khách hàng</a>
                            <div class="megamenu dropdown">
                                <ul class="item item01">
                                    <li><a href="quydinh.jsp">Quy định sử dụng</a></li>
                                    <li><a href="hddathang.jsp">Hướng dẫn đặt hàng</a></li>
                                    <li><a href="phuongthuc.jsp">Phương thức thanh toán</a></li>
                                    <li><a href="vanchuyen.jsp">Phương thức vận chuyển</a></li>
                                    <li><a href="chínhach.jsp">Chính sách đổi trả</a></li>
                                    <li><a href="contact.jsp">Liên hệ</a></li>

                                </ul>
                            </div>
                        </li>
                    </ul>
                </nav>
            </div>
            <div class="col-md-6 col-sm-6 col-6 col-lg-2">
                <ul class="header__sidebar__right d-flex justify-content-end align-items-center">
<%--                    <li title="Tìm kiếm" class="shop_search"><a class="search__active" href="#"></a></li>--%>
                    <!--							<li class="wishlist"><a href="#"></a></li>-->

                    <li title="Giỏ hàng" class="shopcart" >
                        <%
                            Cart c = (Cart) session.getAttribute("Cart");
                            int count = c == null ? 0 : c.list().size();

                        %>
                        <a class="cartbox_active" href="#"><span class="product_qun"><%=count%></span></a>

                        <div class="block-minicart minicart__active">
                            <div class="minicart-content-wrapper">
                                <div class="micart__close">
                                    <span>Đóng</span>
                                </div>
                                <div class="items-total d-flex justify-content-between">
                                    <span> <%=count%> sản phẩm</span>
                                    <span>Tổng giỏ hàng</span>
                                </div>
                                <div class="total_amount text-right">
                                    <span><%= c != null ? c.total() : 0%>  ₫</span>
                                </div>
                                <div class="mini_action checkout">
                                    <a class="checkout__btn" href="<%=Util.fullPath("ShowCart")%>">Đi tới giỏ hàng</a>
                                </div>
                                <div class="single__items">
                                    <%
                                        if(c ==null)c= new Cart();
                                        for(Product p:c.list())
                                        {
                                    %>
                                    <div class="miniproduct">

                                        <div class="item01 d-flex">
                                            <div class="thumb">
                                                <a href=""><img
                                                        src="<%=p.getImg()%>"
                                                        height="80" width="75"/></a>
                                            </div>
                                            <div class="content">

                                                <h6><a href=""><%=p.getName()%></a></h6>
                                                <span class="prize"><%=p.getPrice()%> ₫</span>
                                                <div class="product_prize d-flex justify-content-between">
                                                    <span class="qun">Số lượng: <%=p.getQuatity()%></span>
                                                    <ul class="d-flex justify-content-end">
                                                       <li title="Xóa"><a href="<%=Util.fullPath("DelProduct?id="+p.getId())%>"><i class="zmdi zmdi-delete"></i></a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                    <% } %>
                            </div>
                        </div>
                        </div>
                        <!-- End Shopping Cart -->
                    </li>
                    <li title="Đăng nhập" class="setting__bar__icon"><a class="setting__active" href="#"></a>
                        <div class="searchbar__content setting__block">
                            <div class="content-inner">

                                <div class="switcher-currency">

                                    <div class="switcher-options">
                                        <div class="switcher-currency-trigger">
                                            <div class="setting__menu">
                                                <span><a href="login.jsp">Đăng nhập</a></span>

                                                <span><a href="createacc.jsp">Đăng kí tài khoản</a></span>
                                                <%
                                                    if(session.getAttribute("uname")==null){
                                                        response.sendRedirect("login.jsp");
                                                    } else {

                                                %>
                                                <span><a href="logout">Đăng xuất</a></span>

<% } %>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>
<%--                        <div class="goi">--%>
<%--                            <p><i class="fas fa-phone-alt"></i>    Hotline: 1900 6401</p>--%>

<%--                        </div>--%>
                    <li title="Tìm kiếm" class="shop_search" style="margin-left:2%;margin-top: -38px">
                        <form id="demo-2"  name="myform">
                            <input type="search" placeholder="Search" name="name" onkeyup="searchText()" >

                        </form>
                        <div id="searchresult"></div>
                    </li>
                    <div class="goi" >
                        <p><i class="fas fa-phone-alt"></i> Hotline: 1900 6401</p>

                    </div>

                </ul>


            </div>
        </div>

        <!-- Start Mobile Menu -->
        <div class="row d-none">
            <div class="col-lg-12 d-none">
                <nav class="mobilemenu__nav">
                    <ul class="meninmenu">
                        <li><a href="index.jsp">Home</a></li>
                        <li><a href="#">Pages</a>
                            <ul>
                                <li><a href="about.jsp">About Page</a></li>
                                <li><a href="portfolio.jsp">Portfolio</a>
                                    <ul>
                                        <li><a href="portfolio.jsp">Portfolio</a></li>
                                        <li><a href="portfolio-details.jsp">Portfolio Details</a></li>
                                    </ul>
                                </li>
                                <li><a href="my-account.jsp">My Account</a></li>
                                <li><a href="cart.jsp">Cart Page</a></li>
                                <li><a href="checkout.jsp">Checkout Page</a></li>
                                <li><a href="wishlist.jsp">Wishlist Page</a></li>
                                <li><a href="error404.jsp">404 Page</a></li>
                                <li><a href="faq.jsp">Faq Page</a></li>
                                <li><a href="team.jsp">Team Page</a></li>
                            </ul>
                        </li>
                        <li><a href="shop-grid.jsp">Shop</a>
                            <ul>
                                <li><a href="shop-grid.jsp">Shop Grid</a></li>
                                <li><a href="single-product.jsp">Single Product</a></li>
                            </ul>
                        </li>
                        <li><a href="blog.jsp">Blog</a>
                            <ul>
                                <li><a href="blog.jsp">Blog Page</a></li>
                                <li><a href="blog-details.jsp">Blog Details</a></li>
                            </ul>
                        </li>
                        <li><a href="contact.jsp">Contact</a></li>
                    </ul>
                </nav>
            </div>
        </div>
        <!-- End Mobile Menu -->
        <div class="mobile-menu d-block d-lg-none">
        </div>
        <!-- Mobile Menu -->
    </div>
</header>
<!-- //Header -->
<!-- Start Search Popup -->
<div class="box-search-content search_active block-bg close__top">
    <form id="search_mini_form" class="minisearch" action="#">
        <div class="field__search">
            <input type="text" placeholder="Tìm kiếm tựa sách...">
            <div class="action">
                <a href="#"><i class="zmdi zmdi-search"></i></a>
            </div>
        </div>
    </form>
    <div class="close__wrap">
        <span>close</span>
    </div>
</div>
<script>
    $('a.active').removeClass('active');
    $(this).addClass('active');


</script>
</body>
</html>
