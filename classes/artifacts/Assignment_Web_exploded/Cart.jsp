<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Cart</title>

    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- All css files are included here. -->
    <!-- Bootstrap framework main css -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- This core.css file contents all plugings css file. -->
    <link rel="stylesheet" href="css/core.css">
    <!-- Theme main style -->
    <link rel="stylesheet" href="style.css">
    <!-- this page css -->
    <link rel="stylesheet" href="css/Shop_style.css">
    <!-- Modernizr JS -->
    <script src="js/vendor/modernizr-2.8.3.min.js"></script>
</head>
<body>
<!-- header start -->
<header class="header-pos" style="background-color: #f6b923">
    <div class="header-area header-middle">
        <div class="container-fluid">
            <!-- navigation bar -->
            <div class="row">
                <!-- home button -->
                <div class="col-md-2 col-sm-3 col-xs-12">
                    <div style="padding-top: 30px;" >
                        <a href="homepage.html"><img src="img/home2.png" style="height:40px;"/></a>
                        <a href="homepage.html"><img src="img/cart-fill.png" style="height:40px;margin-left: 20px;"/></a>
                    </div>
                </div>
                <div class="col-md-10 col-sm-9 col-xs-12 text-right xs-center">

                    <div class="main-menu hidden-sm hidden-xs" style="display:inline-block;">
                        <nav>
                            <ul style="display:inline-block;">
                                <li style="display:inline-block;"><a href="">Workouts</a></li>
                                <li style="display:inline-block;"><a href="">Articles</a></li>
                                <li style="display:inline-block;"><a href="">Shop</a></li>
                                <li style="display:inline-block;"><a href="">login</a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>
<!-- header end -->

<div style="margin-top: 10em;margin-left: 3em;">
    <div class="container">
        <div class="col-md-3">
            <h3 class="menu1">Look Around</h3>
            <!--initiate accordion-->
            <div class="box1">
                <img src="img/p1.jpg">
                <br><br>
                <h4 style="float: left;">T-shirt</h4>
                <h4 style="float: contour;margin-left:8em;color:firebrick">$140</h4>
                <br>
                <img src="img/p1.jpg">
                <br><br>
                <h4 style="float: left;">T-shirt</h4>
                <h4 style="float: contour;margin-left:8em;color:firebrick">$140</h4>
            </div>

        </div>



        <br><br>
        <!---->
        <div class="col-md-8">
            <h2>Shopping cart is empty</h2>
            <br>
            <p>You have no items in your shopping cart yet.</p>
            <p>Click <a href="#">here</a> to continue shopping.</p>
                <div class="clearfix"> </div>
            </div>
        </div>
        <div class="clearfix"> </div>
    </div>
</div>

<br><br><br><br>
<footer class="page-footer">
    <div class="footer-copyright text-center">@ 2022 Copyright: XMUM</div>
</footer>
<!-- jquery latest version -->
<script src="js/vendor/jquery-1.12.0.min.js"></script>
<!-- Bootstrap framework js -->
<script src="js/bootstrap.min.js"></script>
<!-- jquery.nivo.slider js -->
<script src="js/jquery.nivo.slider.pack.js"></script>
<!-- All js plugins included in this file.  -->
<script src="js/plugins.js"></script>
<!-- Main js file that contents all jQuery plugins activation. -->
<script src="js/main.js"></script>
</body>
</html>
