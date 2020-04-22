<%--
  Created by IntelliJ IDEA.
  User: 王春林
  Date: 2020-03-20
  Time: 22:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改个人信息</title>
    <script src="/static/js/jquery-3.3.1.min.js"></script>
    <script src="/static/bootstrap/js/bootstrap.js"></script>
    <link href="/static/bootstrap/css/bootstrap.css" type="text/css" rel="stylesheet"/>
    <link href="/static/css/admin/updateAdmin.css" type="text/css" rel="stylesheet"/>
</head>
<body>
<form action="/admin/updateAdmins" method="post" >
    <label>姓名：</label>
    <input type="text" name="staName" value="${admin.staName}" readonly><br/>
    <label>性别：</label>
    <input type="radio" name="staSex" value="男">男
    <input type="radio" name="staSex" value="女">女<br/>
    <label>民族：</label>
    <input type="text" name="nation" value="${admin.nation}"><br/>
    <label>生日：</label>
    <input type="date" name="birthday" value="${admin.birthday}"><br/>
    <label>身份证号：</label>
    <input type="text" name="idcard" value="${admin.idcard}"><br/>
    <label>手机号：</label>
    <input type="text" name="phone" value="${admin.phone}"><br/>
    <label>地址:</label>
    <input type="text" name="address" value="${admin.address}"><br/>
    <label>毕业院校:</label>
    <input type="text" name="graduate" value="${admin.graduate}"><br/>
    <input type="submit" class="btn btn-info btn-xs" value="编辑">
    <a href="/admin/adminlist" class="btn btn-info btn-xs" role="button">取消</a>
</form>
</body>
</html>
