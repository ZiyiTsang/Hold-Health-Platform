<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Cart-fill</title>

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
    <link rel="stylesheet" href="css/checkout.css">
    <!-- Modernizr JS -->
    <script src="js/vendor/modernizr-2.8.3.min.js"></script>
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
<br><br><br><br><br><br>
<div class="public-shop-account">
    <div class="content">
        <div class="shop-account-head"> Fill in and check the order form  </div>
        <div class="shop-account-info">
            <div class="edit-address">
                <div class="address-head">
                    <span>Consignee information</span>
                    <a href="">Add the receiving address</a>
                </div>
                <div class="address-info">
                    <span style="vertical-align: center;">Home</span>
                    <span>xxx xx State xx City xx Street</span>
                    <a href="">Edit</a>
                </div>
            </div>
            <div class="edit-pay">
                <div class="pay-head">Payment pattern</div>
                <div class="pay-info">
                    <span>Pay on delivery</span>
                    <span>Online payment</span>
                    <a href="">More>></a>
                </div>
            </div>
        </div>
        <div class="shop-account-detail">
            <div class="account-address">
                <span><i>3</i> products, total price:</span>
                <span>$14797.00</span>
                <span>Freight:</span>
                <span><i>$0.00</i></span>
                <span>Discount:</span>
                <span>-$50.00</span>
            </div>
            <div class="account-pay">
                <span> Amount <i>$14747.00 </i></span>
                <span>Deliver to: xxxx   xxxxxxxx  Consignee: xxx Phone number: xxx</span>
            </div>
            <div class="account-btn"><button>Submit order</button></div>
        </div>
    </div>
</div>
</body>
</html>
