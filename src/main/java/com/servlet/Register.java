package com.servlet;

import com.JDBC.UserDAO;
import com.POJO.UserBean;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet("/registerServlet")
public class Register extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        System.out.println("registerServlet exec");
        request.setCharacterEncoding("UTF-8");
        String username=request.getParameter("username");
        String password=request.getParameter("password");
        String passwordRepeat=request.getParameter("passwordRepeat");
        if(username==null||password==null||passwordRepeat==null){
            request.setAttribute("Msg","不得出现放空现象");
            request.getRequestDispatcher("register.jsp").forward(request,response);
        }
        if (!passwordRepeat.equals(password)){
            request.setAttribute("Msg","两次输入不一致");
            request.getRequestDispatcher("register.jsp").forward(request,response);
        }
        if (passwordRepeat.length()<5){
            request.setAttribute("Msg","密码不够长");
            request.getRequestDispatcher("register.jsp").forward(request,response);
        }
        UserDAO ud=new UserDAO();
        if(ud.getUserByUsername(username)!=null){
            request.setAttribute("Msg","已存在相关用户");
            request.getRequestDispatcher("register.jsp").forward(request,response);
        }
        ud.newUser(username,password);
        response.sendRedirect(request.getContextPath()+"/homepage.html");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }
}
