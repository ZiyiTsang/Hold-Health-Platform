package com.servlet;

import com.JDBC.CommentDAO;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;


@WebServlet("/commentLike")
public class CommentLike extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String num_id = null;
        num_id = request.getParameter("id");
        //String num_id = String.valueOf(request.getSession().getAttribute("article id"));
        CommentDAO cd = new CommentDAO();
        int id = 0;
        try {
            id = Integer.parseInt(num_id);
        } catch (NumberFormatException e) {
            e.printStackTrace();
        }
        cd.addLikes(id);
        response.sendRedirect(request.getContextPath()+"/articles-details.jsp?id=" + id);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }
}
