<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>计组选择题</title>
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
    <link rel="stylesheet" href="../css/question_choice.css">
    <script src="../js/jquery-3.3.1.js"></script>
    <script src="../js/choice.js"></script>
    <link rel="stylesheet" href="../assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i">
    <link rel="stylesheet" href="../assets/css/ready.css">
    <link rel="stylesheet" href="../assets/css/demo.css">
    <link rel="stylesheet" href="../css/icon/iconfont.css">
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
                    <li class="nav-item dropdown">
                        <a href="../user/information.jsp" class="dropdown-toggle profile-pic"   > <img src="../assets/img/profile.jpg" alt="user-img" width="36" class="img-circle" >
                        </a>
                        <span>小明</span>



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
                                <a href="jizu_choice.jsp" >
                                    <span class="link-collapse">选择题</span>

                                </a>
                            </li>
                            <li>
                                <a href="jizu_tiankong.jsp">
                                    <span class="link-collapse">填空题</span>
                                </a>
                            </li>
                            <li>
                                <a href="jizu_jianda.jsp">
                                    <span class="link-collapse">简答题</span>
                                </a>
                            </li>
                            <li>
                                <a href="jizu_yingyong.jsp">
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
									<a href="fenxi.jsp" style="color: #777;font-weight: 600">总体分析</a>
									<span class="user-level"> </span>
                                    <!-- <span class="caret"></span> -->
								</span>
                    </a>PC
                    <div class="clearfix"></div>

                </div>
            </div>

        </div>
    </div>
    <div class="main-panel" style=" background-color: #CCCCCC">
        <div class="content" id="choice_content" >
            <div class="choice-question">
                <div class="wrong-count">
                <span>总共错了n次</span>
            </div>

                <div class="collect">
                    <a href="#">
                        <span class="iconfont icon-shoucang"></span>
                    </a>
                </div>
                <p>下列各项中，不应通过所有者权益科目核算的是（　　）。</p>
                <ul>
                    <li>A . 可供出售金融资产持有期间发生的非减值性公允价值变动</li>
                    <li>B . 企业收到投资者出资额超出其在注册资本或股本中所占份额的部分</li>
                    <li>C . 权益法下长期股权投资按持股比例享有被投资单位发生的净亏损．</li>
                    <li>D . 回购股票支付的总价款低于面值总额的，所注销库存股的账面余额与所冲减股本的差额</li>
                </ul>
                <hr>
                <div class="answer-show">
                    <button class="answer">显示答案</button>
                    <div class="answer-show-text"><span>fakhg</span></div>

                </div>

                <div></div>
            </div>
            <div class="choice-question">
                <div class="colloect">
                    <a href="#"><svg t="1577408338336" class="icon" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="2496" width="200" height="200"><path d="M267.636364 977.454545a93.090909 93.090909 0 0 1-55.854546-18.618181 93.090909 93.090909 0 0 1-37.236363-90.763637L209.454545 672.581818a46.545455 46.545455 0 0 0-13.963636-41.890909l-144.290909-139.636364a93.090909 93.090909 0 0 1 51.2-158.254545L302.545455 302.545455a46.545455 46.545455 0 0 0 34.90909-25.6l88.436364-179.2a93.090909 93.090909 0 0 1 167.563636 0l88.436364 179.2A46.545455 46.545455 0 0 0 721.454545 302.545455l200.145455 27.927272a93.090909 93.090909 0 0 1 51.2 158.254546l-144.290909 139.636363a46.545455 46.545455 0 0 0-13.963636 41.890909l34.90909 195.49091a93.090909 93.090909 0 0 1-37.236363 90.763636 93.090909 93.090909 0 0 1-100.072727 6.981818l-179.2-93.090909a48.872727 48.872727 0 0 0-44.218182 0l-179.2 93.090909a95.418182 95.418182 0 0 1-41.890909 13.963636zM512 93.090909a46.545455 46.545455 0 0 0-41.890909 25.6l-88.436364 179.2a93.090909 93.090909 0 0 1-69.818182 51.2l-202.472727 27.927273a46.545455 46.545455 0 0 0-37.236363 32.581818 46.545455 46.545455 0 0 0 11.636363 46.545455l144.290909 139.636363a93.090909 93.090909 0 0 1 27.927273 83.781818l-34.909091 195.490909a46.545455 46.545455 0 0 0 18.618182 46.545455 46.545455 46.545455 0 0 0 51.2 4.654545l179.2-93.090909a95.418182 95.418182 0 0 1 88.436364 0l179.2 93.090909a46.545455 46.545455 0 0 0 51.2-4.654545 46.545455 46.545455 0 0 0 18.618181-46.545455L768 679.563636a93.090909 93.090909 0 0 1 27.927273-83.781818l144.290909-139.636363a46.545455 46.545455 0 0 0 11.636363-46.545455 46.545455 46.545455 0 0 0-37.236363-32.581818L714.472727 349.090909a93.090909 93.090909 0 0 1-69.818182-51.2l-90.763636-179.2A46.545455 46.545455 0 0 0 512 93.090909z" fill="#f4ea2a" p-id="2497"></path></svg></a>

                </div>
                <p>下列各项中，不应通过所有者权益科目核算的是（　　）。</p>
                <ul>
                    <li>A . 可供出售金融资产持有期间发生的非减值性公允价值变动</li>
                    <li>B . 企业收到投资者出资额超出其在注册资本或股本中所占份额的部分</li>
                    <li>C . 权益法下长期股权投资按持股比例享有被投资单位发生的净亏损．</li>
                    <li>D . 回购股票支付的总价款低于面值总额的，所注销库存股的账面余额与所冲减股本的差额</li>
                </ul>
                <hr>
                <div class="answer-show">
                    <button class="answer">显示答案</button>
                    <div class="answer-show-text"><span>fakhg</span></div>

                </div>

                <div></div>
            </div>
        </div>
        <div class="page-normal" id="page">

        </div>
    </div>

    <footer class="footer"  >
        <div class="container-fluid" style=" width: 500px;height: 100%;">

            <div class="copyright ml-auto" >
                <a href="../menu.jsp" style="color: black;font-weight: bold;">首页</a>\
                <a href="jizu_choice.jsp" style="color: black;font-weight: bold;">计算机组成原理</a>\
                <a href="../os/os_choice.jsp" style="color: black;font-weight: bold;">操作系统</a>\
                <a href="../shujujiegou/shujujiegou_choice.jsp" style="color: black;font-weight: bold;">数据结构</a>\
                <a href="../jisuanjiwangluo/jisuanjiwangluo_choice.jsp" style="color: black;font-weight: bold;" >计算机网络</a>\
                <a href="../contact.jsp" style="color: black;font-weight: bold;">联系我们</a>
            </div>
        </div>
    </footer>
