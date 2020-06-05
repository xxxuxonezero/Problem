<%@ page import="cn.onezero.domain.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html>
<head>
	 <meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="UTF-8">
<title>首页</title>
    <script src="js/jquery-3.3.1.js" type="text/javascript"></script>
    <link rel="stylesheet" href="css/mystyle.css">
 <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
 <script src="assets/js/jquery.min.js"></script>
 <script src="assets/js/bootstrap.js"></script>
  <script src="assets/js/form.js"></script>
  <link href="assets/css/bootstrap.css" rel="stylesheet">
<link rel="stylesheet" href="assets/css/font-awesome.css">
<link href="style.css" rel="stylesheet">
   <script src="js/jquery.min.js"></script>
  <script type="text/javascript" src="js/jquery.flexisel.js"></script>  
<script src="js/jquery.wmuSlider.js"></script>
    <%--<script src="js/bootstrap.min.js"></script>--%>
<script type="text/javascript" src="js/check.js"></script>
<!--<link href="assets/css/default.css" rel="stylesheet" type="text/css" />-->

<link href="assets/css/demo.css" rel="stylesheet" type="text/css" />
 <!--<link href="assets/css/loaders.css" rel="stylesheet" type="text/css" />-->
     <link href="css/style.css" rel="stylesheet" type="text/css" />
	<script>
		$(document).ready(function () {
            $('.example1').wmuSlider();
        })
    </script>
	<script type="text/javascript">
         $(document).ready(function () {
        $(window).load(function() {

            $("#flexiselDemo3").flexisel({
                visibleItems: 3,
                animationSpeed: 1000,
                autoPlay: true,
                autoPlaySpeed: 3000,
                pauseOnHover: true,
                enableResponsiveBreakpoints: true,
                responsiveBreakpoints: {
                    portrait: {
                        changePoint:480,
                        visibleItems: 1
                    },
                    landscape: {
                        changePoint:640,
                        visibleItems: 2
                    },
                    tablet: {
                        changePoint:768,
                        visibleItems: 3
                    }
                }
            });

        }); }); 
	</script>  
	<style type="text/css">
     
     #pwd1_text,#yanzhengma_login_text,#yanzhengma_text,#repwd_text2,#pwd-ip2,#text-ip3,#text-ip1,#text-ip,#pwd-ip,#repwd_text,#text2-ip{
      display: none;
    }
    .temp-custom-modal-wrap span{
      color: red;
    }
    .footer-bottom{
       
      text-align: center;
    }
  </style>
</head>
<body>
<%--<%--%>
    <%--Cookie[] cookies = request.getCookies();--%>
    <%--if(cookies!=null){--%>
        <%--for(Cookie c:cookies){--%>
            <%--System.out.println(c.getName()+":"+c.getValue());--%>
        <%--}--%>
    <%--}--%>
