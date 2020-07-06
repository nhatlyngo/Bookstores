<%@ page import="vn.edu.nlu.fit.Utill.Util" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!doctype html>
<html class="no-js" lang="zxx">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Login</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Favicons -->
    <link rel="shortcut icon" href="images/favicon.ico">
    <link rel="apple-touch-icon" href="images/icon.png">

    <!-- Google font (font-family: 'Roboto', sans-serif; Poppins ; Satisfy) -->
    <link href="https://fonts.googleapis.com/css?family=Lato:300,300i,400,400i,700,700i,900" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,300i,400,400i,500,600,600i,700,700i,800" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Satisfy" rel="stylesheet">

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
                            <span class="breadcrumb_item active">Đăng nhập</span>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <section class="sign-in">
        <div class="container login">
            <div class="signin-content" >
                <form action="<%=Util.fullPath("DoLogin")%>" method="post">
                <div class="signin-image" style="margin-top: 80px">
                    <figure><img src="images/signin.jpg" alt="sing up image"></figure>
                    <a href="createacc.jsp" class="signup-image-link">Tạo tài khoản</a>
                </div>

                <div class="signin-form" style="margin-top: -410px">
                    <h2 class="form-title" style="font-family: Arial">Đăng nhập</h2>
                    <form method="POST" class="register-form" id="login-form">
                        <div class="form-group">
                            <label class="la1" for="your_name"><i class="zmdi zmdi-account material-icons-name"></i></label>
                            <input class="in1" type="text" name="uname"  id="your_name" placeholder="Email"/>
                        </div>
                        <div class="form-group">
                            <label  class="la1" for="your_pass"><i class="zmdi zmdi-lock"></i></label>
                            <input  class="in1"  type="password" name="pass" id="your_pass" placeholder="Mật khẩu"/>
                        </div>
                        <div class="form-group">
                            <input type="checkbox" name="remember-me" id="remember-me" class="agree-term" />
                            <label for="remember-me" class="label-agree-term" style="font-family: Arial"><span><span></span></span>Nhớ mật khẩu</label>
                            <label for="remember-me" class="label-agree-term" style="font-family: Arial;margin-left: 50px"><a href="forgetpass.jsp">Quên mật khẩu ?</a></label>
                        </div>
                        <!--                        <div class="form-group">-->

                        <!--                        <div class="gf" style="font-family: Arial;margin-left: 175px;margin-top: -56px"><a href="forgetpass.html">Quên mật khẩu ?</a></div>-->
                        <!--                        </div>-->
                        <div class="form-group form-button">
                            <input type="submit" name="signin" id="signin" class="form-submit" style="margin-top: 25px" value="Đăng nhập"/>
                        </div>
                    </form>
                    <div class="social-login">
                        <span class="social-label" style="font-family: Arial">Hoặc đăng nhập bằng</span>
                        <ul class="socials">
                            <li><a href="#"><i class="display-flex-center zmdi zmdi-facebook"></i></a></li>
                            <li><a href="#"><i class="display-flex-center zmdi zmdi-twitter"></i></a></li>
                            <li><a href="#"><i class="display-flex-center zmdi zmdi-google"></i></a></li>
                        </ul>
                    </div>

                </div>
                </form>
            </div>

        </div>
    </section>


<%--    <div class="maincontent bg--white pt--80 pb--55">--%>
<%--        <div class="login_dn">--%>
<%--            <form action="<%=Util.fullPath("DoLogin")%>" method="post">--%>
<%--                <p class="text_dn">ĐĂNG NHẬP</p>--%>
<%--                <div class="row_tk">--%>
<%--                    <p class="taikhoan">Tài khoản: </p>--%>
<%--                    <input type="text" name="uname" class="text_tk" id="tk_dn" placeholder="  Nhập tên khoản">--%>
<%--                </div>--%>
<%--                <div class="row_mk">--%>
<%--                    <p class="matkhau">Mật khẩu: </p>--%>
<%--                    <input type="password"  name="pass" class="text_mk" id="mk_dn" placeholder="  Nhập mật khẩu ">--%>
<%--                </div>--%>
<%--                <div class="qmk_ltt">--%>
<%--                    <input class="luutt" type="checkbox" id="ltt" name="ltt" value="Ghi nhớ thông tin">  Ghi nhớ thông tin--%>
<%--                    <a href="forgetpass.jsp" class="qmk"><u>Quên mật khẩu ?</u></a>--%>
<%--                </div>--%>
<%--                <button type="submit" class="sm_dn" id="dangnhap">Đăng nhập</button>--%>
<%--                <div class="dk">--%>
<%--                    <p class="cctk">Bạn chưa có tài khoản vui lòng ? </p>--%>
<%--                    <a href="createacc.jsp" class="dktk"><u>Đăng kí</u></a>--%>
<%--                </div>--%>
<%--            </form>--%>

