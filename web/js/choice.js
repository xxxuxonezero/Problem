function getQuestion(course_id,currentPage) {
    $.ajax({
        url:'/ChoiceServlet',
        type:"post",
        data:{"course_id":course_id,"currentPage":currentPage},
        dataType:"json",
        success:function (data) {
            console.log(data)
            currentPage=data.currentPage;
            var page=$("#page");
            var b1='<a href="javascript:getQuestion('+course_id+',1)">首页</a>';
            var b2='<a href="javascript:getQuestion('+course_id+','+(currentPage-1)+')">&lt;</a>';
            var s=b1+b2;
            var begin,end;
            if(data.totalPage<10){
                begin=1;
                end=data.totalPage;
            }else{
                begin=currentPage-5;
                end=currentPage+4;
                if(begin<1){
                    begin=1;
                    end=10;
                }
                if(end>data.totalPage){
                    end=data.totalPage;
                    begin=end-9;
                }
            }
            for(var i=begin;i<=end;i++){
                if(i==currentPage){
                    s+='<a class="page-current" href="javascript:getQuestion('+course_id+','+i+')">'+i+'</a>';
                }
                else
                    s+='<a href="javascript:getQuestion('+course_id+','+i+')">'+i+'</a>';
            }
            var l1='<a href="javascript:getQuestion('+course_id+','+(currentPage+1)+')">&gt;</a>';
            var l2='<a href="javascript:getQuestion('+course_id+','+data.totalPage+')">尾页</a>';
            s+=l1+l2+'<span class="record">共有'+data.totalPage+'页,'+data.totalCount+'记录</span>';
            page.html(s);
            var d=data.list;
            var content=$("#choice_content");
            var c="";
            var col;
            for(var i=0;i<d.length;i++){
                if(d[i].collection==true)
                    col="iconfont icon-shoucang1";
                else{
                    col="iconfont icon-shoucang";
                }
                console.log(col)
                c+= " <div class=\"choice-question\" q_id="+d[i]['q_id']+" type_id="+d[i].type_id+">" +
                    "<div class=\"collect\">\n" +
                    "                    <a href=\"#\">\n" +
                    "                        <span class='"+col+"'></span>\n" +
                    "                    </a>\n" +
                    "                </div>"+
                    "<p>"+d[i]['question']+
                    "</p><ul><li>"+d[i]['optionA']+"</li><li>"+d[i]['optionB']+"</li><li>"+
                    d[i]['optionC']+"</li><li>"+d[i]['optionD']+"</li></ul><hr><div class=\"answer-show\"><button class=\"answer\" >显示答案</button>"+
                    "<div class=\"answer-show-text\"><span>答案为："+d[i].answer+"</span></div></div></div>";
                content.html(c);

            }
        }
    })
    window.scrollTo(0,0);
}

//加载页面执行
function getQuestionZG(course_id,type_id,currentPage) {
    $.ajax({
        url:'/ZhuGuanServlet',
        type: "post",
        data:{"course_id":course_id,"type_id":type_id,"currentPage":currentPage},
        dataType:"json",
        success:function (data) {
            console.log(data);
            currentPage=data.currentPage;
            //显示分页，仿百度分页
            var page=$("#page");
            var b1='<a href="javascript:getQuestionZG('+course_id+','+type_id+',1)">首页</a>';
            var b2='<a href="javascript:getQuestionZG('+course_id+','+type_id+','+(currentPage-1)+')">&lt;</a>';
            var s=b1+b2;
            var begin,end;
            if(data.totalPage<10){
                begin=1;
                end=data.totalPage;
            }else{
                begin=currentPage-5;
                end=currentPage+4;
                if(begin<1){
                    begin=1;
                    end=10;
                }
                if(end>data.totalPage){
                    end=data.totalPage;
                    begin=end-9;
                }
            }
            for(var i=begin;i<=end;i++){
                if(i==currentPage){
                    s+='<a class="page-current" href="javascript:getQuestionZG('+course_id+','+type_id+','+i+')">'+i+'</a>';
                }
                else
                    s+='<a href="javascript:getQuestionZG('+course_id+','+type_id+','+i+')">'+i+'</a>';
            }
            var l1='<a href="javascript:getQuestionZG('+course_id+','+type_id+','+(currentPage+1)+')">&gt;</a>';
            var l2='<a href="javascript:getQuestionZG('+course_id+','+type_id+','+data.totalPage+')">尾页</a>';
            s+=l1+l2+'<span class="record">共有'+data.totalPage+'页,'+data.totalCount+'记录</span>';
            page.html(s);
            var d=data.list;
            var content=$("#zhuguan_content");
            var c="";
            var col;
            //拼接显示题目的盒子
            for(var i=0;i<d.length;i++){
                if(d[i].collection==true)
                    col="iconfont icon-shoucang1";
                else{
                    col="iconfont icon-shoucang";
                }
                c+='<div class="zhuguan-question" q_id='+d[i].q_id+' type_id='+d[i].type_id+'>' +
                    ' <div class="collect">\n' +
                    '                    <a href="javascript:void(0)">\n' +
                    '                        <span class="'+col+'"></span>\n' +
                    '                    </a>\n' +
                    '                </div>'+
                    '<p>'+d[i].question+'</p><hr><div class="answer-show"><button class="answer">显示答案</button>' +
                    '<div class="answer-show-text"><span>'+d[i].answer+'</span></div></div></div>'
                content.html(c);

            }
        }

    })
    window.scrollTo(0,0);

}

