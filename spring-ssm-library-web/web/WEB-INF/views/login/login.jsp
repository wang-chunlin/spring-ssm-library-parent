<%--
  Created by IntelliJ IDEA.
  User: 王春林
  Date: 2019-12-04
  Time: 9:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="/static/css/login/login.css"/>
    <script src="/static/bootstrap/js/bootstrap.js"></script>
    <link href="/static/bootstrap/css/bootstrap.css" type="text/css" rel="stylesheet"/>
</head>
<div id="div1">
    <div id="div2">
    </div>
    <form action="/login" method="post">
        <span class="glyphicon glyphicon-user"></span>&nbsp;:
        <input type="text" id="text1" name="staName"/><br/>
        <span class="glyphicon glyphicon-lock"></span>&nbsp;:
        <input type="password" id="password1" name="password"/><br/>
        <input type="submit" id="button1" value="登录" onclick="setOK()"/>
        <input type="button" id="button2" value="取消"/>
        <a id="a1" href="/register">注册</a>
    </form>
</div>
</body>
</html>
