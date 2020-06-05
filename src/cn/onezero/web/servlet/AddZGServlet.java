package cn.onezero.web.servlet;

import cn.onezero.domain.QuestionZG;
import cn.onezero.domain.User;
import cn.onezero.services.QuestionImpl;
import com.fasterxml.jackson.databind.util.BeanUtil;
import org.apache.commons.beanutils.BeanUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.Map;

@WebServlet("/addZG")
public class AddZGServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");
        request.setCharacterEncoding("utf-8");
        User u= (User) request.getSession().getAttribute("user");
        Map<String, String[]> map = request.getParameterMap();
        QuestionZG qz=new QuestionZG();
        try {
            BeanUtils.populate(qz,map);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        }
        qz.setUser_id(u.getUser_id());
        QuestionImpl qi=new QuestionImpl();
        boolean b = qi.addZG(qz);
        if(b){
            response.getWriter().write("success");
        }else{
            response.getWriter().write("fail");
        }


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
