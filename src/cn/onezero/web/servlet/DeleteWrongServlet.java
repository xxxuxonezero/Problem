package cn.onezero.web.servlet;

import cn.onezero.domain.User;
import cn.onezero.services.QuestionImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/deleteWrong")
public class DeleteWrongServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");
        request.setCharacterEncoding("utf-8");
        String q_id = request.getParameter("q_id");
        User u= (User) request.getSession().getAttribute("user");
        QuestionImpl qi=new QuestionImpl();
        qi.removeWrong(u.getUser_id(),Integer.parseInt(q_id));
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
