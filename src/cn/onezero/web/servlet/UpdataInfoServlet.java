package cn.onezero.web.servlet;

import cn.onezero.domain.User;
import cn.onezero.services.UserImpl;
import org.apache.commons.beanutils.BeanUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.text.ParseException;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;

@WebServlet("/updateInfo")
public class UpdataInfoServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");
        request.setCharacterEncoding("utf-8");
        UserImpl ui=new UserImpl();
        User u= (User) request.getSession().getAttribute("user");
        String op = request.getParameter("op");
        if(op.equals("update1")){
            String str = request.getParameter("birthdayStr");
            SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
            Date parse = null;
            try {
                parse = sdf.parse(str);
            } catch (ParseException e) {
                e.printStackTrace();
            }
            Map<String, String[]> map = request.getParameterMap();
            try {
                BeanUtils.populate(u,map);
            } catch (IllegalAccessException e) {
                e.printStackTrace();
            } catch (InvocationTargetException e) {
                e.printStackTrace();
            }
            u.setBirthday(parse);
            boolean b = ui.updateInfo1(u);
            if(b){
                request.getSession().removeAttribute("user");
                request.getSession().setAttribute("user",u);
            }
        }
        else if(op.equals("update2")){
            String avatar = request.getParameter("avatar");
            u.setAvatar(avatar);
            boolean b = ui.updateInfo2(u);
            System.out.println(u);
            if(b){
                request.getSession().removeAttribute("user");
                request.getSession().setAttribute("user",u);
            }

        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
