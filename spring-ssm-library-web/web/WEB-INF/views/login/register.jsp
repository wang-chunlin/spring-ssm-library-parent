<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: 王春林
  Date: 2019-12-13
  Time: 11:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="/static/js/jquery-3.3.1.min.js"></script>
    <script src="/static/bootstrap/js/bootstrap.js"></script>
    <link href="/static/bootstrap/css/bootstrap.css" type="text/css" rel="stylesheet"/>
    <script src="//libs.baidu.com/jquery/1.10.2/jquery.min.js"></script>
    <link rel="stylesheet" type="text/css" href="/static/css/login/register.css">
    <script src="/static/js/register.js"></script>
</head>
<body>

<form action="/register" method="post" >
        <h1>管理员注册</h1>
        <div class="col-md-4" id="div1">
            <div class="form-group">
                <label for="staName">姓名:</label>
                <input type="text" name="staName" class="form-control" id="staName" placeholder="请输入姓名">
            </div>
            <div class="form-group">
                <label for="staSex">性别:</label>
                &nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="staSex" id="staSex" checked="checked" value="男">男
                <input type="radio" name="staSex" id="staSex1" value="女">女
            </div>
            <div class="form-group">
                <label for="nation">民族:</label>
                <input type="text" name="nation" class="form-control" id="nation" placeholder="请输入民族">
            </div>
            <div class="form-group">
                <label for="birthday">出生日期:</label>
                <input type="date" name="birthday" class="form-control" id="birthday" placeholder="">
            </div>
            <div class="form-group">
                <label for="idcard">身份证号:</label>
                <input type="text" name="idcard" class="form-control" id="idcard" placeholder="请输入身份证">
            </div>
            <div class="form-group"></div>
                <label for="address">地址:</label>
                <input type="text" class="form-control" id="address" name="address" placeholder="请输入常用地址">
            </div>
        </div>
        <div class="col-md-4" id="div2">
            <div class="form-group">
                <label for="phone">手机号码:</label>
                <input type="tel" name="phone" class="form-control" id="phone" placeholder="请输入手机号">
            </div>
            <div class="form-group">
                <label for="graduate">毕业院校:</label>
                <input type="text" name="graduate" class="form-control" id="graduate" placeholder="请输入院校">
            </div>
            <div class="form-group">
                <label for="hiredate">入职时间:</label>
                <input type="date" class="form-control" id="hiredate" name="hiredate" placeholder="">
            </div>
            <div class="form-group">
                <label for="password">密码:</label>
                <input type="password" class="form-control" id="password" name="password" placeholder="请输入密码">
            </div>
            <div class="form-group">
                <label for="repassword">重置密码</label>
                <input type="password" class="form-control" id="repassword" name="repassword" placeholder="请再次输入密码">
            </div>

            <br/>
            <button id="btn" type="submit" class="btn btn-default" onclick="setOK()">提交注册</button>
            <button id="btn1" type="button" class="btn btn-default">取消</button>
            <button id="btn2" type="reset" class="btn btn-default">重置</button>
        </div>


</form>


</body>
</html>
