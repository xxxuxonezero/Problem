package cn.onezero.web.servlet;

import cn.onezero.services.QuestionImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/delete")
public class DeleteServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");
        request.setCharacterEncoding("utf-8");
        String q_id = request.getParameter("q_id");
        String type_id=request.getParameter("type_id");
        QuestionImpl qi=new QuestionImpl();
        if(q_id!=null && type_id!=null){
            boolean flag = qi.delete(Integer.parseInt(q_id), Integer.parseInt(type_id));
            if(flag){
                response.getWriter().write("success");
            }
            else{
                response.getWriter().write("fail");
            }
        }
        else{
            response.getWriter().write("fail");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