//动态绑定实现点击事件
$(function () {
    $("body").on('click','.answer',function(){
            var s=$(this).next();
            s.toggle();
        if($(this).html()=="显示答案"){
            $(this).html("隐藏答案");
        }
        else{
            $(this).html("显示答案");
        }
    })
})


//添加题目
$(function () {
    $("#addQ").click(function () {
        var type=$("input[name='type']:checked").attr("type_id");
        if(type=="1"){
            addChoice();
        }
        else{
            addZG();
        }
    })
    //添加选择题
    function addChoice() {
        var q=$("#Question").val().trim();
        var oa=$("#OptionA").val().trim();
        var ob=$("#OptionB").val().trim();
        var oc=$("#OptionC").val().trim();
        var od=$("#OptionD").val().trim();
        var ans=$("#Answer-a").val().trim();
        var course=$("input[name='subject']:checked").attr("course_id");
        var type=$("input[name='type']:checked").attr("type_id");
        var visit=$("option:selected").html();
        if(visit=="公开"){
            visit=1;
        }
        else {
            visit = 0;
        }
        $.ajax({
            url: "/addChoice",
            type: "post",
            data: {
                "question": q,
                "optionA": oa,
                "optionB": ob,
                "optionC": oc,
                "optionD": od,
                "answer": ans,
                "course_id": course,
                "visit": visit
            },
            success: function (data) {
                if(data=="success"){
                    alert("添加成功");
                    clear_all();
                }
                else{
                    alert("添加失败")
                }
            }

        } )
        }
    //添加主观题
    function addZG() {
        var q=$("#zhuguan_timu textarea").val().trim();
        var ans=$("#zhuguan_timu input[type='text']").val().trim();
        var course=$("input[name='subject']:checked").attr("course_id");
        var type=$("input[name='type']:checked").attr("type_id");
        var visit=$("#zhuguan_timu option:selected").html();
        if(visit=="公开"){
            visit=1;
        }
        else {
            visit = 0;
        }
        $.ajax({
            url:"/addZG",
            type:"post",
            data:{
                "question": q,
                "answer": ans,
                "course_id": course,
                "type_id":type,
                "visit": visit
            },
            success: function (data) {
                if(data=="success"){
                    alert("添加成功");
                    clear_all_zg();
                }
                else{
                    alert("添加失败")
                }
            }
        })

    }
})



//通过选择的题目类型变换页面内容
$(function () {
    $("input[name='type']").change(function () {
        var type=$("input[name='type']:checked").attr("type_id");
        if(type=="1"){
            $("#xuanze_timu").css("display","inline-block");
            $("#zhuguan_timu").css("display","none");
        }
        else{
            if(type=="2"){
                $("#zhuguan_timu h5:first").html("填空");
            }else if(type=="3"){
                $("#zhuguan_timu h5:first").html("简答");
            }else {
                $("#zhuguan_timu h5:first").html("应用");
            }
            $("#zhuguan_timu").css("display","inline-block");
            $("#xuanze_timu").css("display","none");
        }
            })
})

