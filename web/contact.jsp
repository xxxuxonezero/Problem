<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html>
<head>
  <title>Contact</title>
  <meta charset="utf-8">
  <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
  <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta name="keywords" content="4useri Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />

  <script src="js/jquery.min.js"></script>


  <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
  <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
  <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
  <script src="assets/js/jquery.min.js"></script>
  <!-- Include all compiled plugins (below), or include individual files as needed -->
  <script src="assets/js/bootstrap.js"></script>
  <!-- custom js link -->
  <script src="assets/js/form.js"></script>

  <link href="assets/css/bootstrap.css" rel="stylesheet">
  <!--    font-awesome -->
  <link rel="stylesheet" href="assets/css/font-awesome.css">
  <!-- style -->
  <link href="style.css" rel="stylesheet">
  <script src="js/jquery.min.js"></script>
  <script type="text/javascript" src="js/check.js"></script>

  <script type="text/javascript" src="js/jquery.flexisel.js"></script>
  <script src="js/jquery.wmuSlider.js"></script>
  <!--<link href="css/default.css" rel="stylesheet" type="text/css" />-->
  <!--必要样式-->
  <link href="css/style.css" rel="stylesheet" type="text/css" />
  <link href="assets/css/demo.css" rel="stylesheet" type="text/css" />
  <!--<link href="css/loaders.css" rel="stylesheet" type="text/css" />-->
  <style type="text/css">
    .tt h1{
      font-size: 330px;
    }
    #pwd1_text,#yanzhengma_login_text,#yanzhengma_text,#repwd_text2,#pwd-ip2,#text-ip3,#text-ip1,#text-ip,#pwd-ip,#repwd_text,#text2-ip{
      display: none;
    }
    .temp-custom-modal-wrap span{
      color: red;
    }
    .footer-bottom{

      text-align: center;
    }
    .footer{
      margin-top:200px;

    }
  </style>
</head>
<body>
<!-- header -->
<div class="banner">
  <div class="header">
    <div class="container">
      <div class="head-bann">
        <div class="logo">
          <a href="menu.jsp"><img src="images/logo.png" class="img-responsive" alt="" /></a>
        </div>
        <div class="collapse navbar-collapse" id="myNavbar">
          <ul class="nav navbar-nav navbar-right temp-custom-list-items">
            <li class="nav-item"><a class="nav-link" href="#" data-toggle="modal" data-target="#RegistrationModal">注册</a></li>
            <li class="nav-item"><a class="nav-link" href="#" data-toggle="modal" data-target="#LogInModal">登录</a></li>
            <li class="nav-item"><a class="nav-link" href="#" data-toggle="modal" data-target="#ForgotModal">忘记密码</a></li>
            <li class="nav-item"><a class="nav-link" href="#" data-toggle="modal" data-target="#ResetModal">重置</a></li>
          </ul>
        </div>
        <div class="clearfix"> </div>
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
          <li><a href="contact.jsp">联系我们</a></li>
          <li><a href="user/information.jsp" class="root">个人信息</a>
            <ul class="drdw">
              <li><a href="user/information.jsp">查看个人信息</a></li>
              <li><a href="change.jsp">编辑个人信息</a></li>


            </ul>
          </li>
        </ul>
        <script type="text/javascript" src="js/nav.js"></script>
      </div>
      <!-- end h_menu4 -->

    </div>

    <div class="modal fade" id="RegistrationModal" role="dialog">
      <div class="temp-custom-modal-wrap">
        <div class="modal-dialog">
          <!-- Modal content-->
          <div class="modal-content temp-custom-modal-content">
            <button type="button" class="close temp-custom-close-button" data-dismiss="modal">&times;</button>
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
                            <input  class="temp_input_field" id="login2" type="text"  onblur=" checkname2()">
                            <label class="temp_input_label">
                              <span class="temp_input_label-content">名称</span>
                            </label>
                          </span>
                            </div>
                          </div>
                          <div class="ipee2">
                            <span id="text2-ip">输入8-12位字母或数字</span>  </div>
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
                            <input  class="temp_input_field" id="loginphone" type="text" onblur=" checkphone()"  >
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
                                    <input type="radio" name="gender" id="femaleRadio" value="Female">女性
                                    <span class="temp-radio-checkmark"></span>
                                  </label>
                                </div>
                                <div class="col-sm-4">
                                  <label class="radio-inline temp-custom-radio-button">
                                    <input type="radio" name="gender" id="maleRadio" value="Male">男性
                                    <span class="temp-radio-checkmark"></span>
                                  </label>
                                </div>
                                <div class="col-sm-4">
                                  <label class="radio-inline temp-custom-radio-button">
                                    <input type="radio" name="gender" id="uncknownRadio" value="Unknown"  checked="">未知
                                    <span class="temp-radio-checkmark"></span>
                                  </label>
                                </div>
                              </div>
                              <!--验证码-->
                              <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12"  >
                                <div class="form-group">
                          <span class="temp-span-wrap temp-span-input-label-wrap">
                            <input class="temp_input_field" id="yanzhengma" type="text" onblur="checkyanzhengma();" />
                            <label class="temp_input_label" >
                              <span class="temp_input_label-content">验证码</span>
                            </label>

                          </span>
                                </div>
                              </div>
                              <div class="ipee7">
                                <span id="yanzhengma_text" >未输入验证码 </span>  </div>

                              <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12" style="    height: 60px;">
                                <div class="form-group">
                          <span class="temp-span-wrap temp-span-input-label-wrap">


                              <span class="temp_input_label-content"><img src="images/team2.jpg" style="width: 100px;height: 40px;"></span>

                          </span>
                                </div>
                              </div>


                            </div>
                          </div>
                          <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12"  >
                            <div class="temp-login-button-wrap">
                              <button class="btn btn-info temp-form-button" type="button" onclick="rigisterindex()">提交注册</button>
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
            <button type="button" class="close temp-custom-close-button" data-dismiss="modal">&times;</button>
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
                        <input class="temp_input_field" type="password" id="pwd1" onblur="checkrepwd7()" >
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
                          <span id="yanzhengma_login_text" >未输入验证码 </span>    </div>


                        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12" style="    height: 60px;">
                          <div class="form-group">
                          <span class="temp-span-wrap temp-span-input-label-wrap">


                              <span class="temp_input_label-content"><img src="images/team2.jpg" style="width: 100px;height: 40px;"></span>

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
          Modal content
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

