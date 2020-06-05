package cn.onezero.web.servlet;

import cn.onezero.domain.User;
import cn.onezero.services.UserImpl;
import cn.onezero.utils.Md5Util;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/loginServlet")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");
        request.setCharacterEncoding("utf-8");
        HttpSession session = request.getSession();
        String code = session.getAttribute("code")+"";
        String code1 = request.getParameter("code");
        UserImpl userimpl=new UserImpl();
        if(!code.equals(code1)){
            response.getWriter().write("验证码错误");
        }
        else{
            String email = request.getParameter("email");
            String pwd= null;
            try {
                pwd = Md5Util.encodeByMd5(request.getParameter("pwd"));
            } catch (Exception e) {
                e.printStackTrace();
            }
            User user = userimpl.register(email, pwd);
            if(user==null){
                response.getWriter().write("用户名或密码错误");
            }
            else{
                session.setAttribute("user",user);
                String s="<ul class=\"nav navbar-nav navbar-right temp-custom-list-items\">\n" +
                        "                                <li class=\"nav-item\">\n" +
                        "                                    <a class=\"root parent\" href=\"user/information.jsp\" id=\"img_hover\"><img src="+user.getAvatar()+" alt=\"user_img\" width=\"36\" class=\"img-circle\"></a>\n" +
                        "                                    <ul class=\"draw\">\n" +
                        "                                        <li><a href=\"../user/information.jsp\">个人信息</a></li>\n" +
                        "                                        <li><a href=\"../user/myFavourite.jsp\">我的收藏</a></li>\n" +
                        "                                        <li><a href=\"../user/Manage.jsp\">管理题目</a></li>\n" +
                        "                                        <li><a href=\"../user/wrongProblem.jsp\">我的错题</a></li>\n" +
                        "                                        <li><a href=\"/exit\">登出</a></li>\n" +
                        "                                    </ul>\n" +
                        "                                </li>\n" +
                        "                            </ul>";
                response.getWriter().write(s);
            }

        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
