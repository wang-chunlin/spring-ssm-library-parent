<%--
  Created by IntelliJ IDEA.
  User: 王春林
  Date: 2019-12-04
  Time: 20:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="/static/html/books/booksUpdate.css"/>
    <script src="/static/js/jquery-3.3.1.min.js"></script>
    <script src="/static/bootstrap/js/bootstrap.js"></script>
    <link href="/static/bootstrap/css/bootstrap.css" type="text/css" rel="stylesheet"/>
    <script src="//libs.baidu.com/jquery/1.10.2/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/jquery/1.10.2/jquery.min.js">
    </script>
</head>
<body>
<form  method="post" action="/book/update">
    <label>编号:</label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="bookId" value="${emp.bookId}"/><br>
    <label>图书名称:</label>
    <input type="text" name="bookName" value="${emp.bookName}"/><br>
    <label>作者:</label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="author" value="${emp.author}"/><br>
    <label>译者:</label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="translator" value="${emp.translator}"><br>
    <label>出版社:</label>
    &nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="press" value="${emp.press}"><br>
    <label>出版时间:</label>
    <input type="date" name="presstime" value="${emp.presstime}"><br>
    <label>图书类型:</label>
    <input type="text" name="sortId" value="${emp.sortId}"/><br>
    <label>藏书总量:</label>
    <input type="text" name="total" value="${emp.total}"><br>
    <label>馆内剩余:</label>
    <input type="text" name="surplus" value="${emp.surplus}"><br>
    <label>存放位置:</label>
    <input type="text" name="position" value="${emp.position}"><br>
    <label>登记日期:</label>
    <input type="date" name="registertime" value="${emp.registertime}"><br/>
    <label>简介:</label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="synopsis" value="${emp.synopsis}"><br>
    <input type="submit" id="submit1" value="编辑" />
</form>
</body>
</html>