<%--%>--%>
<!-- header -->
<div class="banner">
	<div class="header" style="background:;">
  	    <div class="container">
			<div class="head-bann">
				<div class="logo">
					<a href="menu.jsp"><img src="images/logo.png" class="img-responsive" alt="" /></a>
				</div>
				<br/><br/>
				<div class="head-part">
					 <div class="container-fluid">

  </div>
				</div>
					<div class="clearfix" style="height: 60px">
                        <div class="collapse navbar-collapse" id="myNavbar">
                            <%--<ul class="nav navbar-nav navbar-right temp-custom-list-items">--%>
                                <%--<li class="nav-item"><a class="nav-link" href="#" data-toggle="modal" data-target="#RegistrationModal">注册</a></li>--%>
                                <%--<li class="nav-item"><a class="nav-link" href="#" data-toggle="modal" data-target="#LogInModal">登录</a></li>--%>
                                <%--<li class="nav-item"><a class="nav-link" href="#" data-toggle="modal" data-target="#ForgotModal">忘记密码</a></li>--%>
                                <%--<li class="nav-item"><a class="nav-link" href="#" data-toggle="modal" data-target="#ResetModal">重置</a></li>--%>
                            <%--</ul>--%>
                                <%
                                    String html;
                                    HttpSession session1 = request.getSession();
                                    User user = (User) session.getAttribute("user");
                                    if(user==null)
                                    {
                                        html=" <ul class=\"nav navbar-nav navbar-right temp-custom-list-items\">\n" +
                                                "                                <li class=\"nav-item\"><a class=\"nav-link\" href=\"#\" data-toggle=\"modal\" data-target=\"#RegistrationModal\">注册</a></li>\n" +
                                                "                                <li class=\"nav-item\"><a class=\"nav-link\" href=\"#\" data-toggle=\"modal\" data-target=\"#LogInModal\">登录</a></li>\n" +
                                                "                                <li class=\"nav-item\"><a class=\"nav-link\" href=\"#\" data-toggle=\"modal\" data-target=\"#ForgotModal\">忘记密码</a></li>\n" +
                                                "                                <li class=\"nav-item\"><a class=\"nav-link\" href=\"#\" data-toggle=\"modal\" data-target=\"#ResetModal\">重置</a></li>\n" +
                                                "                            </ul>";
                                    }
                                    else{
                                        html="<ul class=\"nav navbar-nav navbar-right temp-custom-list-items\">\n" +
                                                "                                <li class=\"nav-item\">\n" +
                                                "                                    <a class=\"root parent\" href=\"../user/information.jsp\" id=\"img_hover\"><img src="+user.getAvatar()+" alt=\"user_img\" width=\"36\" class=\"img-circle\"></a>\n" +
                                                "                                    <ul class=\"draw\">\n" +
                                                "                                        <li><a href=\"user/information.jsp\">个人信息</a></li>\n" +
                                                "                                        <li><a href=\"user/myFavourite.jsp\">我的收藏</a></li>\n" +
                                                "                                        <li><a href=\"user/Manage.jsp\">管理题目</a></li>\n" +
                                                "                                        <li><a href=\"user/wrongProblem.jsp\">我的错题</a></li>\n" +
                                                "                                        <li><a href=\"/exit\">登出</a></li>\n" +
                                                "                                    </ul>\n" +
                                                "                                </li>\n" +
                                                "                                </ul>";
                                    }
                                %>
                                <%=html%>
                                <%--<ul class="nav navbar-nav navbar-right temp-custom-list-items">--%>
                                <%--<li class="nav-item">--%>
                                    <%--<a class="root parent" href="information.jsp" id="img_hover"><img src="assets/img/profile.jpg" alt="user_img" width="36" class="img-circle"></a>--%>
                                    <%--<ul class="draw">--%>
                                        <%--<li><a href="user/information.jsp">个人信息</a></li>--%>
                                        <%--<li><a href="user/myFavourite.jsp">我的收藏</a></li>--%>
                                        <%--<li><a href="user/Manage.jsp">管理题目</a></li>--%>
                                        <%--<li><a href="user/wrongProblem.jsp">我的错题</a></li>--%>
                                        <%--<li><a href="">登出</a></li>--%>
                                    <%--</ul>--%>
                                <%--</li>--%>
                                <%--</ul>--%>
                                <%--<div class="info_nav">--%>
                                <%--<ul>--%>
                                <%--<li>我的错题</li>--%>
                                <%--<li>我的收藏</li>--%>
                                <%--<li>题目管理</li>--%>
                                <%--<li>登出</li>--%>
                                <%--</ul>--%>
                                <%--</div>--%>

                            <%--<ul class="nav navbar-nav navbar-right temp-custom-list-items">--%>
                            <%--<li class="nav-item"><a class="nav-link" href="information.jsp" id="img_hover"><img src="assets/img/profile.jpg" alt="user_img" width="36" class="img-circle"></a></li>--%>
                            <%--</ul>--%>
                            <%--<div class="info_nav">--%>
                                <%--<ul>--%>
                                    <%--<li>我的错题</li>--%>
                                    <%--<li>我的收藏</li>--%>
                                    <%--<li>题目管理</li>--%>
                                    <%--<li>登出</li>--%>
                                <%--</ul>--%>
                            <%--</div>--%>
                        </div>
                    </div>
			</div>
					<!-- start h_menu4 -->
					<div class="h_menu4">
					<a class="toggleMenu" href="">Menu</a>
					<ul class="nav">
						<li class="active"><a href="menu.jsp">首页</a></li>
						<li><a href="jizu/jizu_choice.jsp" class="root">计算机组成原理</a>
							<ul class="drdw">
								<li><a href="jizu/jizu_choice.jsp">选择题</a></li>
								<li><a href="jizu/jizu_tiankong.jsp">填空题</a></li>
								<li><a href="jizu/jizu_jianda.jsp">简答题</a></li>
								<li><a href="jizu/jizu_yingyong.jsp">应用题</a></li>
							</ul>
						</li>
						<li><a href="os/os_choice.jsp" class="root">操作系统</a>
							<ul class="drdw">
								<li><a href="os/os_choice.jsp">选择题</a></li>
								<li><a href="os/os_tiankong.jsp">填空题</a></li>
								<li><a href="os/os_jianda.jsp">简答题</a></li>
								<li><a href="os/os_yingyong.jsp">应用题</a></li>
								 
							</ul>
						</li>
						<li><a href="shujujiegou/shujujiegou_choice.jsp" class="root">数据结构</a>
							<ul class="drdw">
								<li><a href="shujujiegou/shujujiegou_choice.jsp">选择题</a></li>
								<li><a href="shujujiegou/shujujiegou_tiankong.jsp">填空题</a></li>
								<li><a href="shujujiegou/shujujiegou_jianda.jsp">简答题</a></li>
								<li><a href="shujujiegou/shujujiegou_yingyong.jsp">应用题</a></li>
								 
							</ul>
						</li>
						<li><a href="jisuanjiwangluo/jisuanjiwangluo_choice.jsp" class="root">计算机网络</a>
							<ul class="drdw">
								<li><a href="jisuanjiwangluo/jisuanjiwangluo_choice.jsp">选择题</a></li>
								<li><a href="jisuanjiwangluo/jisuanjiwangluo_tiankong.jsp">填空题</a></li>
								<li><a href="jisuanjiwangluo/jisuanjiwangluo_jianda.jsp">简答题</a></li>
								<li><a href="jisuanjiwangluo/jisuanjiwangluo_yingyong.jsp">应用题</a></li>
								 
							</ul>
						</li>
						<li><a href="jizu/fenxi.jsp">总体分析</a></li>
						<%--<li><a href="contact.jsp">联系我们</a></li>--%>

						</ul>
					 	<script type="text/javascript" src="js/nav.js"></script>
				</div>
				<!-- end h_menu4 -->

			<div class="modal fade" id="RegistrationModal" role="dialog">
  <div class="temp-custom-modal-wrap">
    <div class="modal-dialog">
      <!-- Modal content-->
      <div class="modal-content temp-custom-modal-content">
        <button type="button" class="close temp-custom-close-button" data-dismiss="modal" onclick="close_register()">&times;</button>
        <div class="modal-body temp-custom-modal-body">
          <div class="temp-login-form-wrapper">
            <div class="row custom-row">
              <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 temp-form-column-wrap-image">
                <div class="temp-reg-column-wrap-image">
                  <div class="temp-form-inner-wrapper">
                    <h2>注册</h2>
                     <p>如果用户没有帐户，则通过填写给定的表单创建帐户。</p>
                      
                  </div>
                </div>
              </div>
              <div class="col-lg-6 col-md-6 col-sm-6 col-xs-22"  >
                <div class="temp-form-column-wrap"  >
                  <h4>注册</h4>
                  <form >
                    <div class="row" >
                      <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12"  >
                        <div class="form-group">
                          <span class="temp-span-wrap temp-span-input-label-wrap">
                            <input  class="temp_input_field" id="login2" type="text" onblur="checkname2()">
                            <label class="temp_input_label">
                              <span class="temp_input_label-content">名称</span>
                            </label>
                          </span>
                        </div>
                      </div>
                       <div class="ipee2">
        <span id="text2-ip">用户名不能为空</span>  </div>
                      <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" >
                        <div class="form-group">
                          <span class="temp-span-wrap temp-span-input-label-wrap">
                            <input class="temp_input_field" id="login" type="text" onblur="checkname()">
                            <label class="temp_input_label">
                              <span class="temp_input_label-content">邮箱</span>
                            </label>
                          </span>
                              
       
                        </div>
                         <div class="ipee">
                      <span id="text-ip">邮箱格式不对</span>  </div>
                      </div>
                      <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" >
                        <div class="form-group">
                          <span class="temp-span-wrap temp-span-input-label-wrap">
                            <input class="temp_input_field" id="pwd" type="password"  onblur="checkpwd() "  >
                            <label class="temp_input_label">
                              <span class="temp_input_label-content">密码</span>
                            </label>
                          </span>
                        </div>
                      </div>
                      
        <div class="ipee">
        <span id="pwd-ip">输入6-20个字母、数字、下划线 </span>  </div>

                      <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12"  >
                        <div class="form-group">
                          <span class="temp-span-wrap temp-span-input-label-wrap">
                            <input class="temp_input_field" id="repwd" type="password" onblur="checkrepwd()" >
                            <label class="temp_input_label">
                              <span class="temp_input_label-content">确认密码</span>
                            </label>
                          </span>
                        </div>
                      </div>
                         
        <div class="ipee">
        <span id="repwd_text">前后密码输入不一致！ </span>  </div>
                      <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12"  >
                        <div class="form-group">
                          <span class="temp-span-wrap temp-span-input-label-wrap">
                            <input  class="temp_input_field" id="loginphone" type="text"   >
                            <label class="temp_input_label">
                              <span class="temp_input_label-content" >手机号码</span>
                            </label>
                          </span>
                        </div>
                      </div>

        <!--<div class="ipee">-->
        <!--<span id="text1-ip">11位手机号(数字1开头)</span>  </div>-->
                      <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="form-group">
                          <div class="row"  >
                            <div class="col-sm-4">
                              <label class="radio-inline temp-custom-radio-button">
                                <input type="radio" name="gender" id="femaleRadio" value="女">女性
                                <span class="temp-radio-checkmark"></span>
                              </label>
                            </div>
                            <div class="col-sm-4">
                              <label class="radio-inline temp-custom-radio-button">
                                <input type="radio" name="gender" id="maleRadio" value="男">男性
                                <span class="temp-radio-checkmark"></span>
                              </label>
                            </div>
                            <div class="col-sm-4">
                              <label class="radio-inline temp-custom-radio-button">
                                <input type="radio" name="gender" id="uncknownRadio" value=""  checked="">未知
                                <span class="temp-radio-checkmark"></span>
                              </label>
                            </div>
                          </div>
                          <!--验证码-->
                          <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12"  >
                        <div class="form-group">
                          <span class="temp-span-wrap temp-span-input-label-wrap">
                            <input class="temp_input_field" id="yanzhengma" type="text" onblur="checkyanzhengma()">
                            <label class="temp_input_label">
                              <span class="temp_input_label-content">验证码</span>
                            </label>
                          </span>
                            <br>
                            <span id="code_msg"></span>
                        </div>
                      </div>            
                          <div class="ipee7">
        <span id="yanzhengma_text" >验证码不能为空 </span>  </div>

                      <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12" style="    height: 60px;">
                        <div class="form-group">
                          <span class="temp-span-wrap temp-span-input-label-wrap">
                                
                            
                              <span class="temp_input_label-content">
                                  <%--<img src="/CodeServlet" style="width: 100px;height: 40px;" onclick="code_change()" id="code">--%>
                                  <input type="button" onclick="send()" style="margin-top: 20px;color: white;background: purple;height: 30px" value="发送验证码">
                              </span>
                             
                          </span>
                        </div>
                      </div>


                        </div>
                      </div>
                      <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12"  >
                        <div class="temp-login-button-wrap">
                          <button class="btn btn-info temp-form-button" type="button" onclick="judge_info()">提交注册</button>
                        </div>
                      </div>
                    </div>
                  </form>
                </div>
              </div>

            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
  <div class="modal fade" id="LogInModal" role="dialog">
  <div class="temp-custom-modal-wrap">
    <div class="modal-dialog">
     
      <div class="modal-content temp-custom-modal-content">
        <button type="button" class="close temp-custom-close-button" data-dismiss="modal" onclick="close_login()">&times;</button>
        <div class="modal-body temp-custom-modal-body">
          <div class="temp-login-form-wrapper">
            <div class="row custom-row">
              <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 temp-form-column-wrap-image">
                <div class="temp-login-column-wrap-image">
                  <div class="temp-form-inner-wrapper">
                    <h2>登录</h2>
                    <p>如果你有帐户，然后登录。否则，首先创建您的帐户。</p>
                    
                  </div>
                </div>
              </div>
              <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                <div class="temp-form-column-wrap">
                  <h2>登录</h2>
                  <form>
                    <div class="form-group">
                      <span class="temp-span-wrap temp-span-input-label-wrap">
                        <input class="temp_input_field" type="text" id="login1" onblur="checknamelogin()">
                        <label class="temp_input_label">
                          <span class="temp_input_label-content">邮箱</span>
                        </label>
                      </span>
                   
                     <div class="ipee">
                      <span id="text-ip1">邮箱格式不对</span>  </div> </div>

                    <div class="form-group">
                      <span class="temp-span-wrap temp-span-input-label-wrap">
                        <input class="temp_input_field" type="password" id="pwd1" >
                        <label class="temp_input_label">
                          <span class="temp_input_label-content">密码</span>
                        </label>
                      </span>
                    </div><div class="ipee">
                      <span id="pwd1_text">密码不能为空</span>  </div> 
                            <!--验证码-->
                          <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12"  >
                        <div class="form-group">
                          <span class="temp-span-wrap temp-span-input-label-wrap">
                            <input class="temp_input_field" id="yanzhengma_login" type="text" onblur="checkyanzhengma_login();">    
                            <label class="temp_input_label">
                              <span class="temp_input_label-content">验证码</span>
                            </label>

                          </span>
                        </div>
                      </div>            
                          <div class="ipee7">
        <span id="yanzhengma_login_text" >未输入验证码 </span>  </div>

                      <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12" style="    height: 60px;">
                        <div class="form-group">
                          <span class="temp-span-wrap temp-span-input-label-wrap">
                                
                            
                              <span class="temp_input_label-content"><img src="/CodeServlet" style="width: 100px;height: 40px;" onclick="code_change1()" id="code1"></span>
                             
                          </span>
                        </div>
                      </div>
      
                    <div class="form-group">
                      <label class="temp-checkbox-wrap">
                        <input name="signup_agree_checkbox" value="1" type="checkbox" checked="">
                        记住密码
                        <span class="checkmark"></span> 
                      </label>
                       
                    </div>
                    <div class="temp-login-button-wrap">
                      <button class="btn btn-info temp-form-button" type="button" onclick="loginin()">提交登录</button>
                    </div>
                  </form>
                </div>  
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>  
<!--====  End of login form modal  ====-->

 
<!-- Modal -->
<div class="modal fade" id="ForgotModal" role="dialog">
  <div class="temp-custom-modal-wrap">
    <div class="modal-dialog">
      <!-- Modal content-->
      <div class="modal-content temp-custom-modal-content">
        <button type="button" class="close temp-custom-close-button" data-dismiss="modal">&times;</button>
        <div class="modal-body temp-custom-modal-body">
          <div class="temp-login-form-wrapper">
            <div class="row custom-row">
              <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 temp-form-column-wrap-image">
                <div class=" temp-forget-password-column-wrap-image">
                  <div class="temp-form-inner-wrapper">
                    <h2>忘记密码?</h2>
                    <p>
                      请提供您注册时使用的用户名或电子邮件地址。我们会给你发一封电子邮件，允许你重设密码。
                    </p>
                  </div>
                </div>
              </div>
              <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                <div class="temp-form-column-wrap">
                  <h2>忘记密码?</h2>
                  <form>
                    <div class="row">
                      <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="form-group">
                          <span class="temp-span-wrap temp-span-input-label-wrap">
                            <input  class="temp_input_field" type="text" id="login3" onblur="checkname3()">
                            <label class="temp_input_label">
                              <span class="temp_input_label-content">邮箱</span>
                            </label>
                          </span>
                        </div>
                      </div>
                      <div class="ipee">
	                    <span id="text-ip3">邮箱格式不对</span>  </div>
                      <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="temp-login-button-wrap">
                          <button class="btn btn-info temp-form-button" type="button" onclick="if(checkname3()) alert('成功发送')">提交发送</button>
                        </div>
                      </div>
                    </div>
                  </form>
                </div>  
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!--====  End of forget password form  ====-->
<!--========================================
=            reset form section            =
=========================================-->
<!-- Modal -->
<div class="modal fade" id="ResetModal" role="dialog">
  <div class="temp-custom-modal-wrap">
    <div class="modal-dialog">
      <!-- Modal content-->
      <div class="modal-content temp-custom-modal-content">
        <button type="button" class="close temp-custom-close-button" data-dismiss="modal">&times;</button>
        <div class="modal-body temp-custom-modal-body">
          <div class="temp-login-form-wrapper">
            <div class="row custom-row">
              <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 temp-form-column-wrap-image">
                <div class=" temp-reset-password-column-wrap-image">
                  <div class="temp-form-inner-wrapper">
                    <h2>重置密码</h2>
                    <p>您只需填写给定的条目并设置新密码即可更改密码。</p>
                  </div>
                </div>
              </div>
              <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                <div class="temp-form-column-wrap">
                  <h2>重置密码</h2>
                  <form>
                    <div class="row">
                      <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="form-group">
                          <span class="temp-span-wrap temp-span-input-label-wrap">
                            <input class="temp_input_field" type="password" id="pwd3" >
                            <label class="temp_input_label">
                              <span class="temp_input_label-content">当前密码</span>
                            </label>
                          </span>
                        </div>
                      </div>
                      <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="form-group">
                          <span class="temp-span-wrap temp-span-input-label-wrap">
                            <input class="temp_input_field" type="password" id="pwd23" onblur="checkpwd2()">
                            <label class="temp_input_label">
                              <span class="temp_input_label-content">新密码</span>
                            </label>
                          </span>
                        </div>
                      </div> <div class="ipee">
	      <span id="pwd-ip2">输入6-20个字母、数字、下划线 </span>  </div>
                      <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="form-group">
                          <span class="temp-span-wrap temp-span-input-label-wrap">
                            <input class="temp_input_field" type="password" id="repwd2" onblur="checkrepwd2()" >
                            <label class="temp_input_label">
                              <span class="temp_input_label-content">确认密码</span>
                            </label>
                          </span>
                        </div>
                      </div><div class="ipee">
	      <span id="repwd_text2">前后密码输入不一致！ </span>  </div>
                      <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="temp-login-button-wrap">
                          <button class="btn btn-info temp-form-button" type="button" onclick="chongzhi()">重置密码</button>
                        </div>
                      </div>
                    </div>
                  </form>
                </div>  
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>		 
</div> </div>
<div class="banner-slider">
			<div class="wmuSlider example1 section" id="section-1">
			   <article style="position: absolute; width: 100%; opacity: 0;"> 
			   	   	<div class="banner-info">
				<div class="container">
					<h1>“WE LOVE TO MAKE YOUR WEB WAY”</h1>
				</div>
			</div>
				</article>
				 <article style="position: absolute; width: 100%; opacity: 0;"> 
			   	   	<div class="banner-info">
				<div class="container">
					<h1>“Lorem ipsum dolor sit amet”</h1>
				</div>
			</div>
				</article>
				 <article style="position: absolute; width: 100%; opacity: 0;"> 
			   	   		<div class="banner-info">
				<div class="container">
					<h1>“Claritas est etiam processus”</h1>
				</div>
			</div>
				</article>
				<ul class="wmuSliderPagination">
                	<li><a href="#" class="">0</a></li>
                	<li><a href="#" class="">1</a></li>
                	<li><a href="#" class="">2</a></li>
                </ul>
		  </div>		
		
		<!-- script -->

		</div>	<!-- script -->		
		
	</div>

