<%@ page import="cn.onezero.domain.User" %><%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2019/12/25
  Time: 20:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="wrapper">

    <div class="main-header">
        <div class="logo-header">
            <a href="#" class="logo">
                题库界面
            </a>
            <button class="navbar-toggler sidenav-toggler ml-auto" type="button" data-toggle="collapse" data-target="collapse" aria-controls="sidebar" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <button class="topbar-toggler more"><i class="la la-ellipsis-v"></i></button>
        </div>
        <nav class="navbar navbar-header navbar-expand-lg">
            <div class="container-fluid">
                <ul class="navbar-nav topbar-nav ml-md-auto align-items-center">
                    <li class="nav-item"><a class="nav-link" href="#" data-toggle="modal" data-target="#RegistrationModal">添加题目</a></li>
                    <li class="nav-item">
                        <a href="../user/paper.jsp" class="nav-link" id="paper">生成试卷</a>
                    </li> <%User u=(User)request.getSession().getAttribute("user");%>
                    <li class="nav-item dropdown">
                        <a href="../user/information.jsp" class="dropdown-toggle profile-pic"   > <img src=<%=u.getAvatar()%> alt="user-img" width="36" class="img-circle" >
                        </a>
                        <span><%=u.getUsername()%></span>
                    </li>
                </ul>
            </div>
        </nav>
    </div>
    <div class="sidebar">
        <div class="scrollbar-inner sidebar-wrapper">
            <div class="user">
                <div class="photo">
                    <img src="../assets/img/1.jpg">
                </div>
                <div class="info ">
                    <a class="" data-toggle="collapse" href="#collapseExample" aria-expanded="true">
								<span>
									计算机组成原理
									<span class="user-level"> </span>
									<span class="caret"></span>
								</span>
                    </a>
                    <div class="clearfix"></div>

                    <div class="collapse in nav-item active" id="collapseExample" aria-expanded="true" style="">
                        <ul class="nav">
                            <li>
                                <a href="../jizu/jizu_choice.jsp" >
                                    <span class="link-collapse">选择题</span>

                                </a>
                            </li>
                            <li>
                                <a href="../jizu/jizu_tiankong.jsp">
                                    <span class="link-collapse">填空题</span>
                                </a>
                            </li>
                            <li>
                                <a href="../jizu/jizu_jianda.jsp">
                                    <span class="link-collapse">简答题</span>
                                </a>
                            </li>
                            <li>
                                <a href="../jizu/jizu_yingyong.jsp">
                                    <span class="link-collapse">应用题</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="user">
                <div class="photo">
                    <img src="../assets/img/2.jpg">
                </div>
                <div class="info">
                    <a class="" data-toggle="collapse" href="#collapseExample2" aria-expanded="true">
								<span>
									操作系统
									<span class="user-level"> </span>
									<span class="caret"></span>
								</span>
                    </a>
                    <div class="clearfix"></div>

                    <div class="collapse in" id="collapseExample2" aria-expanded="true" style="">
                        <ul class="nav">
                            <li>
                                <a href="../os/os_choice.jsp">
                                    <span class="link-collapse">选择题</span>
                                </a>
                            </li>
                            <li>
                                <a href="../os/os_tiankong.jsp">
                                    <span class="link-collapse">填空题</span>
                                </a>
                            </li>
                            <li>
                                <a href="../os/os_jianda.jsp">
                                    <span class="link-collapse">简答题</span>
                                </a>
                            </li>
                            <li>
                                <a href="../os/os_yingyong.jsp">
                                    <span class="link-collapse">应用题</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="user">
                <div class="photo">
                    <img src="../assets/img/3.jpg">
                </div>
                <div class="info">
                    <a class="" data-toggle="collapse" href="#collapseExample3" aria-expanded="true">
								<span>
									数据结构
									<span class="user-level"> </span>
									<span class="caret"></span>
								</span>
                    </a>
                    <div class="clearfix"></div>

                    <div class="collapse in" id="collapseExample3" aria-expanded="true" style="">
                        <ul class="nav">
                            <li>
                                <a href="../shujujiegou/shujujiegou_choice.jsp">
                                    <span class="link-collapse">选择题</span>
                                </a>
                            </li>
                            <li>
                                <a href="../shujujiegou/shujujiegou_tiankong.jsp">
                                    <span class="link-collapse">填空题</span>
                                </a>
                            </li>
                            <li>
                                <a href="../shujujiegou/shujujiegou_jianda.jsp">
                                    <span class="link-collapse">简答题</span>
                                </a>
                            </li>
                            <li>
                                <a href="../shujujiegou/shujujiegou_yingyong.jsp">
                                    <span class="link-collapse">应用题</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="user">
                <div class="photo">
                    <img src="../assets/img/4.jpg">
                </div>
                <div class="info">
                    <a class="" data-toggle="collapse" href="#collapseExample4" aria-expanded="true">
								<span>
									计算机网络
									<span class="user-level"> </span>
									<span class="caret"></span>
								</span>
                    </a>
                    <div class="clearfix"></div>

                    <div class="collapse in" id="collapseExample4" aria-expanded="true" style="">
                        <ul class="nav">
                            <li>
                                <a href="../jisuanjiwangluo/jisuanjiwangluo_choice.jsp">
                                    <span class="link-collapse">选择题</span>
                                </a>
                            </li>
                            <li>
                                <a href="../jisuanjiwangluo/jisuanjiwangluo_tiankong.jsp">
                                    <span class="link-collapse">填空题</span>
                                </a>
                            </li>
                            <li>
                                <a href="../jisuanjiwangluo/jisuanjiwangluo_jianda.jsp">
                                    <span class="link-collapse">简答题</span>
                                </a>
                            </li>
                            <li>
                                <a href="../jisuanjiwangluo/jisuanjiwangluo_yingyong.jsp">
                                    <span class="link-collapse">应用题</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="user">
                <div class="photo">
                    <img src="../assets/img/5.jpg">
                </div>
                <div class="info">
                    <a class="" data-toggle="collapse" href="" aria-expanded="true">
								<span>
									<a href="../jizu/fenxi.jsp" style="color: #777;font-weight: 600">总体分析</a>
									<span class="user-level"> </span>
                                    <!-- <span class="caret"></span> -->
								</span>
                    </a>PC
                    <div class="clearfix"></div>

                </div>
            </div>

        </div>
    </div>
</body>
</html>
