package cn.onezero.web.servlet;

import cn.onezero.domain.QuestionChoice;
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
import java.util.Set;

@WebServlet("/addChoice")
public class AddChoiceServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");
        request.setCharacterEncoding("utf-8");
        User u= (User) request.getSession().getAttribute("user");
        QuestionChoice qc=new QuestionChoice();
        Map<String, String[]> map = request.getParameterMap();
        try {
            BeanUtils.populate(qc,map);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        }
        qc.setUser_id(u.getUser_id());
        QuestionImpl qi=new QuestionImpl();
        boolean b = qi.addChoice(qc);
        if(b){
            response.getWriter().write("success");
        }
        else{
            response.getWriter().write("fail");
        }



    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
