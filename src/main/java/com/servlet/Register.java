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
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        HttpSession session = request.getSession();
        String email = (String) session.getAttribute("email");
        String code = (String) session.getAttribute("code");
        String passwordRepeat = request.getParameter("passwordRepeat");
        if (username == null || password == null || passwordRepeat == null) {
            request.setAttribute("Msg", "should not be empty");
            request.getRequestDispatcher("register.jsp").forward(request, response);
            return;
        }
        session = request.getSession();
        String code1 = (String) session.getAttribute("code");

        if (!code1.equals(code)) {
            request.setAttribute("Msg", "code wrong❌");
            request.getRequestDispatcher("register.jsp").forward(request, response);
            return;
        }
        UserDAO ud = new UserDAO();
        if (ud.getUserByUsername(username) != null) {
            request.setAttribute("Msg", "User already exist");
            request.getRequestDispatcher("register.jsp").forward(request, response);
            return;
        }
        if (!passwordRepeat.equals(password)) {
            request.setAttribute("Msg", "password different from repeat one");
            request.getRequestDispatcher("register.jsp").forward(request, response);
            return;
        }
        if (passwordRepeat.length() < 5) {
            request.setAttribute("Msg", "password too short(ensure >5)");
            request.getRequestDispatcher("register.jsp").forward(request, response);
            return;
        }
        ud.newUser(username, password, true, email);
        request.setAttribute("Msg", "Register Successful");
        request.setAttribute("Msg2", "Please Login");
        request.getRequestDispatcher("login.jsp").forward(request, response);
        response.sendRedirect(request.getContextPath() + "/homepage.html");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }
}
