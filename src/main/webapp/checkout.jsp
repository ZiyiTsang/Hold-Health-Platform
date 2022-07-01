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
<body background="img/checkout.jpeg">


<!-- header end -->
<br><br><br><br><br><br>
        <%
            String id = null;
            id = request.getParameter("id");
            System.out.println("the id is "+id);

            int num_id = 0;

            try {
                num_id = Integer.parseInt(id);
            } catch (NumberFormatException e) {
                e.printStackTrace();
            }

            if(num_id == 1){
        %>
            <div class="cart-fill" style="padding-bottom: 55px;">
                <div class="content">
        <div class="c-title"> Payment (via WeChat) </div>
        <div class="shop-account-info">
            <div class="edit-address">

                <div class="address-info">
                    <form class="c-form" action="<%= request.getContextPath()%>/sendOrder" method="post">
                        <div style="margin-left: 50px;">
                            Total amount is xxx $<br><br>
                        </div>

                        <img src="img/wechat.JPG" style="width: 160px; margin-left: 50px;">

                        <a href="${pageContext.request.contextPath}/checkout.jsp" style="margin-top:180px; float: left" color="#ffae00">back</a>
                        <button class="btn c-button" type="submit" value="Submit" style="margin-top:160px; margin-right: 20px; float: right;">Submit</button>
                    </form>

                </div>
            </div>

        </div>

        <%
            }
            else{
        %>
                    <div class="cart-fill" style="padding-bottom: 275px;">
                        <div class="content">
        <div class="c-title"> Fill in the address  </div>
        <div class="shop-account-info">
            <div class="edit-address">

                <div class="address-info">
                    <form class="c-form" action="<%= request.getContextPath()%>/getAddress" method="post">
                        <div class="col-md-2" style="margin-left: 50px;">
                            Country:<br><br>
                            City:   <br><br>
                            State:  <br><br>
                            Street:
                        </div>

                        <div class="col-md-9">
                            <input type="text" name="country" style="margin-bottom: 12px;"><br>
                            <input type="text" name="city" style="margin-bottom: 12px;"><br>
                            <input type="text" name="state" style="margin-bottom: 12px;"><br>
                            <input type="text" name="street" style="margin-bottom: 12px;"><br>
                        </div>

                        <a href="${pageContext.request.contextPath}/Cart-fill.jsp" style="margin-top:40px; float: left" color="#ffae00">back</a>
                        <button class="btn c-button" type="submit" value="Submit" style="margin-top:30px; margin-right: 20px; float: right;">Submit</button>
                    </form>

                </div>
            </div>

        </div>
        <%
            }
        %>
    </div>
</div>
</body>

</html>
