package cn.onezero.web.servlet;


import cn.onezero.domain.User;
import cn.onezero.domain.WrongQuestion;
import cn.onezero.services.QuestionImpl;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.mysql.cj.x.protobuf.MysqlxExpr;
import com.mysql.cj.xdevapi.JsonArray;
import com.sun.scenario.effect.impl.sw.sse.SSEBlend_SRC_OUTPeer;
import org.apache.commons.io.IOUtils;

import javax.servlet.ServletException;
import javax.servlet.ServletInputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * 添加错题，放入错题集
 */
@WebServlet("/addWrong")
public class AddWrongServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");
        request.setCharacterEncoding("utf-8");
        ServletInputStream stream = request.getInputStream();
        try{
            String s = IOUtils.toString(stream,"utf-8");
            JSONArray o = JSONArray.parseArray(s);
            List<WrongQuestion> wqs=new ArrayList<WrongQuestion>();
            for(int i=0;i<o.size();i++){
                JSONObject o1 = (JSONObject) o.get(i);
                WrongQuestion wq=JSONObject.toJavaObject(o1,WrongQuestion.class);
                wqs.add(wq);
            }
            QuestionImpl qi=new QuestionImpl();
            User user = (User) request.getSession().getAttribute("user");
            qi.addWrongQuestion(wqs,user.getUser_id());
        }
        catch (Exception e){
            System.out.println(e);
        }




    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
