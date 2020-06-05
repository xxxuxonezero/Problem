package cn.onezero.web.servlet;

import cn.onezero.domain.User;
import cn.onezero.services.UserImpl;
import cn.onezero.utils.MailUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Random;

@WebServlet("/sendMessage")
public class SendMessageServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html;charset=utf-8");
        request.setCharacterEncoding("utf-8");
        UserImpl ui=new UserImpl();
        String email = request.getParameter("email");
        User u=new User();
        u.setEmail(email);
        String status;
        boolean existsEmail = ui.isExistsEmail(u);
        if(existsEmail){
            status="邮箱已被注册";
        }
        else{
            String str="0123456789";
            Random random = new Random();
            String res="";
            for(int i=0;i<6;i++){
                char s=str.charAt(random.nextInt(10));
                res+=s;
            }
            try{
                String content="欢迎注册计算机考研刷题系统！\n\n您的验证码为："+res;
                MailUtils.sendMail(email,content,"计算机考研刷题系统主注册");
                status="success";
                if(request.getSession().getAttribute("register")==null){
                    request.getSession().setAttribute("register",res);
                }else{
                    HttpSession session = request.getSession();
                    session.removeAttribute("register");
                    session.setAttribute("register",res);
                }
            }catch(Exception e){
                System.out.println(e);
                status="fail";
            }

        }
        response.getWriter().write(status);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
