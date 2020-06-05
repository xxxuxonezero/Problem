<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<title>数据结构填空题</title>
	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
	<link rel="stylesheet" href="../css/question_choice.css">
	<script src="../js/jquery-3.3.1.js"></script>
	<script src="../js/choice.js"></script>
	<script src="../js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="../assets/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i">
	<link rel="stylesheet" href="../assets/css/ready.css">
	<link rel="stylesheet" href="../assets/css/demo.css">
	<link rel="stylesheet" href="../css/icon/iconfont.css">
	<script>
        $(function () {
            window.onload=getQuestionZG(3,2);
        })
	</script>

</head>
<body>
	<jsp:include page="../model/header.jsp"/>
			 <div class="main-panel" style=" background-color: #CCCCCC">
				 <div class="content" style=" width: 100%;height: 100%" id="zhuguan_content">

				 </div>
				 <div class="page-normal" id="page">

				 </div>
				</div>
				<footer class="footer"  >
					<div class="container-fluid" style=" width: 500px;height: 100%;">
					 
								<div class="copyright ml-auto" >
							 <a href="../menu.jsp" style="color: black;font-weight: bold;">首页</a>\
							 <a href="../jizu/jizu_choice.jsp" style="color: black;font-weight: bold;">计算机组成原理</a>\
							 	<a href="../os/os_choice.jsp" style="color: black;font-weight: bold;">操作系统</a>\
							 	<a href="shujujiegou_choice.jsp" style="color: black;font-weight: bold;">数据结构</a>\
							 	<a href="../jisuanjiwangluo/jisuanjiwangluo_choice.jsp" style="color: black;font-weight: bold;" >计算机网络</a>\
							 	<a href="../contact.jsp" style="color: black;font-weight: bold;">联系我们</a>
							 </div>		
					</div>
				</footer>
			</div>
		</div>
	</div>
	<jsp:include page="../model/addModal.jsp"/>
	 
</body>
<script src="../assets/js/core/jquery.3.2.1.min.js"></script>
 
 <script src="../assets/js/core/bootstrap.min.js"></script> 
 
</html>