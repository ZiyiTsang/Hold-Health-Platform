package com.servlet;
import com.JDBC.CartDAO;
import com.POJO.UserBean;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import com.test.email;
import com.POJO.UserBean;
import com.JDBC.UserDAO;

import javax.mail.MessagingException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/sendOrder")
public class SendOrder extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        System.out.println("the serlvet is working!");
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

        List<String> user = new ArrayList<String>();
        UserDAO ud = new UserDAO();
        UserBean userTmp = null;
        userTmp = (UserBean) session.getAttribute("user");
        String total = String.valueOf(session.getAttribute("total"));
        String id = String.valueOf(userTmp.getId());
        String mail = userTmp.getEmail();
        String name = userTmp.getUsername();

        user.add(id);
        user.add(mail);
        user.add(name);
        user.add(total);


        try {
            email.sendEmail("cme1909120@xmu.edu.my", 1, false,address,user);
        } catch (MessagingException e) {
            throw new RuntimeException(e);
        }
        CartDAO cd=new CartDAO();
        cd.flushUserItem(String.valueOf(userTmp.getId()));
        response.sendRedirect(request.getContextPath()+"/shop.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);

    }
}
