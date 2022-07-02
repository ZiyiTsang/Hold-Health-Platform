package com.servlet;

import com.JDBC.CartDAO;
import com.POJO.UserBean;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

//传参要求： 1.请求参数包含商品数量"num"     2.session中带有用户信息“ub”（已登录均有） 和 商品ID“goodId”
@WebServlet(name = "addCart", value = "/addCart")
public class AddCart extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String GoodNum=request.getParameter("num");
        HttpSession session = request.getSession();
        UserBean ub = null;
        try{
            ub = (UserBean) session.getAttribute("user");
        }catch (java.lang.NullPointerException e){
            response.sendRedirect(request.getContextPath()+"/login.jsp");
        }
        assert ub != null;
        int userid=ub.getId();
        String goodId= (String) session.getAttribute("goodId");
        CartDAO cd=new CartDAO();
        System.out.println(userid);
        System.out.println(goodId);
        System.out.println(GoodNum);

        int id = 0;
        try {

            id = Integer.parseInt(goodId);
        } catch (NumberFormatException e) {
            e.printStackTrace();
        }
        cd.addCart(String.valueOf(userid),goodId,GoodNum);
//        if(cd.addCart(String.valueOf(userid),goodId,GoodNum)!=1){
//            System.out.println("add cart fail");
//            request.setAttribute("addCartMsg","Fail");
//            response.sendRedirect(request.getContextPath()+"/goodsDetails.jsp?id="+id);//跳转还没测试过
//        }
        request.setAttribute("addCartMsg","Successful");
        System.out.println("add cart successful");
        response.sendRedirect(request.getContextPath()+"/goodsDetails.jsp?id="+id);//跳转还没测试过
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }
}
