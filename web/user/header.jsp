<%@ page import="cn.onezero.domain.User" %><%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2019/12/23
  Time: 9:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- header -->
<div class="banner">
    <div class="header">
        <div class="container">
            <div class="head-bann">
                <div class="logo">
                    <a href="../menu.jsp"><img src="../images/logo.png" class="img-responsive" alt="" /></a>
                </div>

                <div class="clearfix" style="height: 60px;">
                    <div class="collapse navbar-collapse" id="myNavbar">
                        <%--<ul class="nav navbar-nav navbar-right temp-custom-list-items">--%>
                        <%--<li class="nav-item"><a class="nav-link" href="#" data-toggle="modal" data-target="#RegistrationModal">注册</a></li>--%>
                        <%--<li class="nav-item"><a class="nav-link" href="#" data-toggle="modal" data-target="#LogInModal">登录</a></li>--%>
                        <%--<li class="nav-item"><a class="nav-link" href="#" data-toggle="modal" data-target="#ForgotModal">忘记密码</a></li>--%>
                        <%--<li class="nav-item"><a class="nav-link" href="#" data-toggle="modal" data-target="#ResetModal">重置</a></li>--%>
                        <%--</ul>--%>
                            <%User u= (User) request.getSession().getAttribute("user");%>
                            <ul class="nav navbar-nav navbar-right temp-custom-list-items">
                                <li class="nav-item">
                                    <a class="root parent" href="information.jsp" id="img_hover"><img src=<%=u.getAvatar()%> alt="user_img" width="36" class="img-circle"></a>
                                    <ul class="draw">
                                        <li><a href="../user/information.jsp">个人信息</a></li>
                                        <li><a href="../user/myFavourite.jsp">我的收藏</a></li>
                                        <li><a href="../user/Manage.jsp">管理题目</a></li>
                                        <li><a href="../user/wrongProblem.jsp">我的错题</a></li>
                                        <li><a href="/exit">登出</a></li>
                                    </ul>
                                </li>
                            </ul>
                    </div></div>
            </div>
            <!-- start h_menu4 -->
            <div class="h_menu4">
                <a class="toggleMenu" href="">Menu</a>
                <ul class="nav">
                    <li class="active"><a href="../menu.jsp">首页</a></li>
                    <li><a href="../jizu/jizu_choice.jsp" class="root">计算机组成原理</a>
                        <ul class="drdw">
                            <li><a href="../jizu/jizu_choice.jsp">选择题</a></li>
                            <li><a href="../jizu/jizu_tiankong.jsp">填空题</a></li>
                            <li><a href="../jizu/jizu_jianda.jsp">简答题</a></li>
                            <li><a href="../jizu/jizu_yingyong.jsp">应用题</a></li>

                        </ul>
                    </li>
                    <li><a href="../os/os_choice.jsp" class="root">操作系统</a>
                        <ul class="drdw">
                            <li><a href="../os/os_choice.jsp">选择题</a></li>
                            <li><a href="../os/os_tiankong.jsp">填空题</a></li>
                            <li><a href="../os/os_jianda.jsp">简答题</a></li>
                            <li><a href="../os/os_yingyong.jsp">应用题</a></li>

                        </ul>
                    </li>
                    <li><a href="../shujujiegou/shujujiegou_choice.jsp" class="root">数据结构</a>
                        <ul class="drdw">
                            <li><a href="../shujujiegou/shujujiegou_choice.jsp">选择题</a></li>
                            <li><a href="../shujujiegou/shujujiegou_tiankong.jsp">填空题</a></li>
                            <li><a href="../shujujiegou/shujujiegou_jianda.jsp">简答题</a></li>
                            <li><a href="../shujujiegou/shujujiegou_yingyong.jsp">应用题</a></li>

                        </ul>
                    </li>
                    <li><a href="../jisuanjiwangluo/jisuanjiwangluo_choice.jsp" class="root">计算机网络</a>
                        <ul class="drdw">
                            <li><a href="../jisuanjiwangluo/jisuanjiwangluo_choice.jsp">选择题</a></li>
                            <li><a href="../jisuanjiwangluo/jisuanjiwangluo_tiankong.jsp">填空题</a></li>
                            <li><a href="../jisuanjiwangluo/jisuanjiwangluo_jianda.jsp">简答题</a></li>
                            <li><a href="../jisuanjiwangluo/jisuanjiwangluo_yingyong.jsp">应用题</a></li>

                        </ul>
                    </li>
                    <li><a href="../jizu/fenxi.jsp">总体分析</a></li>
                </ul>
                <script type="text/javascript" src="../js/nav.js"></script>
            </div>
            <!-- end h_menu4 -->

        </div>

    </div> </div>


<!-- contact -->
<!-- footer -->

<!-- footer -->
<!-- <div style="display:none"><script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'></script></div> -->

