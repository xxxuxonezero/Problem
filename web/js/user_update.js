//设置模态框样式并且显示对应的题目列表
$(function () {
    $(".right-menu").on('click','span[type_id],a[type_id]',function () {
        var type_id=parseInt($(this).attr("type_id"));
        var res;
        $.ajax({
            url:'/userShow',
            type:"post",
            async:false,
            dataType:"json",
            data:{"type_id":type_id},
            success:function (data) {
                res=data.list;
                var c='<a href="Manage.jsp" class="return-list" style="position: relative">\n' +
                    '<svg style="float: left" t="1577081216951" class="icon" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="2697" width="200" height="200"><path d="M301.568 536.32c-7.168 0-14.336-2.816-19.968-8.192-11.008-11.008-11.008-28.928 0-39.936L702.464 67.584c11.008-11.008 28.928-11.008 39.936 0 11.008 11.008 11.008 28.928 0 39.936L321.536 528.128c-5.376 5.376-12.8 8.192-19.968 8.192z" p-id="2698"></path><path d="M722.432 964.864c-7.168 0-14.336-2.816-19.968-8.192L281.6 535.808c-11.008-11.008-11.008-28.928 0-39.936 11.008-11.008 28.928-11.008 39.936 0L742.4 916.736c11.008 11.008 11.008 28.928 0 39.936-5.632 5.376-12.8 8.192-19.968 8.192z" p-id="2699"></path></svg>\n' +
                    '<h3 style="float:left;margin-top: 2px">返回题目管理列表</h3>\n' +
                    '</a></br>';
                var d=data.list;
                $(".modal-body").attr("type_id",type_id);
                if(type_id=="1"){
                    for(var i=0;i<d.length;i++){
                        c+=' <div class="choice-question" type_id="'+type_id+'"q_id="'+d[i]["q_id"]+'">'+
                            '<div class="update">\n' +
                            '    <a href="#" class="edit"  data-toggle="modal" data-target="#editQuestion">编辑</a>\n' +
                            '    <a href="#" class="delete">删除</a>\n' +
                            '</div>'+
                            '<p>'+d[i]["question"]+
                            '</p><ul><li>'+d[i]["optionA"]+'</li><li>'+d[i]["optionB"]+'</li><li>'+
                            d[i]["optionC"]+'</li><li>'+d[i]["optionD"]+'</li></ul><hr><div class="answer-show"><button class="answer" >显示答案</button>'+
                            '<div class="answer-show-text"><span>答案为：'+d[i].answer+'</span></div></div></div>';
                    }
                    $(".modal-body").html('<span>问&nbsp;&nbsp;题：</span><textarea cols="50" rows="3" class="question"></textarea><br>\n' +
                        '                <span>选项A：</span><textarea  cols="50" rows="2" class="optionA"></textarea><br>\n' +
                        '                <span>选项B：</span><textarea  cols="50" rows="2" class="optionB"></textarea><br>\n' +
                        '                <span>选项C：</span><textarea cols="50" rows="2" class="optionC"></textarea><br>\n' +
                        '                <span>选项D：</span><textarea  cols="50" rows="2" class="optionD"></textarea><br>'+
                        '<span>答&nbsp;&nbsp;案：</span><textarea cols="10" rows="1" class="answer_edit"></textarea><br>'+
                    '<span class="span1"  >题目权限设置：</span>\n' +
                        '\t\t\t\t\t\t\t\t\t\t\t<select>\n' +
                        '\t\t\t\t\t\t\t\t\t\t\t\t<option>公开</option>\n' +
                        '\t\t\t\t\t\t\t\t\t\t\t\t<option>私密</option>\n' +
                        '\t\t\t\t\t\t\t\t\t\t\t</select>');
                }
                else{
                    for(var i=0;i<d.length;i++){
                        c+='<div class="zhuguan-question" type_id="'+type_id+'"q_id="'+d[i].q_id+'">' +
                            '<div class="update">\n' +
                            '    <a href="#" class="edit"  data-toggle="modal" data-target="#editQuestion">编辑</a>\n' +
                            '    <a href="#" class="delete">删除</a>\n' +
                            '</div>'+
                            '<p>'+d[i].question+'</p><hr><div class="answer-show"><button class="answer">显示答案</button>' +
                            '<div class="answer-show-text"><span>'+d[i].answer+'</span></div></div></div>'
                    }
                    $(".modal-body").html('<span>问题：</span><textarea cols="70" rows="4" class="question"></textarea><br>\n' +
                        '  <span>答案：</span><textarea  cols="70" rows="4" class="answer_edit"></textarea><br>\n' +
                    '<span class="span1"  >题目权限设置：</span>\n' +
                        '\t\t\t\t\t\t\t\t\t\t\t<select>\n' +
                        '\t\t\t\t\t\t\t\t\t\t\t\t<option>公开</option>\n' +
                        '\t\t\t\t\t\t\t\t\t\t\t\t<option>私密</option>\n' +
                        '\t\t\t\t\t\t\t\t\t\t\t</select>')
                }

                $(".right-menu").html(c);
            }
        })
        console.log(res);
        getRes(res);
    })
})

