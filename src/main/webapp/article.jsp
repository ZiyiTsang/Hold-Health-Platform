<%@ page import="com.JDBC.ArticleDAO" %>
<%@ page import="com.POJO.ArticleBean" %>
<%@ page import="java.util.List" %>
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
						<a href="homepage.html"><img src="img/home1.png" style="height:40px;"/></a>
					</div>
				</div>
				<div class="col-md-10 col-sm-9 col-xs-12 text-right xs-center">
				
					<div class="main-menu hidden-sm hidden-xs" style="display:inline-block;">
						<nav>
							<ul style="display:inline-block;">
								<li style="display:inline-block;"><a href="workouts.jsp">Workouts</a></li>
								<li style="display:inline-block;"><a href="article.jsp">Article</a></li>
								<li style="display:inline-block;"><a href="shop.jsp">Shop</a></li>
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
    ArticleDAO ad =new ArticleDAO();
    List<ArticleBean> articles;

    List<ArticleBean> aTitle, aTag, aAuthor;
    HttpSession session1 = (HttpSession) request.getSession();
    articles = (List<ArticleBean>) session1.getAttribute("aTitle");
    aTag= (List<ArticleBean>) session1.getAttribute("aTag");
    aAuthor = (List<ArticleBean>) session1.getAttribute("aAuthor");
    session.removeAttribute("aTitle");
    session.removeAttribute("aTag");
    session.removeAttribute("aAuthor");

    if(aTag== null && aAuthor == null){
        if (tag == null) {
            articles = ad.getAllArticle();
%>

<!-- slider-container start -->
<div class="slider-container">
    <!-- Slider Image -->
    <div id="mainSlider">
        <img src="img/articles_page.png" style="width: 100%;">
    </div>

    <div id="text">
        <div class="container">
            <div class="slide-text">
                <div class="middle-text">
                    <div class="cap-dec cap-1 wow bounceInRight" data-wow-duration="0.9s" data-wow-delay="0s">
                        <h2>Articles</h2>
                    </div>
                    <div class="cap-dec cap-2 wow bounceInRight" data-wow-duration="1.2s" data-wow-delay="0.2s">
                        <h2 style="color:white;font-size:30px;">You can find the article you need here!</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- slider-container end -->

<%
        }
        else {
            articles = ad.getArticleByTag(tag);
        }
    }else{
            System.out.println("work!!!!");
            articles.addAll(aAuthor);
            //videos.addAll(vTitle);
            articles.addAll(aTag);

            List<ArticleBean> tmp = ad.getAllArticle();
            int [] check;
            check = new int [tmp.size()];

            for(int j=0; j < articles.size(); j++){

                int temp;
                temp = articles.get(j).getId() - 6;
                //System.out.println("temp= " +temp);

                if(check[temp] != 0){
                    articles.remove(j);
                    j--;
                }
                else{
                    check[temp]++;
                }

            }
            //System.out.println(articles.size());
    }

%>

