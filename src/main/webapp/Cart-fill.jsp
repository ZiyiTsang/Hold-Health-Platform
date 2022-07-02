<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.POJO.UserBean" %>
<%@ page import="com.JDBC.UserDAO" %>
<%@ page import="com.POJO.GoodBean" %>
<%@ page import="com.JDBC.GoodDAO" %>
<%@ page import="com.JDBC.CartDAO" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.Collection" %>
<%@ page import="java.util.ArrayList" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Cart-fill</title>

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
    <link rel="stylesheet" href="css/cart-fill.css">
    <!-- Modernizr JS -->
    <script src="js/vendor/modernizr-2.8.3.min.js"></script>
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
<br><br><br><br><br><br>
<div class="public-shop-cart">
    <div class="content">
        <h2>Shopping cart is empty</h2>
        <br>
        <p>You have no items in your shopping cart yet.</p>
        <p>Click <a href="#">here</a> to continue shopping.</p>
    </div>
</div>
<%

    GoodDAO gd = new GoodDAO();
%>
<div class="clearfix"> </div>
<div class="public-shop-cart">
    <div class="content">
        <span>All 3</span>
        <div class="cart-title">
            <span>Products</span>
            <span>Unit price</span>
            <span>Quantity</span>
            <span>Subtotal</span>
            <span>Operation</span>
        </div>

        <%
            CartDAO cd = new CartDAO();
            String id = null;
            id = String.valueOf(user.getId());
            Map<String,String> map = cd.getAll(id);
            Collection<String> vs = map.values();
            Collection<String> ds = map.keySet();
            List n = new ArrayList<>();
            List good = new ArrayList<>();
            for(String v : vs){
                int tmp = Integer.parseInt(v);
                n.add(tmp);
            }
            for(String d : ds){
                int tmp = Integer.parseInt(d);
                good.add(tmp);
            }

            double total = 0;
            for(int i = 0; i < n.size(); i++){

//                GoodBean gb = gd.getGoodsById((Integer) good.get(i));
                int tmp = (Integer) good.get(i);
//                System.out.println("good id = "+tmp);
                GoodBean gb = gd.getGoodsById(tmp);
                double price = gb.getPrice();
        %>
        <div class="cart-detail">
            <div class="cart-title">
                <img src="<%=gb.getImage()%>" alt="">
                <div>
                    <a href="" style="width:200px;"><%=gb.getGoodName()%></a>
                </div>
            </div>
<%--            <div class="cart-price">$<%=price%></div>--%>

            <div class="cart-number" style="margin-left: 730px;">
                <span class="sub">-</span> <input type="text" id="number" value="1"><span class="plus">+</span>
            </div>
            <div class="cart-subtotal" style="margin-left: 40px;">$<%=price*((Integer)n.get(i))%></div>
            <%
                total = total + price*((Integer)n.get(i));
            %>
            <div class="cart-operate" style="margin-left: 30px;"><a href="">Delete</a></div>

        </div>
        <%
            }
        %>

        <div class="cart-btn"><span>Total price:</span><span> $<%=total%> </span><button class="btn" style="text-align: center; width:120px; margin-left: 20px;">Check out</button></div>
    </div>
</div>

<br><br><br>
<div class="public-shop-cart">
    <div class="content">
        <h3 class="menu1">Look Around</h3>
        <br>
        <table>
            <tr>

                <%
                    GoodBean gb;
                    for(int i=1; i<9; i+=2){
                        gb = gd.getGoodsById(i);
                %>
                <td>
                    <img src="<%=gb.getImage()%>" style="height: 200px;width: 200px;border:0px">
                    <br><br>
                    <h4 style="float: left;"><%=gb.getGoodName()%>></h4>
                    <h4 style="float: contour;margin-left:7em;color:firebrick">$<%=gb.getPrice()%></h4>
                </td>
                <%
                    }
                %>

            </tr>
        </table>


    </div>
</div>
</body>
</html>
