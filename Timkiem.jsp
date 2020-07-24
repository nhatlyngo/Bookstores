<%@ page import="java.sql.ResultSet" %>
<%@ page import="vn.edu.nlu.fit.Utill.Util" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="vn.edu.nlu.fit.DB.DBConnect" %>
<%@ page import="vn.edu.nlu.fit.controller.ListProduct" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html class="no-js" lang="zxx">
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

    <!-- Cusom css -->
    <link rel="stylesheet" href="css/custom.css">

    <!-- Modernizer js -->
    <script src="js/vendor/modernizr-3.5.0.min.js"></script>
    <!--	Font awesome-->
    <script src="https://kit.fontawesome.com/c25baca2b9.js" crossorigin="anonymous"></script>

</head>
<style>
    .pagination{
        display: inline-block;
        height: 45px;
        position: relative;
        float: right;
        right: 5%;
        clear: left;
        margin-top: 30px;
        margin-right: -40px;
    }
    .pagination a{
        text-decoration: none;
        cursor: pointer;
        color: black;
        float: left;
        padding: 8px 16px;
        border:  1px solid lightgray;
        font-weight: bold;
        /*box-sizing: border-box;*/
        box-shadow: 0px 3px 3px gray ;
    }
    .pagination a:hover{
        background-color: lightgray;
    }
    .myPages{
        /*display:none;*/

        width: 100%;

    }
    .color-pag  {
        background: #007bff ;


    }



</style>
<body>
<!--[if lte IE 9]>
<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
<![endif]-->

<!-- Main wrapper -->
<div class="wrapper" id="wrapper">

    <!-- Header -->
    <jsp:include page="header.jsp"></jsp:include>
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
    <!-- End Search Popup -->
    <!-- Start Bradcaump area -->
    <div class="ht__bradcaump__area ">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="bradcaump__inner text-center">
                        <nav class="bradcaump-content">
                            <a class="breadcrumb_item" href="index.jsp">Trang chủ</a>
                            <span class="brd-separetor">/</span>
                            <span class="breadcrumb_item active">Danh mục sách</span>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Bradcaump area -->
    <!-- Start Shop Page -->
    <div class="page-shop-sidebar left--sidebar bg--white section-padding--lg">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-12 order-2 order-lg-1 md-mt-40 sm-mt-40">
                    <div class="shop__sidebar">
                        <aside class="wedget__categories poroduct--cat">
                            <h3 class="wedget__title">Danh sách các loại sản phẩm</h3>
<%--                            <ul>--%>
<%--                                <%--%>
<%--                                    ResultSet rs = (ResultSet) request.getAttribute("rs");--%>
<%--                                    while (rs.next()){--%>
<%--                                %>--%>
<%--                                <li>--%>
<%--                                    <a href="<%=Util.fullPath("ListProduct?type="+rs.getInt(1))%>"><%= rs.getString(2)%></a>--%>
<%--                                </li>--%>
<%--                                <% } %>--%>
<%--                            </ul>--%>
                        </aside>

                        <aside class="wedget__categories poroduct--tag">
                            <h3 class="wedget__title">Product Tags</h3>
                            <ul>
                                <li><a href="#">Sách bán chạy</a></li>
                                <li><a href="#">Sách giảm giá</a></li>
                                <li><a href="#">Sách tuổi teen </a></li>
                                <li><a href="#">Văn học-Teen</a></li>
                                <li><a href="#">Hướng nghiệp-Kĩ năng </a></li>
                                <li><a href="#">Tiểu thuyết</a></li>
                                <li><a href="#">Truyện tranh </a></li>
                                <li><a href="#">Sức khỏe </a></li>
                                <li><a href="#">Sách thiếu nhi</a></li>
                                <li><a href="#">Truyện cổ tích-Thần thoại </a></li>
                                <li><a href="#">Vừa hoc vừa chơi </a></li>
                                <li><a href="#">Kiến thức-Kĩ năng </a></li>
                            </ul>
                        </aside>
                        <aside class="wedget__categories poroduct--cat">
                            <h3 class="wedget__title">Nhà xuất bản </h3>
                            <ul>
