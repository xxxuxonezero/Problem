package cn.onezero.web.servlet;

import cn.onezero.domain.QuestionChoice;
import cn.onezero.domain.TotalAddedQuestion;
import cn.onezero.domain.User;
import cn.onezero.services.QuestionImpl;
import com.fasterxml.jackson.databind.ObjectMapper;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/getNum")
public class GetNumServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");
        request.setCharacterEncoding("utf-8");
        User user = (User) request.getSession().getAttribute("user");
        QuestionImpl qi=new QuestionImpl();
        List<TotalAddedQuestion> questionCount = qi.getQuestionCount(user.getUser_id());
        ObjectMapper mapper = new ObjectMapper();
        String s = mapper.writeValueAsString(questionCount);
        response.getWriter().write(s);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
