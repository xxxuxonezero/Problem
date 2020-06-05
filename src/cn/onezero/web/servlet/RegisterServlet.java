package cn.onezero.web.servlet;

import cn.onezero.domain.User;
import cn.onezero.services.UserImpl;
import cn.onezero.utils.Md5Util;
import org.apache.commons.beanutils.BeanUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.Map;

/**
 * 实现注册功能：首先，判断验证码是否正确，其次判断邮箱是否已被注册，
 * 若以上两项都没问题，那么添加用户。
 */
@WebServlet("/registerServlet")
public class RegisterServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");
        request.setCharacterEncoding("utf-8");
        HttpSession session = request.getSession();
        String code = session.getAttribute("register")+"";
        String code2=request.getParameter("code");
//        获取前端表单的参数值，封装到user对象中
        Map<String, String[]> map = request.getParameterMap();
        System.out.println(code);
        User u=new User();
        try {
            BeanUtils.populate(u,map);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        }
        UserImpl userimpl=new UserImpl();
        if(!code.equals(code2)){
            response.getWriter().write("验证码错误");
        }
        else{
                if(userimpl.isExistsEmail(u)){
                    response.getWriter().write("邮箱已被注册");
                }else{
                    try {
                        u.setPwd(Md5Util.encodeByMd5(u.getPwd()));
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                    boolean flag=userimpl.addUser(u);
                    if(flag)
                        response.getWriter().write("注册成功");
                    else{
                        response.getWriter().write("注册失败");
                    }
                }

        }
        System.out.println(u);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
