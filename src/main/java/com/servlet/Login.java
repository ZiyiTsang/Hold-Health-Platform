package com.servlet;

import com.JDBC.UserDAO;
import com.POJO.UserBean;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet("/loginServlet")
public class Login extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        System.out.println("registerServlet exec");
        String username=request.getParameter("username");
        String password=request.getParameter("password");
        UserDAO ud=new UserDAO();
        if(ud.validation(username,password)){
            UserBean ub=ud.getUserByUsername(username);
            HttpSession session= request.getSession();
            session.setAttribute("user",ub);
            response.sendRedirect(request.getContextPath()+"/workouts.jsp");
        }else{
            request.setAttribute("loginMsg","用户名或密码错误");
            request.getRequestDispatcher("login.jsp").forward(request,response);
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }
}
