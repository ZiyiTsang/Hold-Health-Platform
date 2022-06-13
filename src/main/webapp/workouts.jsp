<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.POJO.VideoBean" %>
<%@ page import="com.JDBC.VideoDAO" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Health</title>

<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">


<!-- All css files are included here. -->
<!-- Bootstrap framework main css -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<!-- This core.css file contents all plugings css file. -->
<link rel="stylesheet" href="css/core.css">
<!-- Theme main style -->
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="workout-page.css">
<!-- Modernizr JS -->
<script src="js/vendor/modernizr-2.8.3.min.js"></script>
<!-- this page css -->
<link rel="stylesheet" href="css/Shop_style.css">
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
					</div>
				</div>
				<div class="col-md-10 col-sm-9 col-xs-12 text-right xs-center">
				
					<div class="main-menu hidden-sm hidden-xs" style="display:inline-block;">
						<nav>
							<ul style="display:inline-block;">
								<li style="display:inline-block;"><a href="">Workouts</a></li>
								<li style="display:inline-block;"><a href="">Health</a></li>
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
	VideoDAO vd = new VideoDAO();
	List<VideoBean> videos = vd.getAllVideo();
	int total = videos.size();
	boolean status = false;
%>
	<div id="fitness">

	</div>
	<!-- display start -->
	<div class="workouts-area" style="padding-top: 100px;">
		<div class="container">
			<div class="row">
				<div>
					<h2 class="page-heading" style="margin-top: 40px;">
						<span class="cat-name">Work outs</span>
						<span class="heading-counter">There are <%=videos.size()%> videos.</span>
					</h2>
					<div class="shop-page-bar">
						<div>	
							<div class="workouts-bar">
								<!-- Nav tabs -->
								<div class="selector-field hidden-xs" style="margin-left: 20px; float: left;">
									<div class="video-icon">
										<label>Sort by</label>
										<a href="#"><img src="img/youtube.png" alt="" /></a>
										<a href="#"><img src="img/bilibili.png" alt="" /></a>
									</div>
								</div>
							</div>
						</div> 
					</div>
				</div>

				<div>
					<div class="col-md-3 col-sm-3">
						<div style="position:fixed;">
						<h3 class="menu1">Catalog</h3>
						<!--initiate accordion-->
						<div class="box1">
							<ul class="box1_list">
								<li><a href="#fitness">Fitness Dance</a></li>
								<li><a href="#ab">ab Workout</a></li>
								<li><a href="#dumbbell">Dumbbell Workout</a></li>
								<li><a href="#leg">Leg training</a></li>
								<li><a href="#warm">Warm Up</a></li>
								<li><a href="#gym">gym Equipment</a></li>
								<li><a href="#hiit">HIIT</a></li>
								<li><a href="#yoga">Yoga</a></li>
								<li><a href="#pilates">Pilates</a></li>
							</ul>
						</div>
						</div>
					</div>
				</div>
				<%
					if(total!=0){
				%>
				<div class="col-md-9 col-sm-9">
					<div class="tab-content">
						<div role="tabpanel" class="tab-pane active" id="x" style="margin-top:80px; margin-bottom:30px;">

							<div class="row">
								<div class="video-wrapper" style="margin-bottom: 40px;">

									<div class="col-md-4 col-sm-6">
										<div class="video-img">
											<a href="#"><img src="img/pic1.jpeg" alt="" /></a>
										</div>
									</div>
									<div class="col-md-8 col-sm-12">
										<div class="video-content" style="margin-left: 30px;">
											<div class="pro-title">
												<h3><a href="<%=videos.get(0).getLink()%>"><%=videos.get(0).getTitle()%></a></h3>
											</div>
											<div class="creater">
												<p><img src="img/bilibili.png"><%=videos.get(0).getAuthor()%></p>

											</div>
											<div class="video-description">
												<p><%=videos.get(0).getAbstract_()%></p>
											</div>
										</div>
									</div>

								</div>
							</div>
						</div>
					</div></div>
				<%
					}

					for(int i = 1; i < total;i++){
				%>
				<div class="col-md-3 col-sm-3">
				</div>
				<!-- Tab panes --> <!-- <span class="new-label">New</span> -->
				<div class="col-md-9 col-sm-9">
				<div class="tab-content">
					<div role="tabpanel" class="tab-pane active" id="x1" style="margin-top:80px; margin-bottom:30px;">
					
						<div class="row">
							<div class="video-wrapper" style="margin-bottom: 40px;">
							
								<div class="col-md-4 col-sm-6">
									<div class="video-img">
										<a href="#"><img src="img/pic1.jpeg" alt="" /></a>
									</div>
								</div>
								<div class="col-md-8 col-sm-12">
									<div class="video-content" style="margin-left: 30px;">
										<div class="pro-title">
											<h3><a href="<%=videos.get(i).getLink()%>"><%=videos.get(i).getTitle()%></a></h3>
										</div>
										<div class="creater">
											<p><img src="img/bilibili.png"><%=videos.get(i).getAuthor()%></p>
											
										</div>
										<div class="video-description">
											<p><%=videos.get(i).getAbstract_()%></p>
										</div>
									</div>
								</div>
								
							</div>	
						</div>
					</div>
				</div></div>
					<%
						}
					%>
				
			</div>				
		</div>
	</div>
			
	<!-- display-area end -->


<!-- xxxx end -->
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