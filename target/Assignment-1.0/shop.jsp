<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.POJO.GoodBean" %>
<%@ page import="com.JDBC.GoodDAO" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html class="no-js" lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Shop</title>

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
<header class="header-pos">
	<div class="header-area header-middle">
		<div class="container-fluid">
			<!-- navigation bar -->
			<div class="row">
				<!-- home button -->
				<div class="col-md-2 col-sm-3 col-xs-12">
					<div style="padding-top: 30px;" >
						<a href="homepage.html"><img src="img/home2.png" style="height:40px;"/></a>
						<a href="homepage.html"><img src="img/cart.png" style="height:40px;margin-left: 20px;"/></a>
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

<%
	String tag = null;
	tag = request.getParameter("tag");
	GoodDAO gd = new GoodDAO();
	List<GoodBean> goods;
	if (tag == null) {
		goods = gd.getAllGoods();
%>
<!-- slider-container start -->
<div class="slider-container">
	<!-- Slider Image -->
	<div id="mainSlider">
		<img src="img/Shop.jpg" style="width: 100%;">
	</div>

	<div id="text">
		<div class="container">
			<div class="slide-text">
				<div class="middle-text">
					<div class="cap-dec cap-1 wow bounceInRight" data-wow-duration="0.9s" data-wow-delay="0s">
						<h2>Online shop</h2>
					</div>	
					<div class="cap-dec cap-2 wow bounceInRight" data-wow-duration="1.2s" data-wow-delay="0.2s">
						<h2 style="color:white;font-size:30px;">Here you can buy the items of your choice</h2>
					</div>	
				</div>	
			</div>				
		</div>
	</div>
</div>
<!-- slider-container end -->

<%
	}
	else{
		goods = gd.getGoodByTag(tag);
	}
	int total = goods.size();
%>

<br>
<br>
<br>
<br>
<br>
<br>

<div class="content_top">
	<div class="container">
		<div class="col-md-3">
				<h3 class="menu1">What to buy?</h3>						
			<!--initiate accordion-->
		<div class="box1">
			<ul class="box1_list">
				<li><a href="shop.jsp?tag=Home Equipment">Home Equipment</a></li>
				<li><a href="shop.jsp?tag=Sports bracelets">Sports bracelets</a></li>
				<li><a href="shop.jsp?tag=Sports equipment">Sports equipment</a></li>
				<li><a href="shop.jsp?tag=Health Food">Health Food</a></li>
				<li><a href="shop.jsp?tag=Women's Clothing">Women's Clothing</a></li>
				<li><a href="shop.jsp?tag=Men's Clothing">Men's Clothing</a></li>
			</ul>
		</div>
		<ul class="box2_list">
				<li><a href="shop.jsp">Display all the goods</a></li>
				<li><a href="#">New Arrivals</a></li>
				<li><a href="#">Sales</a></li>
				<li><a href="#">Story Behind</a></li>
		 </ul>

		</div>




			<!---->
			<div class="col-md-8">
				<!---->
				<div id="box">
					<input type="text" name="search" placeholder="Please enter the keyword">
					<div id="search">Search</div>
				</div>
				<br><br><br>
				<div>
					<%
						for(int i=0;i<total;i++){
					%>
					<div class="col-md-4 cup-in">
						<a href="#"><img src="img/p1.jpg" class="img-responsive" alt=""></a>
						<p><%=goods.get(i).getGoodName()%></p>
						<span class="dollar">$<%=goods.get(i).getPrice()%></span>
						<div class="details-in">
							<a href="#" class="details">Details</a>
						</div>
						<div class="clearfix"> </div>
					</div>
					<%
						}
					%>
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