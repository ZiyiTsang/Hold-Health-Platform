package com.servlet;

import com.JDBC.ArticleDAO;
import com.POJO.ArticleBean;
import com.JDBC.VideoDAO;
import com.POJO.VideoBean;
import com.JDBC.GoodDAO;
import com.POJO.GoodBean;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.List;

@WebServlet("/search")
public class Search extends HttpServlet{

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String num_id = null;
        num_id = request.getParameter("id");
        String Text=request.getParameter("Text");
        HttpSession session = request.getSession();
        //String num_id = String.valueOf(request.getSession().getAttribute("article id"));
        int id = 0;
        try {
            id = Integer.parseInt(num_id);
        } catch (NumberFormatException e) {
            e.printStackTrace();
        }

        if(id==1){
            VideoDAO vd = new VideoDAO();
            List<VideoBean> vTitle = vd.getVideoByTitle(Text);
            List<VideoBean> vTag = vd.getVideoByTag(Text);
            List<VideoBean> vAuthor = vd.getVideoByAuthor(Text);
            session.setAttribute("vTitle", vTitle);
            session.setAttribute("vTag", vTag);
            session.setAttribute("vAuthor", vAuthor);
            response.sendRedirect(request.getContextPath()+"/workouts.jsp");
        }

        if(id==2){
            ArticleDAO ad = new ArticleDAO();
            List<ArticleBean> aTitle = ad.getArticleByTitle(Text);
            List<ArticleBean> aTag = ad.getArticleByTitle(Text);
            List<ArticleBean> aAuthor = ad.getArticleByTitle(Text);
            session.setAttribute("aTitle", aTitle);
            session.setAttribute("aTag", aTag);
            session.setAttribute("aAuthor", aAuthor);
            response.sendRedirect(request.getContextPath()+"/article.jsp");
        }

        if(id==3){
            GoodDAO gd = new GoodDAO();
            List<GoodBean> gTitle = gd.getGoodsByName(Text);
            List<GoodBean> gTag = gd.getGoodByTag(Text);
            session.setAttribute("gTitle", gTitle);
            session.setAttribute("gTag", gTag);
            response.sendRedirect(request.getContextPath()+"/shop.jsp");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }
}
