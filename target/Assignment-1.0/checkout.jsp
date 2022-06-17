<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>checkout</title>

    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- All css files are included here. -->
    <!-- Bootstrap framework main css -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/bootstrap.css">
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
                        <a href="Cart-fill.jsp"><img src="img/cart-fill.png" style="height:40px;margin-left: 20px;"/></a>
                    </div>
                </div>
                <div class="col-md-10 col-sm-9 col-xs-12 text-right xs-center">

                    <div class="main-menu hidden-sm hidden-xs" style="display:inline-block;">
                        <nav>
                            <ul style="display:inline-block;">
                                <li style="display:inline-block;"><a href="workouts.jsp">Workouts</a></li>
                                <li style="display:inline-block;"><a href="article.jsp">Articles</a></li>
                                <li style="display:inline-block;"><a href="shop.jsp">Shop</a></li>
                                <li style="display:inline-block;"><a href="login.jsp">login</a></li>
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
                </div>
                <div class="address-info">
                    <form>
                        <div class="col-md-4" style="margin-left: 50px;">
                            Country:
                            <input type="text" name="country" style="width: 150px;"><br><br>
                            City:
                            <input type="text" name="city">
                        </div>

                        <div class="col-md-4" style="margin-left: 20px;">
                            State:
                            <input type="text" name="country"><br><br>
                            Street:
                            <input type="text" name="street">
                        </div>

                        <button class="btn btn-outline-danger" type="submit" value="Submit" style="margin-top:150px; float: right;">Submit</button>
                    </form>

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
            </div>
            <div class="account-btn"><button>Submit order</button></div>
        </div>
    </div>
</div>
</body>
</html>