var tt; //全局变量

//将Ajax中得到的服务器数据变为全局的
function getRes(res) {
    tt=res;
}

//获取添加的题型个数
function getNum(){
    load_info(2);
    $.ajax({
        url:"/getNum",
        type:"post",
        dataType: "json",
        success:function (data) {
            // console.log(data)
            var s="";
            for(var i=0;i<data.length;i++){
                s+='<li>\n' +
                    '<span class="type" type_id="'+data[i].type_id+'"><em>'+data[i].type_name+'</em></span>\n' +
                    '<span class="number">添加记录为'+data[i].count+'条</span>\n' +
                    '<a href="#" type_id="1">\n' +
                    '<svg t="1577070446020" class="icon" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="2570" width="200" height="200"><path d="M341.957209 959.354678c-12.893658 0-25.842575-4.425799-36.386722-13.467733-23.493064-20.10592-26.224268-55.426357-6.064113-78.891791L603.929736 511.789199l-304.423361-355.206978c-20.160155-23.465434-17.427928-58.786894 6.064113-78.891791 23.437805-20.024056 58.786894-17.373693 78.837556 6.064113l335.675132 391.620305c17.974373 20.952194 17.974373 51.875484 0 72.827679l-335.675132 391.620305C373.371686 952.717514 357.691565 959.354678 341.957209 959.354678z" p-id="2571" fill="#8a8a8a"></path></svg>\n' +
                    '</a>\n' +
                    '</li>'
            }
            $('.right-menu ul').html(s);
        }
    })

}

//a链接选中高亮
function load_info(i) {
        var c=$(".left-menu ul li a:eq("+i+")");
        c.addClass("highlight")
        c.css("color","white");
    }

//编辑修改模态框
$(function () {
    $(".right-menu").on('click',".edit",function () {
        var p=$(this).parents("div[type_id]");
        var type_id=p.attr("type_id");
        var q_id=parseInt(p.attr("q_id"));
        $(".modal-body").attr("q_id",p.attr("q_id"));
        // console.log(tt)
        if(type_id=="1"){
            $("#editQuestion .question").html(p.find("p").html());
            $("#editQuestion .optionA").html(p.find("li:eq(0)").html());
            $("#editQuestion .optionB").html(p.find("li:eq(1)").html());
            $("#editQuestion .optionC").html(p.find("li:eq(2)").html());
            $("#editQuestion .optionD").html(p.find("li:eq(3)").html());
            var a=p.find("span").html();
            $("#editQuestion .answer_edit").html(a[a.length-1]);
        }
        else{
            $("#editQuestion .question").html(p.find("p").html());
            var a=p.find("span").html();
            $("#editQuestion .answer_edit").val(a);
        }
        var visit=$("#editQuestion option");
        var v;
        for(var i=0;i<tt.length;i++){
            if(tt[i].q_id==q_id){
                v=tt[i].visit;
                if(v==true){
                    visit[0].selected=true;
                }
                else{
                    visit[1].selected=true;
                }
                break;
            }
        }
    })
})