<%--                                <%--%>
<%--                                    ResultSet rs1 = (ResultSet) request.getAttribute("r");--%>
<%--                                    while (rs1.next()){--%>
<%--                                %>--%>
<%--                                <li>--%>
<%--                                    <a href="<%=Util.fullPath("Listnhaxuatban?nxb="+rs1.getInt(1))%>"><%= rs1.getString(2)%></a>--%>
<%--                                </li>--%>
<%--                                <% } %>--%>
                            </ul>
                        </aside>

                    </div>
                </div>
                <div class="col-lg-9 col-12 order-1 order-lg-2">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="shop__list__wrapper d-flex flex-wrap flex-md-nowrap justify-content-between">
                                <div class="shop__list nav justify-content-center" role="tablist">
                                    <a class="nav-item nav-link active" data-toggle="tab" href="#nav-grid" role="tab"><i class="fa fa-th"></i></a>
                                    <a class="nav-item nav-link" data-toggle="tab" href="#nav-list" role="tab"><i class="fa fa-list"></i></a>
                                </div>
                                <p>Hiển thị 1-12 trong 40 kết quả</p>
                                <div class="orderby__wrapper">
                                    <span>Sắp xếp theo</span>
                                    <select class="shot__byselect">
                                        <option>Tùy chọn mặt định</option>
                                        <option>Sách mới phát hành</option>
                                        <option>Giá bán từ cao đến thấp</option>
                                        <option>Giá bán từ thấp đến cao</option>

                                    </select>
                                </div>
                            </div>
                        </div>
                    </div>
<%--                    <div class="tab__container">--%>

<%--                        <div class="shop-grid tab-pane fade show active" id="nav-grid" role="tabpanel">--%>
<%--                            <ul class="myPages ">--%>

<%--                                <div class="row">--%>
<%--&lt;%&ndash;                                    &lt;%&ndash;%>--%>
<%--&lt;%&ndash;                                        ResultSet p = (ResultSet) request.getAttribute("p");&ndash;%&gt;--%>
<%--&lt;%&ndash;                                        while (p.next()){&ndash;%&gt;--%>

<%--&lt;%&ndash;                                    %>&ndash;%&gt;--%>
<%--                                    <!-- Start Single Product -->--%>
<%--                                    <div class="product product__style--3 col-lg-4 col-md-4 col-sm-6 col-12">--%>

<%--                                        <div class="product__thumb">--%>

<%--                                            <a class="first__img" href="<%=Util.fullPath("Chitietsanpham?id="+p.getInt(1))%>"><img src="<%=p.getString(4)%>"></a>--%>
<%--                                            <!--											<a class="second__img animation1" href="single-product.jsp"><img src="images/books/2.jpg" alt="product image"></a>-->--%>
<%--                                            &lt;%&ndash;											<div class="hot__box">&ndash;%&gt;--%>
<%--                                            &lt;%&ndash;												<span class="hot-label">BEST SALLER</span>&ndash;%&gt;--%>
<%--                                            &lt;%&ndash;											</div>&ndash;%&gt;--%>
<%--                                        </div>--%>
<%--                                        <div class="product__content content--center">--%>
<%--                                            <h4><a href="<%=Util.fullPath("Chitietsanpham?id="+p.getInt(1))%>"><%=p.getString(2)%></a></h4>--%>
<%--                                            <ul class="prize d-flex">--%>
<%--                                                <li><%=p.getString(3)%>  ₫</li>--%>
<%--                                                &lt;%&ndash;												<li class="old_prize"><%=p.getDouble(3)%></li>&ndash;%&gt;--%>
<%--                                            </ul>--%>
<%--                                            <div class="action">--%>
<%--                                                <div class="actions_inner">--%>
<%--                                                    <ul class="add_to_links">--%>
<%--                                                        <li><a class="cart" href="<%=Util.fullPath("ShowCart")%>" title="Giỏ hàng"><i class="bi bi-shopping-bag4"></i></a></li>--%>
<%--                                                        <li><a class="wishlist" href="<%= Util.fullPath("AddCart?id="+p.getInt(1))%>" title="Thêm vào giỏ hàng"><i class="bi bi-shopping-cart-full"></i></a></li>--%>
<%--                                                        <li><a data-toggle="modal" title="Xem nhanh" class="quickview modal-view detail-link" href="#productmodal"><i class="bi bi-search"></i></a></li>--%>
<%--                                                    </ul>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                            <div class="product__hover--content">--%>
<%--                                                <ul class="rating d-flex">--%>
<%--                                                    <li class="on"><i class="zmdi zmdi-star "></i></li>--%>
<%--                                                    <li class="on"><i class="zmdi zmdi-star "></i></li>--%>
<%--                                                    <li class="on"><i class="zmdi zmdi-star "></i></li>--%>
<%--                                                    <li class="off"><i class="zmdi zmdi-star "></i></li>--%>
<%--                                                    <li class="off"><i class="zmdi zmdi-star"></i></li>--%>
<%--                                                </ul>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>

<%--                                    </div>--%>

<%--                                    <% } %>--%>


