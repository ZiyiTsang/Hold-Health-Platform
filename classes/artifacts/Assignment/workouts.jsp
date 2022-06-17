<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.POJO.VideoBean" %>
<%@ page import="com.JDBC.VideoDAO" %>
<%@ page import="java.util.List" %>
<%@ page import="org.apache.ibatis.jdbc.Null" %>
<%@ page import="jakarta.servlet.http.HttpSession" %>
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
								<li style="display:inline-block;"><a href="workouts.jsp">Workouts</a></li>
								<li style="display:inline-block;"><a href="article.jsp">Article</a></li>
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
<!-- header end-->

<%
	String tag = null;
	tag = request.getParameter("tag");
	VideoDAO vd = new VideoDAO();
	//List<VideoBean> videos = null;

	List<VideoBean> vTitle = null, vTag = null, vAuthor = null,videos = null;
	HttpSession session1 = request.getSession();
	videos = (List<VideoBean>) session1.getAttribute("vTitle");
	vTag= (List<VideoBean>) session1.getAttribute("vTag");
	vAuthor = (List<VideoBean>) session1.getAttribute("vAuthor");
	System.out.println(vAuthor);
	System.out.println(vTag);
	session.removeAttribute("vTitle");
	session.removeAttribute("vTag");
	session.removeAttribute("vAuthor");

	if(vTag== null && vAuthor == null){
			if (tag == null) {
				videos = vd.getAllVideo();
%>

<!-- slider-container start -->
<div class="slider-container">
	<!-- Slider Image -->
	<div id="mainSlider">
		<img src="img/workouts_fontIMG.jpeg" style="width: 100%;">
	</div>

	<div id="text">
		<div class="container">
			<div class="slide-text">
				<div class="middle-text">
					<div class="cap-dec cap-1 wow bounceInRight" data-wow-duration="0.9s" data-wow-delay="0s">
						<h2>Workouts</h2>
					</div>
					<div class="cap-dec cap-2 wow bounceInRight" data-wow-duration="1.2s" data-wow-delay="0.2s">
						<h2 style="color:white;font-size:30px;">Start your workouts with the videos!</h2>
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
				videos = vd.getVideoByTag(tag);
			}
			System.out.println("Not working");
		}else {
			System.out.println("work!!!!");
			videos.addAll(vAuthor);
			//videos.addAll(vTitle);
			videos.addAll(vTag);

			List<VideoBean> tmp = vd.getAllVideo();
			int[] check;
			check = new int[tmp.size()];

			for (int j = 0; j < videos.size(); j++) {
				int temp;
				temp = videos.get(j).getVideo_id() - 1;
				//System.out.println("temp= " +temp);

				if (check[temp] != 0) {
					videos.remove(j);
					j--;
				} else {
					check[temp]++;
				}
			}

	}
		int total = videos.size();

%>
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
										<label>Supported by</label>
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
						<div>
						<h3 class="menu1">Catalog</h3>
						<!--initiate accordion-->
						<div class="box1">
							<ul class="box1_list">
								<li><a href="workouts.jsp?tag=Fitness Dance">Fitness Dance</a></li>
								<li><a href="workouts.jsp?tag=ab Workout">ab Workout</a></li>
								<li><a href="workouts.jsp?tag=Dumbbell Workout">Dumbbell Workout</a></li>
								<li><a href="workouts.jsp?tag=Leg training">Leg training</a></li>
								<li><a href="workouts.jsp?tag=Warm Up">Warm Up</a></li>
								<li><a href="workouts.jsp?tag=gym Equipment">gym Equipment</a></li>
								<li><a href="workouts.jsp?tag=HIIT">HIIT</a></li>
								<li><a href="workouts.jsp?tag=Yoga">Yoga</a></li>
								<li><a href="workouts.jsp?tag=Pilates">Pilates</a></li>
							</ul>
						</div>
							<ul class="box2_list">
								<li><a href="workouts.jsp?tag">Display All Videos</a></li>
							</ul>
						</div>
					</div>
				</div>

				<div class="col-md-9 col-sm-9">
					<br><br>
					<form id="box" action="<%= request.getContextPath()%>/search?id=1" method="post">
						<input type="text" name="Text" placeholder="Please enter the keyword">
						<button type="submit" id="search">Search</button>
					</form>
					<br><br><br>
					<%
						if(total!=0){
					%>
					<div class="tab-content">
						<div role="tabpanel" class="tab-pane active" id="x" style="margin-top:80px; margin-bottom:30px;">

							<div class="row">
								<div class="video-wrapper" style="margin-bottom: 40px;">

									<div class="col-md-4 col-sm-6">
										<div class="video-img" style="margin-top:40px;">
											<!--videos.get(0).getAbsIMG()-->
											<a href="#"><img src="<%=videos.get(0).getAbsIMG()%>" alt="" /></a>
										</div>
									</div>
									<div class="col-md-8 col-sm-12">
										<div class="video-content" style="margin-left: 30px;">
											<div class="pro-title">
												<h3><a href="<%=videos.get(0).getLink()%>"><%=videos.get(0).getTitle()%></a></h3>
											</div>
											<div class="creater">
												<!--videos.get(0).getAuthorIMG()-->
												<p><img src="<%=videos.get(0).getAuthorIMG()%>"><%=videos.get(0).getAuthor()%></p>

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
									<div class="video-img" style="margin-top:40px;">
										<a href="#"><img src="<%=videos.get(i).getAbsIMG()%>" alt="" /></a>
									</div>
								</div>
								<div class="col-md-8 col-sm-12">
									<div class="video-content" style="margin-left: 30px;">
										<div class="pro-title">
											<h3><a href="<%=videos.get(i).getLink()%>"><%=videos.get(i).getTitle()%></a></h3>
										</div>
										<div class="creater">
											<p><img src="<%=videos.get(i).getAuthorIMG()%>"><%=videos.get(i).getAuthor()%></p>

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