<%@ page import="com.JDBC.ArticleDAO" %>
<%@ page import="com.POJO.ArticleBean" %>
<%@ page import="com.POJO.UserBean" %>
<%@ page import="com.JDBC.UserDAO" %>
<%@ page import="java.util.List" %>
<%@ page import="com.POJO.CommentBean" %>
<%@ page import="com.JDBC.CommentDAO" %>
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
								<%
									HttpSession session1 = (HttpSession) request.getSession();
									UserDAO ud = new UserDAO();
									UserBean user = null;
									user = (UserBean) session1.getAttribute("user");
									if(user == null){

								%>
								<li style="display:inline-block;"><a href="login.jsp">login</a></li>
								<%
								}else{
								%>
								<li style="display:inline-block;"><a href="${pageContext.request.contextPath}/Logout">login out</a></li>
								<img src="<%=user.getProfile()%>" alt="" style="display:inline-block; width:40px;border-radius: 50px;">
								<li style="display:inline-block;"><p style="font-weight: bold; font-size:20px; margin-left:10px; color: #1a1e21;"><%=user.getUsername()%></p></li>

								<%

									}
								%>
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
	String id = null;
	id = request.getParameter("id");
	int num_id = -1;
	try {
		num_id = Integer.parseInt(id);
	} catch (NumberFormatException e) {
		e.printStackTrace();
	}
	ArticleDAO ad = new ArticleDAO();
	ad.moreViewByArticleID(num_id);
	ArticleBean article = ad.getArticleById(num_id);
%>

<br><br><br><br><br><br>
<div style="margin-top: 50px;">
	<%
		if(num_id != 6){
	%>
	<a href="articles-details.jsp?id=<%=num_id-1%>">
		<img src="img/left.png" style="width: 60px;height: 60px;margin-left:10em;">
			<%
		}

		if(num_id !=11){
	%>
		<a href="articles-details.jsp?id=<%=num_id+1%>">
			<img src="img/right.png" style="width: 60px;height: 60px;float: right;margin-right: 10em;">
		</a>
			<%
		}
	%>
</div>




<div class="container">
	<div class="artDe-area row">
		<div class="row">
			<h3 class="artDe-title"><%=article.getTitle()%></h3>
			<div class="artDe-author">
				<p><img src="<%=article.getArtAuthorIMG()%>"><%=article.getAuthor()%></p>
			</div>
			
			<div class="artDe-text">
				<p><%=article.getContent()%></p>
			</div>
		</div>
		<%
			CommentDAO cd = new CommentDAO();
			List<CommentBean> comments = cd.getCommentByArticleId(num_id);
		%>
		<div class="row">
			<div class="artDe-comment-area">
				<ul style="list-style: none;">
					<li style="font-weight:600; font-size:20px;float:left;">Comments</li>
					<li style="font-size:15px; padding-left:30px;float:left;">(<%=comments.size()%>)</li>
				</ul><br>

				<div id="error_message"></div>

				<form class="make-comment" onsubmit="return validate();" action="<%= request.getContextPath()%>/commentServlet?id=<%=id%>" method="post">
					<div>${addCommentMsg}${Msg}</div>
					<img src="<%=user.getProfile()%>" class="artDe-userPhoto">
					<textarea id="content" rows="" cols="" name="content" placeholder="make a comment here ~ ~"></textarea>
					<%
						session.setAttribute("article id", id);
					%>
					<button type="submit">submit</button>
				</form>

				<%
					for(int i = 0; i  < comments.size(); i++){
						UserBean ub = ud.getUserById(comments.get(i).getAuthor_id());
				%>
				<div class="artDe-commentor1">
					<p><img src="<%=ub.getProfile()%>" class="artDe-userPhoto"><%=ub.getUsername()%></p>
					<div class="artDe-com-details">
						<h5><%=comments.get(i).getContent()%></h5>
						<p><%=comments.get(i).getTime()%>
							<%
								//session1.setAttribute("id",id);
								int commentId = comments.get(i).getComment_id();
							%>
							<a style="margin-left:10px;">
							<a href="<%= request.getContextPath()%>/commentLike?id=<%=commentId%>" style="margin-left:10px;">
								<i class="pe-7s-like"></i>
							</a>
							<%=comments.get(i).getLike()%>

						</p>
					</div>
				</div>
				<%
					}
				%>
			</div>
		</div>
	</div>
</div>




<!-- xxxx end -->
<br><br><br><br>
<footer class="page-footer">
	<div class="footer-copyright text-center">@ 2022 Copyright: XMUM</div>
</footer>

<script type="text/javascript">
	function validate(){
		let content =document.getElementById("content").value;
		let error_message =document.getElementById("error_message");
		let text;
		if (content.length>200){
			text="Please enter less than 200 characters";
			error_message.innerHTML = text;
			return false;
		}
		alert("Your comment is submitted!");
		return true;
	}
</script>



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