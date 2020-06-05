<%@ page import="cn.onezero.domain.User" %><%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2019/12/26
  Time: 10:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>试卷</title>
    <script src="../js/jquery-3.3.1.js"></script>
    <script src="../js/choice.js"></script>
    <link rel="stylesheet" href="../css/bootstrap.css">
    <link rel="stylesheet" href="../css/paper.css">
    <link rel="stylesheet" href="../assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i">
    <link rel="stylesheet" href="../assets/css/ready.css">
    <link rel="stylesheet" href="../assets/css/demo.css">
    <script>
        $(function () {
            window.onload=load_g()
        })
    </script>

</head>
<body>
<div class="main-header" style="height: 62px;position: static;border-bottom: 0px">
    <nav class="navbar navbar-header navbar-expand-lg" style="float: right">
        <div class="container-fluid">
            <ul class="navbar-nav topbar-nav ml-md-auto align-items-center">
                <li class="nav-item">
                    <a href="../menu.jsp" class="nav-link" id="paper">首页</a>
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
<h1 style="text-align: center">综合模拟考试</h1>
<div class="grade"></div>
<div class="paper-content">
</div>
<div class="exercise-submit">
</div>
</body>
</html>
