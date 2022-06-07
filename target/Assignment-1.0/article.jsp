<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<link rel="stylesheet" href="article-page.css">
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
						<a href="homepage.html"><img src="img/home1.png" style="height:40px;"/></a>
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


<!-- article start -->
        <div class="article-area">
            <div class="container">
                <div class="row">
                	<div>
					<h2 class="page-heading" style="margin-top: 40px;">
						<span class="cat-name">Articles</span>
						<span class="heading-counter">There are 6 articles.</span>
					</h2>
					<div class="shop-page-bar">
						<div>	
							<div class="workouts-bar">
								<!-- Nav tabs -->
								<div class="selector-field hidden-xs" style="margin-left: 20px; float: left;">
									<p>这里没想好放什么</p>
								</div>
							</div>
						</div> 
					</div>
				</div>
                    <div class="col-md-3 col-sm-3">
                        <div class="column" style="position:fixed;">
                            <div class="title-block left-nav">
                            <h2 >Catalog</h2>
                            			
                            <div class="sidebar-widget">
                                <h3 class="sidebar-title">Training</h3>
                                <ul class="sidebar-menu">
                                    <li><a href="#">Training tips <span>(4)</span></a></li>
                                    <li><a href="#">Training equipments <span>(4)</span></a></li>
                                </ul>
                            </div>
                            <div class="sidebar-widget">
                                <h3 class="sidebar-title">Diet</h3>
                                <ul class="sidebar-menu">
                                    <li><a href="#">For muscle building <span>(4)</span></a></li>
                                    <li><a href="#">For fat loss <span>(4)</span></a></li>
                                </ul>
                            </div>
                            <div class="sidebar-widget">
                                <h3 class="sidebar-title">Health</h3>
                                <ul class="sidebar-menu">
                                	<li><a href="#">Teenagers(12-17) <span>(4)</span></a></li>
                                    <li><a href="#">Adults(18-40) <span>(4)</span></a></li>
                                    <li><a href="#">Adults(41-60) <span>(4)</span></a></li>
                                </ul>
                            </div>  
                            </div>                      
                        </div>
                    </div>
                    
                    
                    <div class="col-md-9 col-sm-9">
                        <div class="article-wrapper article-main" style="margin-bottom:80px;">
                            <div class="article-img">
                                <a href="#"><img alt="" src="img/pic1.jpeg"></a>
                            </div>
                            <div class="article-info">
                                <h3><a href="#">这里是标题！！</a></h3>
                                <div class="article-meta article-large">
                                    <span><a href="#"><i class="fa fa-tags" aria-hidden="true"></i> xx分类</a></span>
                                    <span><a href="#"><i class="fa fa-comment" aria-hidden="true"></i> x Comments</a></span>
                                    <span><a href="#"><i class="fa fa-eye" aria-hidden="true"></i> x views</a></span>
                                </div>
                                 <p>这里是abstract</p>
                                <div class="read-more">
                                    <a href="#">Read More </a>
                                </div>
                            </div>
                        </div>
                        
                        
                        <div class="article-wrapper article-main" style="margin-bottom:80px;">
                            <div class="article-img">
                                <a href="#"><img alt="" src="img/pic1.jpeg"></a>
                            </div>
                            <div class="article-info">
                                <h3><a href="#">这里是标题！！</a></h3>
                                <div class="article-meta article-large">
                                    <span><a href="#"><i class="fa fa-tags" aria-hidden="true" style="margin-right:20px;"></i> xx分类</a></span>
                                    <span><a href="#"><i class="fa fa-comment" aria-hidden="true" style="margin-right:20px;"></i> x Comments</a></span>
                                    <span><a href="#"><i class="fa fa-eye" aria-hidden="true" style="margin-right:20px;"></i> x views</a></span>
                                </div>
                                <p>这里是abstract</p>
                                <div class="read-more">
                                    <a href="#">Read More </a>
                                </div>
                            </div>
                        </div>
                       
                        
                    </div>
                </div>
            </div>
        </div>
        <!-- article end -->






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