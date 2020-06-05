//注册页面中的用户名不能为空
function checkname2() {
 	var iptName=document.getElementById('login2');
    var tipName=document.getElementById('text2-ip');
    if(iptName.value==""){
    	tipName.style.display='inline-block';//显示
		iptName.focus();
		return false;
	}
	else{
        tipName.style.display='none';//显示
	}
    return true;
}
 //验证注册邮箱格式
 function checkname(){
 	var iptName=document.getElementById('login');
 	var tipName=document.getElementById('text-ip');
 	 	var p=/^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/; 
			var r=p.test(iptName.value);//校验
			if(!r){
				//校验不通过
				  
				tipName.style.display='inline-block';//显示
				iptName.focus();
				return false;
			}
			else
				{  
				tipName.style.display='none'; return true;}//显示
		}
//验证注册时的密码格式
function checkpwd(){
    var iptName=document.getElementById('pwd');
    var tipName=document.getElementById('pwd-ip');
    var p=/^(\w){6,20}$/;//用户名必须为8-12为字母或数字
    var r=p.test(iptName.value);//校验
    if(!r){
        //校验不通过

        tipName.style.display='inline-block';//显示
        iptName.focus();
        return false;
    }
    else
    { tipName.style.display='none';}//显示
    return true;
}
//验证密码是否与之前输入的一致
function checkrepwd(){
    var pwd1=document.getElementById("pwd");
    var repwd1=document.getElementById("repwd");
    var repwd1text=document.getElementById("repwd_text");
    if(pwd1.value!=repwd1.value||pwd1 ==""||repwd1=="")
    {
        repwd1text.style.display='inline-block';
        repwd1.focus();
        return false;
    }
    else{
        repwd1text.style.display='none';
        return true;
    }
}
//注册时验证码不能为空
function checkyanzhengma(){
    var yanzhengma=document.getElementById("yanzhengma");
    var yanzhengma_text=document.getElementById("code_msg");
    if(yanzhengma.value==""){

        yanzhengma_text.style.display='inline-block';//显示
        yanzhengma_text.innerHTML="验证码不能为空";
        yanzhengma.focus();
        return false;
    }
    else
    {
        yanzhengma_text.style.display='none';return true;
    }
}
//更改注册时的验证码
// function code_change() {
//     var d=new Date().getTime();
//     var img=document.getElementById("code");
//     img.src="/CodeServlet?"+d;
// }
//关闭之后清空注册框
close_register=function() {
	$("#login2").val("");
	$("#login").val("");
	$("#pwd").val("");
	$("#repwd").val("");
	$("#loginphone").val("");
	($("#uncknownRadio"))[0].checked=true;
	$("#yanzhengma").val("");
}
send=function(){
    var status=checkname2()&&checkname()&&checkpwd()&&checkrepwd();
    if(!status) alert("信息格式不对(红色提示！)")
    else
    {
        $.ajax({
            url:'/sendMessage',
            type:'post',
            data:{"email":$("#login").val()},
            success:function (data) {
                if(data=="success"){
                    alert("发送成功")
                }else if(data=="邮箱已被注册"){
                    $("#login").val("");
                    $("#text-ip").css("display","inline-block");
                    $("#text-ip").html("邮箱已被注册")
                }
                else{
                    alert("发送失败")
                }
            }
        })
    }




}
//点击注册按钮之后触发的事件
judge_info=function() {
    var status=checkname2()&&checkname()&&checkpwd()&&checkrepwd()&&checkyanzhengma();
    if(!status) alert("信息格式不对(红色提示！)")
    else
    {
        $.ajax({
            url:"/registerServlet",
            type:"post",
            data:{"username":$("#login2").val(),"email":$("#login").val(),"pwd":$("#pwd").val(),"phone_num":$("#loginphone").val(),"code":$("#yanzhengma").val(),"sex":$("input[name='gender']:checked").val()},
            success:function (data) {
                if(data=="验证码错误"){
                    $("#yanzhengma").val("");
                    $("#code_msg").html("验证码错误")
                }
                else if(data=="邮箱已被注册"){
                    $("#login").val("");
                    $("#text-ip").css("display","inline-block");
                    $("#text-ip").html("邮箱已被注册")
                }
                else if(data=="注册失败"){
                    alert("注册失败");
                    close_register();
                }
                else{
                    alert("恭喜你，注册成功！");
                    $("button[class='close temp-custom-close-button']:first").click();
                }

            }
        })
    }
}



