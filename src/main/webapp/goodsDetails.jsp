<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ page import="com.POJO.GoodBean" %>
<%@ page import="com.JDBC.GoodDAO" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
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
<link rel="stylesheet" href="css/goods-page.css">
<!-- Modernizr JS -->
<script src="js/vendor/modernizr-2.8.3.min.js"></script>

<script src="js/easyResponsiveTabs.js" type="text/javascript"></script>
<script type="text/javascript">
	$(document).ready(function () {
		$('#horizontalTab').easyResponsiveTabs({
			type: 'default', //Types: default, vertical, accordion
			width: 'auto', //auto or any width like 600px
			fit: true   // 100% fit in a container
		});
	});
</script>
</head>

<body>
<!-- header start -->
<div class="header-pos" style="background-color: #f6b923">
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
</div>

<%

	String id = null;
	id = request.getParameter("id");
	int num_id = -1;
	try {
		num_id = Integer.parseInt(id);
	} catch (NumberFormatException e) {
		e.printStackTrace();
	}
	GoodDAO gd = new GoodDAO();

	GoodBean good = gd.getGoodsById(num_id);
%>


<!-- header end -->
<br><br><br><br><br><br>
<div style="margin-top: 50px; margin-bottom: 70px;">
	<%
		if(num_id != 1){
	%>
	<a href="goodsDetails.jsp?id=<%=num_id-2%>">
		<img src="img/left.png" style="width: 60px;height: 60px;margin-left:10em;">
	<%
		}

		if(num_id !=11){
	%>
	<a href="goodsDetails.jsp?id=<%=num_id+2%>">
		<img src="img/right.png" style="width: 60px;height: 60px;float: right;margin-right: 10em;">
	</a>
	<%
		}
	%>
</div>


<!-- start product_slider -->
<div style="margin-left: 80px; margin-right: 80px;">
<img src="<%=good.getImage()%>" style="width:200px; float:left;margin-top: 3em;margin-left: 10em;">
<div class="cont1 span_2_of_a1" style="float:left;margin-top: 3em;margin-left: 3em;">
	<h1 style="margin-bottom: 20px;"> <%=good.getGoodName()%></h1>
	<div class="price_single">
		<span class="reducedfrom">$<%=good.getPrice()*1.5%></span>
		<span class="actual">$<%=good.getPrice()%></span>
	</div>
	<h2 class="quick">Quick Overview:</h2>
	<div>${addCartMsg}</div>
	<p class="quick_desc"> <%=good.getIntroduction()%></p>

	<div class="box-quantity btn_form product-qty">

		<form action="<%= request.getContextPath()%>/addCart">
			<label style="margin-right: 10px;">Quantity</label>
			<input type="number" name="num" id="num" value="1" style="width: 45px; margin-right: 30px;"/>
			<%

			session.setAttribute("goodId", id);
		%>

			<button type="submit" class="btn btn-outline-warning">add to cart</button>
		</form>
	</div>

	<div style="margin-top: 3em;">
		<p>We are pleased that you choose our platform! </p>
	</div>
	<br><br>

		<div class="col-md-5" style="">
			<div class="table-responsive-md">
				<table class="table">
					<tbody>
					<tr>
						<td style="font-weight: bold;">Product Name</td>
						<td><%=good.getGoodName()%></td>
					</tr>
					<tr>
						<td style="font-weight: bold;">Monthly Sales</td>
						<td><%=good.getMonthlySales()%></td>
					</tr>
					<tr>
						<td style="font-weight: bold;">Brand</td>
						<td><%=good.getBrand()%></td>
					</tr>
					<tr >
						<td style="font-weight: bold;">Color</td>
						<td><%=good.getColor()%></td>
					</tr>
					</tbody>
				</table>
			</div>
		</div>

	<div class="col-md-5" style="">
		<div class="table-responsive-md">
			<table class="table">
				<tbody>
				<tr>
					<td style="font-weight: bold;">Price</td>
					<td><%=good.getPrice()%></td>
				</tr>
				<tr>
					<td style="font-weight: bold;">Material</td>
					<td><%=good.getMaterial()%></td>
				</tr>
				<tr>
					<td style="font-weight: bold;">Manufacturer</td>
					<td><%=good.getManufacturer()%></td>
				</tr>
				<tr >
					<td style="font-weight: bold;">Product Dimensions</td>
					<td><%=good.getProductDimensions()%></td>
				</tr>
				</tbody>
			</table>
		</div>
	</div>


</div>
</div>

<div class="clearfix"></div>


</body>
</html>
	
