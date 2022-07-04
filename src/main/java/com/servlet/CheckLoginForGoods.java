package com.servlet;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "CheckLoginForGoods", value = "/CheckLoginForGoods")
public class CheckLoginForGoods extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String id=request.getParameter("id");
        HttpSession session = request.getSession();
        if(session.getAttribute("user")==null){
            request.setAttribute("Msg","Please Login");
            request.getRequestDispatcher("login.jsp").forward(request,response);
        }
        response.sendRedirect(request.getContextPath()+"/goodsDetails.jsp?id="+id);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }
}