//验证登陆时的邮箱格式是否正确
function checknamelogin(){

 	var iptName=document.getElementById('login1');
 	var tipName=document.getElementById('text-ip1');
 	
 	 	var p=/^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/; 
			var r=p.test(iptName.value);//校验
			 

			if(!r){
				//校验不通过
				  
				tipName.style.display='inline-block';//显示
				iptName.focus();
				return false;

			}
			else
				{  
				tipName.style.display='none'; return true;}//显示
			
		}
//登录时验证码不能为空
function checkyanzhengma_login(){
    var yanzhengma=document.getElementById("yanzhengma_login");
    var yanzhengma_text=document.getElementById("yanzhengma_login_text");
    if(yanzhengma.value==""){

        yanzhengma_text.style.display='inline-block';//显示
        yanzhengma.focus();
        return false;
    }
    else
    {
        yanzhengma_text.style.display='none';return true;
    }
}
//切换验证码
function code_change1() {
    var d=new Date().getTime();
    var img=document.getElementById("code1");
    img.src="/CodeServlet?"+d;
}
//关闭模态框清空
close_login=function(){
    $("#login1").val("");
    $("#pwd1").val("");
    $("#yanzhengma_login").val("");
}
//登录按钮触发的事件
loginin=function () {
    var status=checknamelogin()&&checkyanzhengma_login();
    if(!status){
        alert("请确认输入格式！");
    }
    else{
        $.ajax({
            url:"/loginServlet",
            type:"post",
            data:{"email":$("#login1").val(),"pwd":$("#pwd1").val(),"code":$("#yanzhengma_login").val()},
            success:function (data) {
                if(data=="验证码错误"){
                    $("#yanzhengma_login").val("");
                    $("#yanzhengma_login_text").css("display","inline-block");
                    $("#yanzhengma_login_text").html("验证码错误");
                    code_change1();
                }
                else if(data=="用户名或密码错误"){
                    close_login();
                    $("#text-ip1").css("display","inline-block");
                    $("#text-ip1").html("用户名或密码错误");
                }
                else{
                    $("#LogInModal button:first").click();
                    $("#myNavbar").html(data);
                }


            }
        })
    }
}


$(function () {
        var img_hover=$(".nav-item");
        var img_hide=$(".info_nav");
        img_hover.hover(function () {
            img_hide.stop(true).slideDown();
        },function () {
            img_hide.stop(true).slideUp();
        })
    });






function checkname3(){
 	var iptName=document.getElementById('login3');
 	var tipName=document.getElementById('text-ip3');
 	
 	 	var p=/^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/; 
			var r=p.test(iptName.value);//校验
			 

			if(!r){
				//校验不通过
				  
				tipName.style.display='inline-block';//显示
				iptName.focus();
				return false;

			}
			else
				{  
				tipName.style.display='none'; return true;}//显示
			
		}


function checkpwd2(){
 	var iptName=document.getElementById('pwd23');
 	var tipName=document.getElementById('pwd-ip2');
 	 	var p=/^(\w){6,20}$/;//用户名必须为8-12为字母或数字
			var r=p.test(iptName.value);//校验
			if(!r){
				//校验不通过
				 
				tipName.style.display='inline-block';//显示
				iptName.focus();
				return false;
			}
			else
				{ tipName.style.display='none';}//显示
			return true;
		}


function checkrepwd2(){
 	var pwd1=document.getElementById("pwd23");
 	var repwd1=document.getElementById("repwd2");
 	var repwd1text=document.getElementById("repwd_text2");
 	 if(pwd1.value!=repwd1.value||pwd1.value==""||repwd1.value=="" )
 	 {
 	 	repwd1text.style.display='inline-block';
 	 	repwd1.focus();
 	 	return false;
 	 	
 	 }
 	 else{
 	 	repwd1text.style.display='none';
 	 	return true;
 	 }
 }


function chongzhi(){
	var past_pwd=document.getElementById("pwd3");
	var new_pwd=document.getElementById("pwd23");
	var new_repwd=document.getElementById("repwd2");
	var status=checkrepwd2();
	 

	if(!status)
	{
		alert("新密码与确认密码不一致或者为空!");
	}
    else if(past_pwd.value!=new_pwd.value&&past_pwd.value!="")
    	alert("重置成功");
    else  
    {
    	alert("新密码与旧密码一样！")
    }
    
}