//清空模态框
$(function () {
    $('body').on('hidden.bs.modal', '#RegistrationModal', function () {
       clear_all();
    });
})
function clear_all() {
    $("#Question").val("");
    $("#OptionA").val("");
    $("#OptionB").val("");
    $("#OptionC").val("");
    $("#OptionD").val("");
    $("#Answer-a").val("");
    ($("input[name='subject']"))[0].checked=true;
    ($("input[name='type']"))[0].checked=true;
    ($("option"))[0].selected=true;

}
function clear_all_zg() {
    $("#zhuguan_timu textarea").val("");
    $("#zhuguan_timu input[type='text']").val("");
    ($("input[name='subject']"))[0].checked=true;
    ($("input[name='type']"))[0].checked=true;
    ($("option"))[0].selected=true;
}

var g;
//生成试卷
function load_g() {
    var res;
    $.ajax({
        url:"/genPaper",
        type:"post",
        dataType:"json",
        async:false,
        success:function(data) {
            console.log(data)
            load(data);
            load_content(data);
        }
    })
}
function load_content(data) {
    var s='<h3>一、单项选择（共50题，每题2分）</h3>'
    for(var i=0;i<data.length;i++){
        s+=' <div class="choice-question">  <p>'+(i+1)+'.'+data[i].question+'</p>\n' +
            '    <ul>\n' +
            '        <li><label><input  type="radio" class="unsubmit" name="'+data[i].q_id+'" value="A"></label><span class = "span-style">'+data[i].optionA+'</span></li>\n' +
            '        <li><label><input type="radio" class="unsubmit" name="'+data[i].q_id+'" value="B"></label><span class = "span-style">'+data[i].optionB+'</span></li>\n' +
            '        <li><label><input type="radio" class="unsubmit" name="'+data[i].q_id+'" value="C"></label><span class = "span-style">'+data[i].optionC+'</span></li>\n' +
            '        <li><label><input type="radio" class="unsubmit" name="'+data[i].q_id+'" value="D"></label><span class = "span-style">'+data[i].optionD+'</span></li>\n' +
            '    </ul></div>';
    }
    $(".paper-content").html(s);
    s='<a href="#" id="submit"><img src="../images/exercise_submit.gif" alt="交卷" style="margin-top: 20px"> </a>';
    $(".exercise-submit").html(s);
}
//全局
function load(res) {
    g=res;
}


// 判卷
$(function () {
    $("body").on('click','#submit',function () {
        var s=$(".choice-question");
        var user_answer=new Array();
        for(var i=0;i<s.length;i++){
            var a=$(s[i]).find("label input[type='radio']:checked").val();
            user_answer[i]=a;
        }
        var wrong=new Array();
        var count=0;
        for(var i=0;i<user_answer.length;i++){
            var ans=g[i].answer;
            var o=new Object();
            if(user_answer[i]==ans){
                $(s[i]).find("label input[type='radio']:checked").parent().append('<span class="green">L</span>');
            }
            else{
                $(s[i]).find("label input[type='radio']:checked").parent().append('<span class="red">X</span>');
                $(s[i]).find("label input[type='radio'][value="+ans+"]").parent().append('<span class="green">L</span>');
                o.q_id=g[i].q_id;
                o.wa=$(s[i]).find("label input[type='radio']:checked").val();
                wrong[count]=o;
                count++;
            }
        }
        var grade=100-count*2
        var s='<span style="color: red;font-size: 20px">您的成绩为:'+grade+'<br>';
        if(grade<60){
            s+='请继续努力！';
        }
        $(".grade").html(s)
        addWrong(wrong);
    })
})

//传一个json数组到后端
function addWrong(wrong) {
    console.log();
    console.log(typeof JSON.stringify(wrong))
    console.log(wrong)
    $.ajax({
        url:'/addWrong',
        type:"post",
        data:JSON.stringify(wrong),
        success:function (data) {
            
        }
    })

}

//收藏按钮
$(function () {
    $("body").on('click','.collect a',function () {
        var s=$(this).find(".iconfont");
        var c=$(this).parents(".choice-question");
        if(typeof(c.html())=="undefined"){
            c=$(this).parents(".zhuguan-question");
        }
        if(s.prop('class')=='iconfont icon-shoucang'){
            s.prop("class","iconfont icon-shoucang1");
            s.css("color","yellow");
            collect(c.attr("q_id"),c.attr("type_id"),"add");
        }
        else{
            s.prop("class","iconfont icon-shoucang");
            s.css("color","gray");
            collect(c.attr("q_id"),c.attr("type_id"),"cancel");
        }

    })
})
function collect(q_id,type_id,op) {
    $.ajax({
        url:'/collect',
        type:"post",
        async:false,
        data:{q_id:q_id,type_id:type_id,op:op},
        success:function (data) {
        }
    })

}