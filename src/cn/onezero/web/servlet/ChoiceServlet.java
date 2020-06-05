package cn.onezero.web.servlet;

import cn.onezero.domain.Page;
import cn.onezero.domain.QuestionChoice;
import cn.onezero.domain.User;
import cn.onezero.services.PageImpl;
import cn.onezero.services.QuestionImpl;
import com.fasterxml.jackson.databind.ObjectMapper;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/ChoiceServlet")
public class ChoiceServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");
        request.setCharacterEncoding("utf-8");
        User user = (User) request.getSession().getAttribute("user");
        QuestionImpl question=new QuestionImpl();
        String cp =request.getParameter("currentPage");
        int course_id = Integer.parseInt(request.getParameter("course_id"));
        if(cp==null||Integer.parseInt(cp)<1){
            cp="1";
        }
        int currentPage=Integer.parseInt(cp);
        int pageSize=10;
        PageImpl pageiml=new PageImpl();
        Page page = pageiml.queryPage(course_id,user.getUser_id(),currentPage, pageSize);
        ObjectMapper mapper = new ObjectMapper();
        String s = mapper.writeValueAsString(page);
        response.getWriter().write(s);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