</div>
</div>
</div>
<div class="modal fade"id="RegistrationModal" role="dialog" >
    <div class="temp-custom-modal-wrap" >
        <div class="modal-dialog" align="center">
            <!-- Modal content-->
            <div class="modal-content temp-custom-modal-content" style="background-color:  #D3D3D3; width: 800px;height: 800px">
                <button type="button" class="close temp-custom-close-button" data-dismiss="modal">&times;</button>
                <div class="modal-body temp-custom-modal-body"  >
                    <div class="temp-login-form-wrapper"  >
                        <div class="row custom-row"  >
                            <div style="width: 800px;height: 800px;background-color:  #D3D3D3" >
                                <h4 align="center" style="color: black;">添加题目</h4>
                                <div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <span style="color: black;">选择科目:</span>
                                    <input type="radio" name="subject" checked="">计算机组成原理&nbsp;&nbsp;&nbsp;
                                    <input type="radio" name="subject">操作系统&nbsp;&nbsp;&nbsp;
                                    <input type="radio" name="subject">数据结构&nbsp;&nbsp;&nbsp;
                                    <input type="radio" name="subject">计算机网络&nbsp;&nbsp;&nbsp;
                                    <input type="radio" name="subject">
                                    <span>其他</span>&nbsp;<input type="text" name="" size="20px">
                                </div><br/>
                                <div class="type">
                                    <span style="color: black;">选择题型:</span>
                                    <input type="radio" name="type" class="type_xuanze" onchange="showxuanze()" checked="">&nbsp;选择题&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <input type="radio" name="type" onchange="showtiankong()">填空题&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <input type="radio" name="type" onchange="showjianda()">简答题&nbsp;&nbsp;&nbsp;&nbsp;
                                    <input type="radio" name="type" onchange="showyingyong()">应用题&nbsp;&nbsp;&nbsp;

                                </div>
                                <div class="timu"   >
                                    <!--xuanze-->
                                    <div class="xuanze1" id="xuanze_timu" style="display: inline-block;">
                                        <h5 align="left" >选择题:</h5>
                                        <div class="xuanze_timu">
                                            <span  class="span1">题目:</span>&nbsp;&nbsp;<br/><textarea cols="60" rows="6" style="display: block;"></textarea>
                                            <input type="file" name="">
                                        </div> <br/>
                                        <div class="xuanze_xuanxiang">
                                            <span style="display: block;text-align: left;font-weight: bold;color: black">选项:</span><br/>
                                            A&nbsp;&nbsp;<input type="text" name="" size="60px" > &nbsp;&nbsp;<br/>
                                            B&nbsp;&nbsp;<input type="text" name="" size="60px" > &nbsp;&nbsp;<br/>
                                            C&nbsp;&nbsp;<input type="text" name="" size="60px" > &nbsp;&nbsp;<br/>
                                            D&nbsp;&nbsp;<input type="text" name="" size="60px" > &nbsp;&nbsp;<br/>
                                        </div>
                                        <br/>
                                        <div class="answer_xuanze">
                                            <span class="span1" >答案:&nbsp;</span><br/><input type="text" name="" size="60px"><br/><input type="file" name="">
                                        </div>
                                        <div><br/>
                                            <span  >题目权限设置：</span>
                                            <select>
                                                <option selected="">公开</option>
                                                <option>私密</option>
                                            </select>
                                        </div>
                                        <br/>
                                    </div>
                                </div>

                                <!--tiankong-->
                                <div class="tiankong" id="tiankong_timu">
                                    <h5 align="left">填空:</h5>
                                    <div class="tiankong_timu" >
                                        <span class="span1"  >题目:</span>&nbsp;&nbsp;<br/><textarea cols="60" rows="6"></textarea><br/>
                                        <input type="file" name=""><br/>
                                    </div><br/>
                                    <div class="answer_tiankong">
                                        <span class="span1"  >答案:&nbsp;</span><br/><input type="text" name="" size="34px"><input type="file" name=""><br/>
                                    </div>
                                    <div><br/>
                                        <span class="span1"  >题目权限设置：</span>
                                        <select>
                                            <option selected="">公开</option>
                                            <option>私密</option>
                                        </select>
                                    </div>
                                    <br/>
                                </div>
                                <!--jianda-->
                                <div class="jianda" id="jianda_timu">
                                    <h5 align="left">简答:</h5>
                                    <div class="jianda_timu" >
                                        <span class="span1"  >题目:</span>&nbsp;&nbsp;<br/><textarea cols="60" rows="6"></textarea><br/>
                                        <input type="file" name=""><br/>
                                    </div><br/>
                                    <div class="answer_jianda">
                                        <span  class="span1">答案:&nbsp;</span><br/><input type="text" name="" size="34px"><input type="file" name=""><br/>
                                    </div>
                                    <div><br/>
                                        <span   class="span1">题目权限设置：</span>
                                        <select>
                                            <option selected="">公开</option>
                                            <option>私密</option>
                                        </select>
                                    </div>
                                    <br/>
                                </div>
                                <!--yingyong-->
                                <div class="yingyong" id="yingyong_timu">
                                    <h5 align="left">应用:</h5>
                                    <div class="yingyong_timu" >
                                        <span  class="span1">题目:</span>&nbsp;&nbsp;<br/><textarea cols="60" rows="6"></textarea><br/>
                                        <input type="file" name=""><br/>
                                    </div><br/>
                                    <div class="answer_yingyong">
                                        <span   class="span1">答案:&nbsp;</span><br/><input type="text" name="" size="34px"><input type="file" name=""><br/>
                                    </div>
                                    <div><br/>
                                        <span   class="span1">题目权限设置：</span>
                                        <select>
                                            <option selected="">公开</option>
                                            <option>私密</option>
                                        </select>
                                    </div>
                                    <br/>
                                </div>
                            </div>
                            <div class="foot22">
                                <input type="button" name="" value="上传题目">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
<script src="../assets/js/core/jquery.3.2.1.min.js"></script>

<script src="../assets/js/core/bootstrap.min.js"></script>

</html>