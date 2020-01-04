<%--
  Created by IntelliJ IDEA.
  User: 王春林
  Date: 2019-12-15
  Time: 21:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="/static/html/reader/readerUpdate.css">
    <script src="/static/js/jquery-3.3.1.min.js"></script>
    <script src="/static/bootstrap/js/bootstrap.js"></script>
    <link href="/static/bootstrap/css/bootstrap.css" type="text/css" rel="stylesheet"/>
    <script src="//libs.baidu.com/jquery/1.10.2/jquery.min.js"></script>
</head>
<body>
    <div id="div4">
        <h1>修改读者信息</h1>
    </div>
    <form action="/readers/update" method="post" role="form">
        <div id="div1">
            <label>读者ID:</label>
            <input type="text" class="form-control" name="readId" value="${read.readId}" readonly="readonly"/>
            <label>读者姓名:</label>
            <input type="text" class="form-control" name="readName" value="${read.readName}"/>
            <label>读者性别:</label>
            <input type="radio" name="readSex" value="男"/>男
            <input type="radio" name="readSex" value="女"/>女<br/>
            <label>年龄:</label>
            <input type="number" class="form-control" name="readAge" value="${read.readAge}"/><br>
            <label>登记日期:</label>
            <input type="date" class="form-control" name="readRegistertime" value="${read.readRegistertime}"/><br>
            <label>备注:</label>
            <textarea rows="5" class="form-control" cols="45" name="remarks" value="${read.remarks}"></textarea><br/>
        </div>
        <div id="div2">
            <label>身份证:</label>
            <input type="text" class="form-control" name="readIdCard" value="${read.readIdCard}"/><br>
            <label>电话号码:</label>
            <input type="text" class="form-control" name="readPhone" value="${read.readPhone}"/><br>
            <label>押金金额:</label>
            <input type="text" class="form-control" name="deposit" value="${read.deposit}"/><br>
            <label>图片:</label>
            <input type="file" class="form-control" name="photo" value="${read.photo}">
        </div>
        <div id="div3">
            <%--        <button id="btn" type="submit" class="btn btn-default">修改</button>--%>
            <%--        <button id="btn1" type="button" class="btn btn-default">取消</button>--%>
            <%--        <button id="btn2" type="reset" class="btn btn-default">重置</button>--%>
            <input type="submit" value="编辑">
        </div>

    </form>

</body>
</html>
