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
        UserBean ub = (UserBean) session.getAttribute("ub");
        if(ub==null){  //未登录
            response.sendRedirect(request.getContextPath()+"/login.jsp");
        }
        int userid=ub.getId();
        String goodId= (String) session.getAttribute("goodId");
        CartDAO cd=new CartDAO();
        if(cd.addCart(String.valueOf(userid),goodId,GoodNum)!=1){
            System.out.println("add cart fail");
        }
        response.sendRedirect(request.getContextPath()+"/goodsDetail.jsp?id="+goodId);//跳转还没测试过
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }
}
