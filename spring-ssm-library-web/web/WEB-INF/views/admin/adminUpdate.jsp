<%--
  Created by IntelliJ IDEA.
  User: 王春林
  Date: 2019-12-18
  Time: 9:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="/static/js/jquery-3.3.1.min.js"></script>
    <script src="/static/bootstrap/js/bootstrap.js"></script>
    <link href="/static/bootstrap/css/bootstrap.css" type="text/css" rel="stylesheet"/>
    <link href="/static/html/admin/adminUpdate.css" type="text/css" rel="stylesheet"/>
</head>
<body>
    <form action="/admin/updatePassword" method="post" style="margin-left: 400px;margin-top:100px">
        <label>用户名：</label>
        <input type="text" name="staName" value="${admin.staName}" readonly><br><br>
        <label>原来密码：</label>
         <input type="text" name="password" value="${admin.password}" readonly/><br><br>
        <label>密码：</label>
        &nbsp;&nbsp;&nbsp;&nbsp;<input type="password" name="password" placeholder="填写修改密码"><br/><br>
        <label>重置密码</label>
        <input type="password" name="repassword" placeholder="请再次输入密码">
        <input type="submit" value="修改" onclick="submit()" style="margin-left: 170px;margin-top: 100px"/>
        <input type="button" value="取消" style="margin-top: 100px;margin-left: 30px"/>

    </form>
</body>
</html>
