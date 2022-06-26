package com.servlet;

import com.JDBC.CartDAO;
import com.POJO.UserBean;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;


//传参要求： 1.请求参数包含"GoodID"   2.session中带有用户信息（已登录均有）
@WebServlet(name = "DeleteItemFromCart", value = "/DeleteItemFromCart")
public class DeleteItemFromCart extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        // request.setCharacterEncoding("UTF-8");
        String GoodID=request.getParameter("GoodID");
        HttpSession session = request.getSession();
        UserBean ub = (UserBean) session.getAttribute("ub");
        if(ub==null){  //未登录
            response.sendRedirect(request.getContextPath()+"/login.jsp");
        }
        int userid=ub.getId();
        //String goodId= (String) session.getAttribute("goodId");
        CartDAO cd=new CartDAO();
        cd.deleteItem(String.valueOf(userid),GoodID); //删除特定商品
        response.sendRedirect(request.getContextPath());//跳转还没测试过
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }
}