<%--        </div>--%>


<%--    </div>--%>
    <jsp:include page="footer.jsp"></jsp:include>
    <!-- //Footer Area -->

</div>
<!-- //Main wrapper -->

<!-- JS Files -->
<script src="js/vendor/jquery-3.2.1.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/plugins.js"></script>
<!-- Google Map js -->
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBmGmeot5jcjdaJTvfCmQPfzeoG_pABeWo"></script>
<script>
    // When the window has finished loading create our google map below
    google.maps.event.addDomListener(window, 'load', init);

    function init() {
        // Basic options for a simple Google Map
        // For more options see: https://developers.google.com/maps/documentation/javascript/reference#MapOptions
        var mapOptions = {
            // How zoomed in you want the map to start at (always required)
            zoom: 12,

            scrollwheel: false,

            // The latitude and longitude to center the map (always required)
            center: new google.maps.LatLng(23.7286, 90.3854), // New York

            // How you would like to style the map.
            // This is where you would paste any style found on Snazzy Maps.
            styles:
                [

                    {
                        "featureType": "administrative",
                        "elementType": "labels.text.fill",
                        "stylers": [
                            {
                                "color": "#444444"
                            }
                        ]
                    },
                    {
                        "featureType": "landscape",
                        "elementType": "all",
                        "stylers": [
                            {
                                "color": "#f2f2f2"
                            }
                        ]
                    },
                    {
                        "featureType": "poi",
                        "elementType": "all",
                        "stylers": [
                            {
                                "visibility": "off"
                            }
                        ]
                    },
                    {
                        "featureType": "road",
                        "elementType": "all",
                        "stylers": [
                            {
                                "saturation": -100
                            },
                            {
                                "lightness": 45
                            }
                        ]
                    },
                    {
                        "featureType": "road.highway",
                        "elementType": "all",
                        "stylers": [
                            {
                                "visibility": "simplified"
                            }
                        ]
                    },
                    {
                        "featureType": "road.arterial",
                        "elementType": "labels.icon",
                        "stylers": [
                            {
                                "visibility": "off"
                            }
                        ]
                    },
                    {
                        "featureType": "transit",
                        "elementType": "all",
                        "stylers": [
                            {
                                "visibility": "off"
                            }
                        ]
                    },
                    {
                        "featureType": "transit.station.bus",
                        "elementType": "labels.icon",
                        "stylers": [
                            {
                                "saturation": "-16"
                            }
                        ]
                    },
                    {
                        "featureType": "water",
                        "elementType": "all",
                        "stylers": [
                            {
                                "color": "#04b7ff"
                            },
                            {
                                "visibility": "on"
                            }
                        ]
                    }
                ]
        };

        // Get the HTML DOM element that will contain your map
        // We are using a div with id="map" seen below in the <body>
        var mapElement = document.getElementById('googleMap');

        // Create the Google Map using our element and options defined above
        var map = new google.maps.Map(mapElement, mapOptions);

        // Let's also add a marker while we're at it
        var marker = new google.maps.Marker({
            position: new google.maps.LatLng(23.7286, 90.3854),
            map: map,
            title: 'Dcare!',
            icon: 'images/icons/map.png',
            animation:google.maps.Animation.BOUNCE

        });
    }
</script>

<script src="js/active.js"></script>

</body>
</html>