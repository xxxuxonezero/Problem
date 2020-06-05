<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2019/12/23
  Time: 10:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>我的收藏</title>
    <script src="../js/jquery-3.3.1.js"></script>
    <link rel="stylesheet" href="../css/question_choice.css">
    <script src="../js/choice.js"></script>
    <link rel="stylesheet" href="../css/mystyle.css">
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
    <link rel="stylesheet" href="../css/icon/iconfont.css">
    <script>
        $(function () {
            window.onload=load_collect();
        })
    </script>
</head>
<body>

<jsp:include page="header.jsp"/>
<div class="one" style="height: 2100px">
    <div class="mid">
        <div class="center">
            <jsp:include page="left-menu.jsp"/>
            <div class="right-menu">
                <div class="content" id="choice_content" >
                </div>
            </div>
        </div>
    </div>
</div>
<div class="page-normal" id="page" style="margin-top: 20px;margin-bottom: 50px">
</div>
</body>
</html>