<div class="ourteam" style="height: 620px">
			<div class="container">
				<h3>CHOOSE YOUR SUBJECTS</h3>
				<div class="team">
					  <ul id="flexiselDemo3">
						<li>
							<div class="team1">
								<a href="jizu/jizu_choice.jsp" class="b-link-stripe b-animate-go  thickbox play-icon popup-with-zoom-anim">
								<img src="images/jisuanjizuchengyuanli.jpg" class="img-responsive" alt="" /></a>
							</div>
						</li>
						<li>
							<div class="team1">
								<a href="os/os_choice.jsp" class="b-link-stripe b-animate-go  thickbox play-icon popup-with-zoom-anim">
								<img src="images/os.jpg" class="img-responsive" alt="" /></a>
								
							</div>
						</li>
						<li>
							<div class="team1">
								<a href="shujujiegou/shujujiegou_choice.jsp" class="b-link-stripe b-animate-go  thickbox play-icon popup-with-zoom-anim">
								<img src="images/shujujieg.jpg" class="img-responsive" alt="" /></a>
								
							</div>
						</li>
						<li>
							<div class="team1">
								<a href="jisuanjiwangluo/jisuanjiwangluo_choice" class="b-link-stripe b-animate-go  thickbox play-icon popup-with-zoom-anim">
								<img src="images/jisuanjiwangluo.jpg" class="img-responsive" alt="" /></a>
							
							</div>
					    </li>
						<li>
							<div class="team1">
								<a href="shujujiegou/shujujiegou_choice" class="b-link-stripe b-animate-go  thickbox play-icon popup-with-zoom-anim">
								<img src="images/shujujieg.jpg" class="img-responsive" alt="" /></a>
							
							</div>
					    </li>
						
					 </ul>
				</div>

		</div>
	</div>
