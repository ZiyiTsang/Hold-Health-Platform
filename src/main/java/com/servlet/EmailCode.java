package com.servlet;

import com.JDBC.CommentDAO;
import com.POJO.CommentBean;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import com.test.email;

import javax.mail.MessagingException;
import java.io.IOException;

@WebServlet("/emailCode")
public class EmailCode extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("the serlvet is working!");
        request.setCharacterEncoding("UTF-8");
        String email = request.getParameter("email");
        int ecode = 0;
        email mail = new email();
        HttpSession session= request.getSession();


        ecode = (int)(Math.random()*(9999-1000+1))+1000;
        System.out.println(ecode);
        try {
            mail.sendEmail(email, ecode, true);//1034337098@qq.com

            session.setAttribute("ecode",String.valueOf(ecode));
            session.setAttribute("email",email);
        } catch (MessagingException e) {
            throw new RuntimeException(e);
        }

        response.sendRedirect(request.getContextPath()+"/register-email.jsp?id=3");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);

    }
}
