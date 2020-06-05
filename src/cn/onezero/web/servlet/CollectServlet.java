package cn.onezero.web.servlet;

import cn.onezero.domain.CollectQuestion;
import cn.onezero.domain.User;
import cn.onezero.services.QuestionImpl;
import org.apache.commons.beanutils.BeanUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.Map;

@WebServlet("/collect")
public class CollectServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");
        request.setCharacterEncoding("utf-8");
        User user = (User) request.getSession().getAttribute("user");
        QuestionImpl qi=new QuestionImpl();
        String op = request.getParameter("op");
        CollectQuestion cq=new CollectQuestion();
        Map<String, String[]> map = request.getParameterMap();
        try {
            BeanUtils.populate(cq,map);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        }
        if(op.equals("add")){
            qi.addCollect(cq,user.getUser_id());
        }
        else if(op.equals("cancel")){
            qi.deleteCollect(cq,user.getUser_id());
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