<!-- ourteam -->

<!-- contuct -->
	 <div class="contuct">
		<div class="container">
			<h3>CONTACT WITH US</h3>
				<div class="col-md-6 contuct-left">
						<form>
							<input type="text" class="text" value=" Name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = ' Name';}">
							<input type="text" class="text" value=" Your mail adress" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = ' Your mail adress';}">
							<textarea value="Message" onfocus="if(this.value == 'Message') this.value='';" onblur="if(this.value == '') this.value='Message';">Message</textarea>
						</form>
				</div>
				<div class="col-md-6 contuct-right">
					<h4>A Little About Us</h4>
					<p>我们是来自南信大的可爱的同学们</p>
					<p>这个网站是为了提供给那些想要刷题目的同学们！</p>
				</div>
					<div class="clearfix"></div>
			
		</div>
	</div> 
<!-- contuct -->
<!-- footer -->
 

		<div class="container">
			<div class="footer-top">
				<div class="subsc">
					<div class="monthly" style="margin-top: 150px">
						<p>Subcrive Our </p>
						<h5>Monthly Newslatter </h5>
						<p>for Up to Date</p>
					</div>
					<div class="mail" style="position: relative;top:50px">
							<form>
								<input type="text" class="text" value=" Your mail" onfocus="this.value = '';" >
								<input type="submit" value="SUBMIT">
							</form>
					</div>
				</div>
			</div>
				<div class="footer-bottom" style="margin-top: 50%">
					<%--<div class="footer-nav">--%>
						<%--<ul>--%>
							<%--<li><a href="menu.jsp">首页</a></li> \--%>
							<%--<li><a href="jizu/jizu_choice.jsp">计算机组成原理 </a></li> \--%>
							<%--<li><a href="os/os_choice.jsp">操作系统</a></li> \--%>
							<%--<li><a href="shujujiegou/shujujiegou_choice.jsp">数据结构</a></li> \--%>
							<%--<li><a href="jisuanjiwangluo/jisuanjiwangluo_choice.jsp">计算机网络</a></li>\--%>
							<%--<li><a href="contact.jsp">联系我们</a></li>--%>
								<%--<div class="clearfix"> </div>--%>
						<%--</ul>--%>
					<%--</div>--%>
						<p>Copyright &copy; 2019.Company name STUDY.</p>
				</div>
		</div>

	</div>

</body>
</html>