<%--                                </div>--%>


<%--                            </ul>--%>

<%--&lt;%&ndash;                            <div class="pagination">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                <a id="pre" onclick="plusPag(-1)" title="Trước"><i class="fas fa-chevron-left"></i></a>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                <a class="actived" onclick="currentPag(1)" title="1">1</a>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                <a  class="actived"  onclick="currentPag(2)"  title="2">2</a>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                <a  class="actived" onclick="currentPag(3)"  title="3">3</a>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                <a id="next" onclick="plusPag(1)" title="Sau"><i class="fas fa-chevron-right"></i></a>&ndash;%&gt;--%>

<%--&lt;%&ndash;                            </div>&ndash;%&gt;--%>
<%--                        </div>--%>



<%--                        <div class="shop-grid tab-pane fade" id="nav-list" role="tabpanel">--%>
<%--                            <ul class="myPages1">--%>
<%--                                <%--%>
<%--                                    ResultSet p3 = (ResultSet) request.getAttribute("p3");--%>
<%--                                    while (p3.next()){--%>

<%--                                %>--%>
<%--                                <div class="list__view__wrapper" style="margin-bottom: 100px">--%>


<%--                                    <!-- Start Single Product -->--%>
<%--                                    <div class="list__view">--%>
<%--                                        <div class="thumb">--%>
<%--                                            <a class="first__img" href="<%=Util.fullPath("Chitietsanpham3?id="+p3.getInt(1))%>"><img src="<%=p3.getString(4)%>"></a>--%>
<%--                                            <!--	        								<a class="second__img animation1" href="single-product.jsp"><img src="images/product/2.jpg" alt="product images"></a>-->--%>
<%--                                        </div>--%>
<%--                                        <div class="content">--%>
<%--                                            <h2><a href="<%=Util.fullPath("Chitietsanpham3?id="+p3.getInt(1))%>"><%=p3.getString(2)%></a></h2>--%>
<%--                                            <ul class="rating d-flex">--%>
<%--                                                <li class="on"><i class="zmdi zmdi-star "></i></li>--%>
<%--                                                <li class="on"><i class="zmdi zmdi-star "></i></li>--%>
<%--                                                <li class="on"><i class="zmdi zmdi-star "></i></li>--%>
<%--                                                <li class="off"><i class="zmdi zmdi-star "></i></li>--%>
<%--                                                <li class="off"><i class="zmdi zmdi-star"></i></li>--%>
<%--                                            </ul>--%>
<%--                                            <ul class="prize__box">--%>
<%--                                                <li><%=p3.getString(3)%> ₫</li>--%>
<%--                                                &lt;%&ndash;	        									<li class="old__prize">79.000 ₫</li>&ndash;%&gt;--%>
<%--                                            </ul>--%>
<%--                                            <p class="gioitheu" style="text-align: justify"><%=p3.getString(5)%></p>--%>
<%--                                            <ul class="cart__action d-flex">--%>
<%--                                                <li class="cart"><a href="<%= Util.fullPath("AddCart?id="+p3.getInt(1))%>">Thêm vào giỏ hàng</a></li>--%>
<%--                                                <!--	        									<li class="wishlist"><a href="cart.jsp"></a></li>-->--%>

<%--                                            </ul>--%>

<%--                                        </div>--%>
<%--                                    </div>--%>



<%--                                    <!-- End Single Product -->--%>
<%--                                </div>--%>
<%--                                <% } %>--%>
<%--                            </ul>--%>

<%--&lt;%&ndash;                            <div class="pagination">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                <a id="pre1" onclick="plusPag1(-1)" title="Trước"><i class="fas fa-chevron-left"></i></a>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                <a class="actived1" onclick="currentPag1(1)" title="1">1</a>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                <a class="actived1" onclick="currentPag1(2)" title="2">2</a>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                <a class="actived1" onclick="currentPag1(3)"  title="3">3</a>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                <a id="next1" onclick="plusPag1(1)" title="Sau"><i class="fas fa-chevron-right"></i></a>&ndash;%&gt;--%>
<%--&lt;%&ndash;                            </div>&ndash;%&gt;--%>
<%--                        </div>--%>

