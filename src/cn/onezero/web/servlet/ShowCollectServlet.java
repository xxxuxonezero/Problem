package cn.onezero.web.servlet;

import cn.onezero.domain.Page;
import cn.onezero.domain.User;
import cn.onezero.services.PageUserImpl;
import com.fasterxml.jackson.databind.ObjectMapper;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/showCollect")
public class ShowCollectServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");
        request.setCharacterEncoding("utf-8");
        User user = (User) request.getSession().getAttribute("user");
        String cp =request.getParameter("currentPage");
        if(cp==null||Integer.parseInt(cp)<1){
            cp="1";
        }
        int currentPage=Integer.parseInt(cp);
        int pageSize=10;
        Page page=new Page();
        PageUserImpl pui=new PageUserImpl();
        ObjectMapper mapper = new ObjectMapper();
        page=pui.queryCollectPage(user.getUser_id(),currentPage,pageSize);
        String s = mapper.writeValueAsString(page);
        response.getWriter().write(s);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
