package com.servlet;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;


import java.io.IOException;

@WebServlet("/checkEmailCode")
public class CheckEmailCode extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        System.out.println("the serlvet is working!");
        request.setCharacterEncoding("UTF-8");
        String emailCode = request.getParameter("emailCode");
        HttpSession session= request.getSession();
        String ecode = (String) session.getAttribute("ecode");
        if(emailCode.equals(ecode)){
            response.sendRedirect(request.getContextPath()+"/register.jsp");
        }else{
            response.sendRedirect(request.getContextPath()+"/register-email.jsp?id=2");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }
}
