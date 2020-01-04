<%--
  Created by IntelliJ IDEA.
  User: 王春林
  Date: 2019-12-12
  Time: 8:47
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

    <link rel="stylesheet" type="text/css" href="/static/html/borrow/borrow.css"/>
</head>
<body>
<h1 style="margin-left: 50px">借阅图书</h1>
    <form action="/borrows/borrowAdd" method="post">

        <div class="form-group" style="width: 250px;height: 300px;float: left" >

            <label>读者编号:</label>
            <input type="text" name="readId" placeholder="请填写编号">
            <label>图书编号:</label>
            <input type="text" name="bookId" placeholder="请填写编号"><br/>
            <label>借书日期:</label>
            <input type="date" name="lendtime" ><br/>
            <label>应还日期:</label>
            <input type="date" name="returntime"><br/>

        </div>
        <input type="submit" value="提交" style="margin-left:150px;margin-bottom: 100px">
    </form>
</body>
</html>