<div class="banner-info1">
  <div class="banner-col">
  </div>

  <div class="container">
    <h2>contact</h2>
  </div>
</div>

<!-- header -->
<!-- contact -->
<div class="contact">
  <div class="container">
    <section class="title-section">

      <ul class="breadcrumb breadcrumb__t"><li><a href="menu.jsp">Home</a></li><li class="active">Contact</li></ul>
    </section>
    <div class="row contact_top">
      <div class="col-md-8 contact_left">
        <p>Thank you for stopping by.Please use the form below to contact us and will get back to you at the earliest possible.For feedback or questions,please emailus at  <span>email@bislite.com</span></p>
        <form method="post" action="contact-post.jsp">
          <div class="form_details">
            <input type="text" class="text" value="Name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Name';}">
            <input type="text" class="text" value="Email Address" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email Address';}">
            <input type="text" class="text" value="Subject" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Subject';}">
            <textarea value="Message" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Message';}">Message</textarea>
            <input name="submit" type="submit" id="submit" value="Submit">
          </div>
        </form>
      </div>

    </div>
  </div>

  <div class="one"></div>
  <!-- contact -->
  <!-- footer -->
  <div class="footer">
    <div class="container">
      <div class="footer-top">
        <div class="subsc">
          <div class="monthly">
            <p>Subcribe Our </p>
            <h5>Monthly Newslatter </h5>
            <p>for Up to Date</p>
          </div>
          <div class="mail">
            <form>
              <input type="text" class="text" value=" Your mail" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Your mail;'}" >
              <input type="submit" value="SUBMIT" />
            </form>
          </div>
          <div class="clearfix"></div>
        </div>
      </div>
      <div class="footer-nav">
        <ul>
          <li><a href="menu.jsp">首页</a></li> \
          <li><a href="jizu/jizu_choice.jsp">计算机组成原理 </a></li> \
          <li><a href="os/os_choice.jsp">操作系统</a></li> \
          <li><a href="shujujiegou/shujujiegou_choice.jsp">数据结构</a></li> \
          <li><a href="jisuanjiwangluo/jisuanjiwangluo_choice.jsp">计算机网络</a></li>\
          <li><a href="contact.jsp">联系我们</a></li>
          <div class="clearfix"> </div>
        </ul>
      </div>
    </div>
  </div>
  <!-- footer -->
  <div style="display:none"><script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'></script></div>
</div>

</body>
</html>