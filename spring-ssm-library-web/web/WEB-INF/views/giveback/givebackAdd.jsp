<%--
  Created by IntelliJ IDEA.
  User: 王春林
  Date: 2020-02-07
  Time: 15:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加归还信息</title>
    <script src="/static/bootstrap/js/bootstrap.js"></script>
    <link href="/static/bootstrap/css/bootstrap.css" type="text/css" rel="stylesheet"/>
    <script src="//libs.baidu.com/jquery/1.10.2/jquery.min.js"></script>

    <link rel="stylesheet" type="text/css" href="/static/html/giveback/givebackAdd.css"/>
</head>
<body>
<h1 style="margin-left: 50px">归还图书</h1>
<form action="/giveback/givebackAdd" method="post">

    <div class="form-group" style="width: 250px;height: 300px;float: left" >

        <label>读者编号:</label>
        <input type="text" name="readId" placeholder="请填写编号">
        <label>图书编号:</label>
        <input type="text" name="bookId" placeholder="请填写编号"><br/>
        <label>状态：</label>
        <input type="text" name="state" ><br/>
        <label>报损原因:</label>
        <input type="text" name="breakage"><br/>

    </div>
    <input type="submit" value="提交" style="margin-left:200px;margin-bottom: 100px">
</form>

</body>
</html>