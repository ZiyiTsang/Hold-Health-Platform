<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
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
<!-- start product_slider -->
<img src="img/p1.jpg" style="float:left;margin-top: 10em;margin-left: 10em;">
<div class="cont1 span_2_of_a1" style="float:left;margin-top: 10em;margin-left: 3em;">
	<h1> Lorem Ipsum</h1>
	<div class="price_single">
		<span class="reducedfrom">$140.00</span>
		<span class="actual">$120.00</span>
	</div>
	<h2 class="quick">Quick Overview:</h2>
	<p class="quick_desc"> Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; es</p>
	<ul class="product-qty">
		<span>SIZE</span>
		<select>
			<option>25</option>
			<option>26</option>
			<option>27</option>
			<option>28</option>
			<option>29</option>
			<option>30</option>
			<option>31</option>
			<option>32</option>
			<option>33</option>
		</select>
	</ul>
	<ul class="product-qty">
		<span>Length</span>
		<select>
		<option>32</option>
		<option>34</option>
		</select>
	</ul>
	<ul class="product-qty">
		<span>Quantity:</span>
		<select>
			<option>1</option>
			<option>2</option>
			<option>3</option>
			<option>4</option>
			<option>5</option>
			<option>6</option>
		</select>
	</ul>
	<div class="btn_form">
		<form>
			<input type="submit" value="Add to Cart" title="">
		</form>
	</div>
	<br><br>
	<div>
		<img src="img/left.png" style="width: 40px;height: 40px;">
		<img src="img/right.png" style="width: 40px;height: 40px;margin-left: 4em">
	</div>
</div>

<div class="clearfix"></div>


</body>
</html>
	
