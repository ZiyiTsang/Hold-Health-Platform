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
        int num_id = 0;

        HttpSession session = request.getSession();
        num_id = Integer.parseInt(String.valueOf(session.getAttribute("article id")));

        CommentDAO cd = new CommentDAO();

//request.getParameter("num")
        int comment = Integer.parseInt(request.getParameter("id"));
        System.out.println("comment id = "+comment);
        cd.addLikes(comment);
        response.sendRedirect(request.getContextPath()+"/articles-details.jsp?id=" + num_id);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }
}
