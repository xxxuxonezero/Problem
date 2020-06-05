<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2019/12/25
  Time: 20:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
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
                                    <input type="radio" name="subject" course_id="1" checked>计算机组成原理&nbsp;&nbsp;&nbsp;
                                    <input type="radio" name="subject" course_id="2">操作系统&nbsp;&nbsp;&nbsp;
                                    <input type="radio" name="subject" course_id="3">数据结构&nbsp;&nbsp;&nbsp;
                                    <input type="radio" name="subject" course_id="4">计算机网络&nbsp;&nbsp;&nbsp;
                                    <input type="radio" name="subject">
                                    <span>其他</span>&nbsp;<input type="text" name="" size="20px" id="subject_name">
                                </div><br/>
                                <div class="type">
                                    <span style="color: black;">选择题型:</span>
                                    <input type="radio" name="type" class="type_xuanze"  checked type_id="1">&nbsp;选择题&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <input type="radio" name="type"  type_id="2">填空题&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <input type="radio" name="type" type_id="3">简答题&nbsp;&nbsp;&nbsp;&nbsp;
                                    <input type="radio" name="type"  type_id="4">应用题&nbsp;&nbsp;&nbsp;

                                </div>
                                <div class="timu">
                                    <!--xuanze-->
                                    <div class="xuanze1" id="xuanze_timu" style="display: inline-block;">
                                        <h5 align="left" >选择题:</h5>
                                        <div class="xuanze_timu">
                                            <span  class="span1">题目:</span>&nbsp;&nbsp;<br/><textarea cols="60" rows="6" id="Question" style="display: block;"></textarea>
                                            <input type="file" name="">
                                        </div> <br/>
                                        <div class="xuanze_xuanxiang">
                                            <span style="display: block;text-align: left;font-weight: bold;color: black">选项:</span><br/>
                                            A&nbsp;&nbsp;<input type="text" name="" size="60px" id="OptionA"> &nbsp;&nbsp;<br/>
                                            B&nbsp;&nbsp;<input type="text" name="" size="60px" id="OptionB"> &nbsp;&nbsp;<br/>
                                            C&nbsp;&nbsp;<input type="text" name="" size="60px" id="OptionC"> &nbsp;&nbsp;<br/>
                                            D&nbsp;&nbsp;<input type="text" name="" size="60px" id="OptionD"> &nbsp;&nbsp;<br/>
                                        </div>
                                        <br/>
                                        <div class="answer_xuanze">
                                            <span class="span1" >答案:&nbsp;</span><br/><input type="text" name="" size="60px" id="Answer-a"><br/><input type="file" name="">
                                        </div>
                                        <div><br/>
                                            <span  >题目权限设置：</span>
                                            <select id="isPublic">
                                                <option selected="">公开</option>
                                                <option>私密</option>
                                            </select>
                                        </div>
                                        <br/>
                                    </div>
                                </div>

                                <!--主观题-->
                                <div class="tiankong" id="zhuguan_timu" style="display: none">
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
                                            <option selected>公开</option>
                                            <option>私密</option>
                                        </select>
                                    </div>
                                    <br/>
                                </div>
                                <input type="button" name="" value="上传题目" id="addQ">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
