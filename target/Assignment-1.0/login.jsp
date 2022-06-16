<%--
  Created by IntelliJ IDEA.
  User: 曾子懿
  Date: 2022/6/11
  Time: 16:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">

<head>
    <title>login</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="./css/bootstrap.min.css">
</head>

<body>
<div class="container">

    <div class="blog-post bg-white p-5 rounded shadow mb-4">

        <h3 class="mb-5 text-center">Login</h3>

        <form action="<%= request.getContextPath()%>/loginServlet" method="post">
            <div>${loginMsg}${Msg}</div>
            <div class="form-group row mb-3">
                <label for="name" class="col-md-4 col-form-label text-md-right">姓名</label>
                <div class="col-md-6">
                    <input id="name" type="text" class="form-control" name="username" value="" required="" autofocus="">
                </div>
            </div>


            <div class="form-group row mb-3">
                <label for="password" class="col-md-4 col-form-label text-md-right">密码</label>
                <div class="col-md-6">
                    <input id="password" type="password" class="form-control" name="password" required="">
                </div>
            </div>


            <div class="form-group row mb-3 mb-0 mt-4">
                <div class="col-md-6 offset-md-4">
                    <button type="submit" class="btn btn-primary">
                        login
                    </button>
                </div>
            </div>

        </form>

    </div>

</div>


<div class="mb-3">
    <a href="${pageContext.request.contextPath}/workout-page.css" class="text-sm text-muted"><small>返回首页</small></a>
    <a href="${pageContext.request.contextPath}/" class="text-sm text-muted float-right"><small>注册</small></a>
</div>
<script src="./js/bootstrap.min.js"></script>


</body>

</html>
