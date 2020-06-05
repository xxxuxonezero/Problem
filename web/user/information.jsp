<%@ page import="cn.onezero.domain.User" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html>
<head>
<title>查看个人信息</title>
<meta charset="utf-8">
  <script src="../js/jquery-3.3.1.js"></script>
  <link rel="stylesheet" href="../css/mystyle.css">
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
    <script>
        $(function () {
            window.onload=load_info(0);
        })
    </script>


</head>
<body>
<jsp:include page="header.jsp"/>
<div class="one">
  <div class="mid">
    <div class="center">
      <jsp:include page="left-menu.jsp"/>
      <div class="right-menu" style="background: white;height: 530px">
          <%
              User u= (User) request.getSession().getAttribute("user");
              SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
              String birthday=sdf.format(u.getBirthday());
          %>
                  <h3 style="border-bottom: 1px solid #e0e0e0;line-height: 90px">个人资料</h3>
          <div class="user-info">
              <div class="head">
                  <img src=<%=u.getAvatar()%> style="border-radius: 50%;height: 100px;width: 100px">
                  <p class="modify" data-toggle="modal" data-target="#editImage" id="update-image">修改头像</p>
              </div>
              <div class="right_c">
                  <ul>
                      <li class="common">
                              <span id="nickname" style="font-size: 15px;display: inline-block">昵称：<%=u.getUsername()%></span>
                              <span style="float: right;color: #1D62F0;cursor: pointer;font-size: 15px" data-toggle="modal" data-target="#editInformation" id="update-info">修改资料</span>
                      </li>
                      <li class="common">实名：<%=u.getRealname()==null?"":u.getRealname()%></li>
                      <li class="common">性别：<%=u.getSex()==null?"":u.getSex()%></li>
                      <li class="common">生日：<%=u.getBirthday()==null?"":birthday%></li>
                      <li class="common">邮箱：<%=u.getEmail()%></li>
                      <li class="common">职业：<%=u.getJob()==null?"":u.getJob()%></li>
                      <li class="common">简介：<%=u.getIntroduction()==null?"":u.getIntroduction()%></li>
                  </ul>
              </div>
          </div>

          </div>
      </div>
    </div>
  </div>

<jsp:include page="foot.jsp"/>
<div class="modal fade" id="editInformation" role="dialog" >
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">修改个人信息</h4>
            </div>
            <div class="modal-body">
                <ul>
                    <li>昵称：<input type="text" value="<%=u.getUsername()%>"></li>
                    <li>实名：<input type="text" value="<%=u.getRealname()==null?"":u.getRealname()%>"></li>
                    <li>性别：<input type="radio" name="sex" value="男">男<input type="radio" name="sex" value="女">女
                        <input type="radio" name="sex" value="">未知</li>
                    <li>生日：<input type="date" value="<%=u.getBirthday()==null?"":birthday%>"></li>
                    <li>职业：<input type="text" value="<%=u.getJob()==null?"":u.getJob()%>"></li>
                    <li>简介：<textarea  maxlength="150"><%=u.getIntroduction()==null?"":u.getIntroduction()%></textarea></li>
                </ul>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" id="update_userinfo">提交更改</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>
<div class="modal fade" id="editImage" role="dialog" >
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel2">修改头像</h4>
            </div>
            <div class="modal-body">
                <p>请输入url:</p>
                <input type="text"  vlaue="" style="width: 400px">
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" id="update_userimage">提交更改</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>
</body>
</html>