package cn.onezero.web.filter;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebFilter(value = "/*")
public class LoginFilter implements Filter {
    public void destroy() {
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {
//        强制转换
        HttpServletRequest request=(HttpServletRequest)req;
        HttpServletResponse response=(HttpServletResponse)resp;
        //获取资源请求路径
        String uri = request.getRequestURI();
//        判断是否包含登录相关的资源路径,要注意排除掉一些css,js资源
        if(uri.contains("/menu.jsp")||uri.contains("/loginServlet")||uri.contains("/CodeServlet")||
        uri.contains("/js")||uri.contains("/css")||uri.contains("/style")||uri.contains("/assets")||
        uri.contains("/images")||uri.contains("/registerServlet")||uri.contains("/sendMessage")){
            //        放行
            chain.doFilter(req,resp);
        }
        else{
            Object user=request.getSession().getAttribute("user");
            if(user!=null){
                chain.doFilter(req,resp);
            }else{
//                个人认为重定向比转发好一些
                response.sendRedirect("/menu.jsp");
            }
        }


    }
    public void init(FilterConfig config) throws ServletException {

    }

}