//修改题目信息
$(function () {
    $("#update_info").click(function () {
        var body=$(this).parents(".modal-content").find(".modal-body");
        var q_id=parseInt(body.attr("q_id"));
        // console.log(tt)
        var q;
        for(var i=0;i<tt.length;i++){
            if(tt[i].q_id==q_id){
                q=tt[i];
            }
        }
        q.question=body.find(".question").val();q.optionA=body.find(".optionA").val();q.optionB=body.find(".optionB").val();
        q.optionC=body.find(".optionC").val();q.optionD=body.find(".optionD").val();q.answer=body.find(".answer_edit").val()
        q.visit=(body.find("option:selected").html()=="公开"?1:0);
        console.log(q);
        $.ajax({
            url:"/update",
            data:q,
            success:function (data) {
                if(data=="success"){
                    alert("修改成功");
                }
                else{
                    alert("修改失败");
                }
            }
        })
    })
})

//删除题目
$(function () {
    $(".right-menu").on('click','.delete',function () {
        var p=$(this).parents("div[type_id]");
        var type_id=p.attr("type_id");
        var q_id=parseInt(p.attr("q_id"));
        $.ajax({
            url:'/delete',
            type:"post",
            data:{"type_id":type_id,"q_id":q_id},
            success:function (data) {
                if(data=="success"){
                    alert("删除成功")
                }
                else{
                    alert("删除失败")
                }
            }
        })
    })
})

//加载错题页面
function load_wrong(currentPage) {
    load_info(3);
    $.ajax({
        url:'/showWrong',
        type:"post",
        data:{"currentPage":currentPage},
        dataType:"json",
        success:function (data) {
            console.log(data)
            currentPage=data.currentPage;
            var page=$("#page");
            var b1='<a href="javascript:load_wrong(1)">首页</a>';
            var b2='<a href="javascript:load_wrong('+(currentPage-1)+')">&lt;</a>';
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
                    s+='<a class="page-current" href="javascript:load_wrong('+i+')">'+i+'</a>';
                }
                else
                    s+='<a href="javascript:load_wrong('+i+')">'+i+'</a>';
            }
            var l1='<a href="javascript:load_wrong('+(currentPage+1)+')">&gt;</a>';
            var l2='<a href="javascript:load_wrong('+data.totalPage+')">尾页</a>';
            s+=l1+l2+'<span class="record">共有'+data.totalPage+'页,'+data.totalCount+'记录</span>';
            page.html(s);
            var d=data.list;
            var content=$("#choice_content");
            var c="";
            for(var i=0;i<d.length;i++){
                c+=' <div class="choice-question" q_id='+d[i]["q_id"]+'>'+
                    '<div class="wrong-count">\n' +
                    '  <span>总共错了'+d[i].count+'次,上次的错误答案为'+d[i].wa+'</span>                  \n' +
                    '                </div>'+
                    '<div class="update">\n' +
                    '    <a href="#" class="delete-wrong">移除错题</a>\n' +
                    '</div>'+
                    '<p>'+d[i]["question"]+
                    '</p><ul><li>'+d[i]["optionA"]+'</li><li>'+d[i]["optionB"]+'</li><li>'+
                    d[i]["optionC"]+'</li><li>'+d[i]["optionD"]+'</li></ul><hr><div class="answer-show"><button class="answer" >显示答案</button>'+
                    '<div class="answer-show-text"><span>答案为：'+d[i].answer+'</span></div></div></div>';
                content.html(c);

            }
        }
    })
    window.scrollTo(0,0);
}
//若已学会移除错题
$(function () {
    $(".right-menu").on('click','.delete-wrong',function () {
        var p=$(this).parents("div[q_id]");
        var q_id=parseInt(p.attr("q_id"));
        $.ajax({
            url:'/deleteWrong',
            type:"post",
            data:{"q_id":q_id},
            success:function (data) {
                var cp=$("#page .page-current").html()
                load_wrong(cp);
            }
        })
    })
})

