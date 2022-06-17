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
        String email=request.getParameter("email");
        String code = request.getParameter("code");
        String passwordRepeat=request.getParameter("passwordRepeat");
        //
        System.out.printf("username:%s\n",username);
        System.out.printf("password:%s\n",password);
        System.out.printf("passwordRepeat:%s\n",passwordRepeat);
        System.out.printf("code:%s\n\n",code);
        //
        if(username==null||password==null||passwordRepeat==null){
            request.setAttribute("Msg","不得出现放空现象");
            request.getRequestDispatcher("register.jsp").forward(request,response);
        }
        HttpSession session = request.getSession();
        String code1 = (String) session.getAttribute("code");

        if (!code1.equals(code)){
            request.setAttribute("Msg","验证码错误❌");
            request.getRequestDispatcher("register.jsp").forward(request,response);
        }
        UserDAO ud=new UserDAO();
        if(ud.getUserByUsername(username)!=null){
            request.setAttribute("Msg","已存在相关用户");
            request.getRequestDispatcher("register.jsp").forward(request,response);
        }
        if (!passwordRepeat.equals(password)){
            request.setAttribute("Msg","两次输入不一致");
            request.getRequestDispatcher("register.jsp").forward(request,response);
        }
        if (passwordRepeat.length()<5){
            request.setAttribute("Msg","密码不够长，请确保大于5位");
            request.getRequestDispatcher("register.jsp").forward(request,response);
        }

        String profile = null;
        ud.newUser(username,password,profile,email);//记得改
        request.setAttribute("Msg","注册成功，请登录");
        request.getRequestDispatcher("login.jsp").forward(request,response);
        response.sendRedirect(request.getContextPath()+"/homepage.html");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }
}
