package com.servlet;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import com.test.email;

import javax.mail.MessagingException;
import java.io.IOException;

@WebServlet("/getAddress")
public class GetAddress extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("the serlvet is working!");
        request.setCharacterEncoding("UTF-8");

        HttpSession session= request.getSession();

        String country = request.getParameter("country");
        String city = request.getParameter("city");
        String state = request.getParameter("state");
        String street = request.getParameter("street");

        session.setAttribute("country", country);
        session.setAttribute("city", city);
        session.setAttribute("state", state);
        session.setAttribute("street", street);

        response.sendRedirect(request.getContextPath()+"/checkout.jsp?id=1");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);

    }
}