//加载收藏页面
function load_collect(currentPage){
    load_info(1);
    $.ajax({
        url:'/showCollect',
        type:"post",
        data:{currentPage:currentPage},
        dataType:"json",
        success:function (data) {
            console.log(data);
            currentPage=data.currentPage;
            var page=$("#page");
            var b1='<a href="javascript:load_collect(1)">首页</a>';
            var b2='<a href="javascript:load_collect('+(currentPage-1)+')">&lt;</a>';
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
                    s+='<a class="page-current" href="javascript:load_collect('+i+')">'+i+'</a>';
                }
                else
                    s+='<a href="javascript:load_collect('+i+')">'+i+'</a>';
            }
            var l1='<a href="javascript:load_collect('+(currentPage+1)+')">&gt;</a>';
            var l2='<a href="javascript:load_collect('+data.totalPage+')">尾页</a>';
            s+=l1+l2+'<span class="record">共有'+data.totalPage+'页,'+data.totalCount+'记录</span>';
            page.html(s);
            var d=data.list;
            var content=$("#choice_content");
            var c="";
            for(var i=0;i<d.length;i++){
                if(d[i].type_id==1){
                    c+=' <div class="choice-question" q_id='+d[i]["q_id"]+' type_id='+d[i].type_id+'>'+
                        '<div class="update">\n' +
                        '    <a href="#" class="delete-collect"><span class="iconfont icon-shoucang1"></span></a>\n' +
                        '</div>'+
                        '<p>'+d[i]["question"]+
                        '</p><ul><li>'+d[i]["optionA"]+'</li><li>'+d[i]["optionB"]+'</li><li>'+
                        d[i]["optionC"]+'</li><li>'+d[i]["optionD"]+'</li></ul><hr><div class="answer-show"><button class="answer" >显示答案</button>'+
                        '<div class="answer-show-text"><span>答案为：'+d[i].answer+'</span></div></div></div>';
                }
                else{
                    c+='<div class="zhuguan-question" q_id='+d[i].q_id+' type_id='+d[i].type_id+'>' +
                        '<div class="update">\n' +
                        '    <a href="#" class="delete-collect"><span class="iconfont icon-shoucang1"></span></a>\n' +
                        '</div>'+
                        '<p>'+d[i].question+'</p><hr><div class="answer-show"><button class="answer">显示答案</button>' +
                        '<div class="answer-show-text"><span>'+d[i].answer+'</span></div></div></div>'
                }
            }
            content.html(c);

        }
    })
}
//取消收藏
$(function () {
    $(".right-menu").on('click','.delete-collect',function () {
        var p=$(this).parents("div[q_id]");
        var q_id=parseInt(p.attr("q_id"));
        var type_id=parseInt(p.attr("type_id"))
        collect(q_id,type_id,"cancel");
        var cp=$("#page .page-current").html();
        load_collect(cp);
    })
})

$(function () {
    $(".right-menu").on('click','#update-info',function () {
        var s=$('.common:eq(2)');
        var sex=s.html().charAt(3);
        $("#editInformation input[name='sex'][value="+sex+"]").prop("checked","true")
})
    $("#update_userinfo").click(function () {
        var s=$("#editInformation ul li");
        var o=new Object();
        o.username=$(s[0]).children("input").val();
        o.realname=$(s[1]).children("input").val();
        o.sex=$(s[2]).children("input[type='radio']:checked").val();
        o.birthdayStr=$(s[3]).children("input").val();
        o.job=$(s[4]).children("input").val();
        o.introduction=$(s[5]).children("textarea").val();
        o.op="update1"
        $.ajax({
            url:'/updateInfo',
            type:"post",
            data:o,
            success:function (data) {
                window.location.href="../user/information.jsp";
            }
        })
    })

    $("#update_userimage").click(function () {
        var url=$("#editImage").find("input[type='text']").val();
        $.ajax({
            url:'/updateInfo',
            type:"post",
            data:{avatar:url,op:"update2"},
            success:function () {
                window.location.href="../user/information.jsp";
            }
        })
    })

})