<%--                    </div>--%>
                </div>
            </div>
        </div>
    </div>
    <!-- End Shop Page -->
    <!-- Footer Area -->
    <jsp:include page="footer.jsp"></jsp:include>
    <!-- //Footer Area -->
    <!--        &lt;!&ndash; QUICKVIEW PRODUCT &ndash;&gt;-->
    <!--        ơdiv id="quickview-wrapper">-->
    <!-- Modal -->
    <div class="modal fade" id="productmodal" tabindex="-1" role="dialog"   style="width: 700px;height: 800px ;margin-left: 350px">
        <div class="modal-dialog modal__container" role="document">
            <div class="modal-content">
                <div class="modal-header modal__header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                </div>
                <div class="modal-body">
                    <div class="modal-product">
                        <!-- Start product images -->
                        <div class="product-images">
                            <div class="main-image images"><img src="images/books/347787_p88740mscan0001.jpg"
                                                                height="383" width="240"/>

                            </div>
                        </div>
                        <!-- end product images -->
                        <div class="product-info">
                            <h1>Dược Xã Hội</h1>
                            <div class="rating__and__review">
                                <ul class="rating">
                                    <li><span class="ti-star"></span></li>
                                    <li><span class="ti-star"></span></li>
                                    <li><span class="ti-star"></span></li>
                                    <li><span class="ti-star"></span></li>
                                    <li><span class="ti-star"></span></li>
                                </ul>

                            </div>
                            <div class="price-box-3">
                                <div class="s-price-box">
                                    <span class="new-price">250.000 ₫</span>
                                    <span class="old-price">298.000 ₫</span>
                                </div>
                            </div>
                            <div class="quick-desc">
                                <p>Tác giả: Hoàng Thy Nhạc Vũ</p>
                                <p>Nhà xuất bản: Nxb Tổng hợp TP.HCM<p>Nhà phát hành: NXBTH TPHCM</p><p>Mã Sản phẩm: 9786045895993</p><p>Khối lượng: 220.00 gam</p><p>Ngôn ngữ: Tiếng Việt</p>
                                <p>Định dạng: Bìa mềm</p>
                                <p>Kích thước: 14 x 22 cm</p>
                                <p>Ngày phát hành: 09/2019</p>
                                <p>Số trang: 168</p>
                            </div>

                            <div class="addtocart-btn">
                                <a href="#">Thêm vào giỏ hàng</a>
                            </div>
                        </div><!-- .product-info -->
                    </div><!-- .modal-product -->
                </div><!-- .modal-body -->
            </div><!-- .modal-content -->
        </div><!-- .modal-dialog -->
    </div>
    <!-- END Modal -->
</div>
<!-- END QUICKVIEW PRODUCT -->
</div>
<!-- //Main wrapper -->

<!-- JS Files -->
<script src="js/vendor/jquery-3.2.1.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/plugins.js"></script>
<script>
    var slideIndex = 1;
    showPag(slideIndex);
    function  plusPag(n) {
        showPag(slideIndex += n);

    }
    function  currentPag(n) {
        showPag(slideIndex = n);

    }
    function  showPag(n) {
        var i ;
        var page = document.getElementsByClassName("myPages");
        var color = document.getElementsByClassName("actived");

        if(n > page.length){
            slideIndex = 1;
        }
        if(n < 1){
            slideIndex=page.length;
        }
        for (i = 0;i < page.length;i++){
            page[i].style.display="none";}
        for(i = 0 ; i < color.length;i++){
            color[i].className = color[i].className.replace(" color-pag","");
        }
        // for(i = 0 ; i < color1.length;i++){
        //     color1[i].className = color1[i].className.replace("color-pag","");
        // }
        page[slideIndex-1].style.display="block";

        color[slideIndex-1].className +=" color-pag";
        // color1[slideIndex+1].className += "color-pag";
    }



    // PHANTRANG DOC
    var slideIndex = 1;
    showPag1(slideIndex);
    function  plusPag1(n) {
        showPag1(slideIndex += n);

    }
    function  currentPag1(n) {
        showPag1(slideIndex = n);

    }
    function  showPag1(n) {
        var i ;
        var page = document.getElementsByClassName("myPages1");
        var color = document.getElementsByClassName("actived1");

        if(n > page.length){
            slideIndex = 1;
        }
        if(n < 1){
            slideIndex=page.length;
        }
        for (i = 0;i < page.length;i++){
            page[i].style.display="none";}
        for(i = 0 ; i < color.length;i++){
            color[i].className = color[i].className.replace(" color-pag","");
        }
        // for(i = 0 ; i < color1.length;i++){
        //     color1[i].className = color1[i].className.replace("color-pag","");
        // }
        page[slideIndex-1].style.display="block";

        color[slideIndex-1].className +=" color-pag";
        // color1[slideIndex+1].className += "color-pag";
    }


</script>
<script src="js/active.js"></script>
</body>
</html>