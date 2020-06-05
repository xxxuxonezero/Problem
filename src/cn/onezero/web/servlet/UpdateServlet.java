package cn.onezero.web.servlet;

import cn.onezero.domain.QuestionChoice;
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

@WebServlet("/update")
public class UpdateServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");
        request.setCharacterEncoding("utf-8");
        Map<String, String[]> map = request.getParameterMap();
        User u= (User) request.getSession().getAttribute("user");
        String type_id = request.getParameter("type_id");
        boolean flag;
        QuestionImpl qi=new QuestionImpl();
        if(type_id==null){
            QuestionChoice qc = new QuestionChoice();
            try {
                BeanUtils.populate(qc,map);
            } catch (IllegalAccessException e) {
                e.printStackTrace();
            } catch (InvocationTargetException e) {
                e.printStackTrace();
            }
            flag=qi.update(qc);
        }
        else{
            QuestionZG qz = new QuestionZG();
            try {
                BeanUtils.populate(qz,map);
            } catch (IllegalAccessException e) {
                e.printStackTrace();
            } catch (InvocationTargetException e) {
                e.printStackTrace();
            }
            flag=qi.update(qz);
        }
        if(flag){
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
