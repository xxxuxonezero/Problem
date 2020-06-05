package cn.onezero.web.servlet;

import cn.onezero.domain.Page;
import cn.onezero.domain.User;
import cn.onezero.services.PageImpl;
import cn.onezero.services.PageUserImpl;
import cn.onezero.services.QuestionImpl;
import com.fasterxml.jackson.databind.ObjectMapper;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * 展示添加的题目
 */
@WebServlet("/userShow")
public class UserUpdateShowServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");
        request.setCharacterEncoding("utf-8");
        String type_id = request.getParameter("type_id");
        User user = (User) request.getSession().getAttribute("user");
        Integer user_id = user.getUser_id();
        QuestionImpl question=new QuestionImpl();
        String cp =request.getParameter("currentPage");
        if(cp==null||Integer.parseInt(cp)<1){
            cp="1";
        }
        int currentPage=Integer.parseInt(cp);
        int pageSize=10;
        Page page=new Page();
        PageUserImpl pui=new PageUserImpl();
        ObjectMapper mapper = new ObjectMapper();
        if(type_id.equals("1")){
            page=pui.queryPage(user_id,currentPage,pageSize);
        }else{
            page=pui.queryPage(user_id,Integer.parseInt(type_id),currentPage,pageSize);
        }
        String s = mapper.writeValueAsString(page);
        response.getWriter().write(s);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
