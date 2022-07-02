package com.servlet;
import com.POJO.UserBean;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import com.test.email;

import javax.mail.MessagingException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/sendOrder")
public class SendOrder extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("the serlvet is working!");
        request.setCharacterEncoding("UTF-8");

        List<String> address = new ArrayList<String>();
        HttpSession session = request.getSession();
        String country = (String) session.getAttribute("country");
        String city = (String) session.getAttribute("city");
        String state = (String) session.getAttribute("state");
        String street = (String) session.getAttribute("street");

        address.add(country);
        address.add(city);
        address.add(state);
        address.add(street);


        try {
            email.sendEmail("swe2009514@xmu.edu.my", 1, false,address);
        } catch (MessagingException e) {
            throw new RuntimeException(e);
        }

        response.sendRedirect(request.getContextPath()+"/shop.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);

    }
}