<!-- article start -->
        <div class="article-area">
            <div class="container">
                <div class="row">
                	<div>
					<h2 class="page-heading" style="margin-top: 40px;">
						<span class="cat-name">Articles</span>
						<span class="heading-counter">There are <%=articles.size()%> articles.</span>
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
                        <div>

                            <div>
                                <h3 class="menu1">Catalog</h3>
                                <!--initiate accordion-->
                                <div class="box1">
                                    <ul class="box1_list">
                                        <%
                                            List<ArticleBean> a1 = ad.getArticleByTag("Training tips");
                                            int num1 = a1.size();
                                            List<ArticleBean> a2 = ad.getArticleByTag("Training equipments");
                                            int num2 = a2.size();
                                            List<ArticleBean> a3 = ad.getArticleByTag("For muscle building");
                                            int num3 = a3.size();
                                            List<ArticleBean> a4 = ad.getArticleByTag("For fat loss");
                                            int num4 = a4.size();
                                        %>
                                        <h3 class="sidebar-title">Training</h3>
                                        <li><a href="article.jsp?tag=Training tips">Training tips<span>(<%=num1%>)</span></a></li>
                                        <li><a href="article.jsp?tag=Training equipments">Training equipments<span>(<%=num2%>)</span></a></li>
                                        <br><br>
                                        <h3 class="sidebar-title">Diet</h3>
                                        <li><a href="article.jsp?tag=For muscle building">For muscle building <span>(<%=num3%>)</span></a></li>
                                        <li><a href="article.jsp?tag=For fat loss">For fat loss <span>(<%=num4%>)</span></a></li>
                                    </ul>
                                </div>
                                <ul class="box2_list">
                                    <li><a href="article.jsp">Display All Articles</a></li>
                                </ul>
                            </div>
                        </div>



                    </div>

                    <%
                        if(articles.size()!=0){
                    %>

                    <div class="col-md-9 col-sm-9">
                        <br><br>
                        <form id="box" action="<%= request.getContextPath()%>/search?id=2" method="post">
                            <input type="text" name="Text" placeholder="Please enter the keyword">
                            <button type="submit" id="search">Search</button>
                        </form>
                        <br><br><br>
                        <div class="article-wrapper article-main" style="margin-bottom:80px;">
                            <div class="article-img">
                                <a href="#"><img alt="" src="<%=articles.get(0).getArtIMG()%>"></a>
                            </div>
                            <div class="article-info">
                                <h3><a href="articles-details.jsp?id=<%=articles.get(0).getId()%>"><%=articles.get(0).getTitle()%></a></h3>
                                <div class="article-meta article-large">
                                    <span><a href="articles-details.jsp?id=<%=articles.get(0).getId()%>"><i class="fa fa-tags" aria-hidden="true"></i> <%=articles.get(0).getTag()%></a></span>
                                    <span><a href="articles-details.jsp?id=<%=articles.get(0).getId()%>"><i class="fa fa-comment" aria-hidden="true"></i><%=articles.get(0).getComment_cnt()%> comments</a></span>
                                    <span><a href="articles-details.jsp?id=<%=articles.get(0).getId()%>"><i class="fa fa-eye" aria-hidden="true"></i> <%=articles.get(0).getView()%> views</a></span>
                                </div>
                                <p><%=articles.get(0).getAbstract()%></p>
                                <div class="read-more">
                                    <a href="articles-details.jsp?id=<%=articles.get(0).getId()%>">Read More </a>
                                </div>
                            </div>
                        </div>

                    </div>

                    <%
                        }

                        for(int i = 1; i < articles.size();i++){
                    %>
                    <div class="col-md-3 col-sm-3">
                    </div>
                    <div class="col-md-9 col-sm-9">
                        <div class="article-wrapper article-main" style="margin-bottom:80px;">
                            <div class="article-img">
                                <a href="#"><img alt="" src="<%=articles.get(i).getArtIMG()%>"></a>
                            </div>
                            <div class="article-info">
                                <h3><a href="articles-details.jsp?id=<%=articles.get(i).getId()%>"><%=articles.get(i).getTitle()%></a></h3>
                                <div class="article-meta article-large">
                                    <span><a href="articles-details.jsp?id=<%=articles.get(i).getId()%>"><i class="fa fa-tags" aria-hidden="true"></i> <%=articles.get(i).getTag()%></a></span>
                                    <span><a href="articles-details.jsp?id=<%=articles.get(i).getId()%>"><i class="fa fa-comment" aria-hidden="true"></i><%=articles.get(i).getComment_cnt()%> comments</a></span>
                                    <span><a href="articles-details.jsp?id=<%=articles.get(i).getId()%>"><i class="fa fa-eye" aria-hidden="true"></i> <%=articles.get(i).getView()%> views</a></span>
                                </div>
                                <p><%=articles.get(i).getAbstract()%></p>
                                <div class="read-more">
                                    <a href="articles-details.jsp?id=<%=articles.get(i).getId()%>">Read More </a>
                                </div>
                            </div>
                        </div>

                    </div>
                    <%
                        }
                    %>
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