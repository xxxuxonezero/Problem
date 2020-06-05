<%@ page import="cn.onezero.services.PageUserImpl" %>
<%@ page import="cn.onezero.Dao.PageUserDao" %>
<%@ page import="cn.onezero.domain.User" %><%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2019/12/23
  Time: 10:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>题目管理</title>
    <script src="../js/jquery-3.3.1.js"></script>
    <link rel="stylesheet" href="../css/mystyle.css">
    <link rel="stylesheet" href="../css/question_choice.css">
    <link href="../css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
    <link href="../css/style.css" rel="stylesheet" type="text/css" media="all" />
    <link href="../css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
    <link href="../css/style.css" rel="stylesheet" type="text/css" media="all" />
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <script src="../assets/js/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="../assets/js/bootstrap.js"></script>
    <!-- custom js link -->
    <script src="../assets/js/form.js"></script>

    <link href="../assets/css/bootstrap.css" rel="stylesheet">
    <!--    font-awesome -->
    <link rel="stylesheet" href="../assets/css/font-awesome.css">
    <!-- style -->
    <link href="../style.css" rel="stylesheet">

    <script src="../js/jquery.min.js"></script>
    <script type="text/javascript" src="../js/check.js"></script>


    <script type="text/javascript" src="../js/jquery.flexisel.js"></script>
    <script src="../js/jquery.wmuSlider.js"></script>
    <!--<link href="css/default.css" rel="stylesheet" type="text/css" />-->
    <!--必要样式-->
    <link href="../css/style.css" rel="stylesheet" type="text/css" />
    <link href="../assets/css/demo.css" rel="stylesheet" type="text/css" />
    <!--<link href="css/loaders.css" rel="stylesheet" type="text/css" />-->
    <script src="../js/user_update.js"></script>
    <link rel="stylesheet" href="../css/question_choice.css">
    <script src="../js/choice.js"></script>
    <script>
        $(function () {
            window.onload=getNum();
        })

    </script>
</head>
<body>
<jsp:include page="header.jsp"/>
<div class="one">
    <div class="mid">
        <div class="center">
            <jsp:include page="left-menu.jsp"/>
            <div class="right-menu">
                <ul></ul>

            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="editQuestion" role="dialog" >
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">修改题目</h4>
            </div>
            <div class="modal-body">
                <span>问&nbsp;&nbsp;题：</span><textarea cols="50" rows="3" class="question"></textarea><br>
                <span>选项A：</span><textarea  cols="50" rows="2" class="optionA"></textarea><br>
                <span>选项B：</span><textarea  cols="50" rows="2" class="optionB"></textarea><br>
                <span>选项C：</span><textarea cols="50" rows="2" class="optionC"></textarea><br>
                <span>选项D：</span><textarea  cols="50" rows="2" class="optionD"></textarea><br>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" id="update_info">提交更改</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>
</body>
</html>
