<%--
  User: cj
  Date: 2019/11/21
  Time: 09:05
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Employee list</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="/static/html/books/booksList.css" >
    <script src="/static/js/jquery-3.3.1.min.js"></script>
    <script src="/static/bootstrap/js/bootstrap.js"></script>
    <link href="/static/bootstrap/css/bootstrap.css" type="text/css" rel="stylesheet"/>

    <link rel="stylesheet" href="/static/layui/css/layui.css">
</head>
<body>

<div class="col-lg-6" style="width: 250px;margin-top:10px;margin-bottom: 5px;float: left">
    <form action="${path}/book/getBookName" method="post">
        <div class="input-group" >
            <input type="text" name="bookName" class="form-control" placeholder="根据书名查询">
            <span class="input-group-btn">
                <button class="btn btn-default" type="submit">Go!</button>
            </span>
        </div>
    </form>
    <form action="${path}/book/getBookType" method="post">
        <div class="form-group">
            <select  name="sortId">
                <option>--请选择--</option>
                <%--                <c:forEach var="type" items="${type.list}">--%>
                <%--                    <option  id="chaxun" value="${type.sortId}">${type.sortName}</option>--%>
                <%--                </c:forEach>--%>
                <option value="1">武侠</option>
                <option value="2">爱情</option>
            </select>
            <button class="btn btn-default" type="submit">Go!</button>
        </div>
    </form>





</div>

<table class="table table-hover">
    <tr id="firstTr">
        <th>编号</th>
        <th>图书名称</th>
        <th>作者</th>
        <th>译者</th>
        <th>出版社</th>
        <th>出版时间</th>
        <th>图书类型</th>
        <th>藏书总量</th>
        <th>馆内剩余</th>
        <th>存放位置</th>
        <th>登记日期</th>
        <th>简介</th>


    </tr>
    <c:forEach items="${list.list}" var="emp">
        <tr>
            <td>${emp.bookId}</td>
            <td>${emp.bookName}</td>
            <td>${emp.author}</td>
            <td>${emp.translator}</td>
            <td>${emp.press}</td>
            <td><fmt:formatDate value="${emp.presstime}" pattern="yyyy/MM/dd"/> </td>
            <td>${emp.sortId}</td>
            <td>${emp.total}</td>
            <td>${emp.surplus}</td>
            <td>${emp.position}</td>
            <td><fmt:formatDate value="${emp.registertime}" pattern="yyyy/MM/dd"/> </td>
            <td>${emp.synopsis}</td>
            <td>
                <a href="/book/delete/?bookId=${emp.bookId}" class="btn btn-warning btn-xs" role="button">下架</a>
            </td>
            <td>
                <a href="/book/edit/?bookId=${emp.bookId}" class="btn btn-info btn-xs" role="button">编辑</a>
            </td>

        </tr>
    </c:forEach>

</table>
<footer class="navbar-fixed-bottom" style="margin-left: 450px">
    <div class="container">
        <ul class="pagination">
            <li><a href="/book/list?pageNum=1&pageSize=10"> 首页</a></li>
            <li><a href="/book/list?pageNum=${list.prePage}&pageSize=10"> <span class="glyphicon glyphicon-backward"></span></a></li>
            <c:forEach items="${list.navigatepageNums}" var="p">
                <li><a href="/list?pageNum=${p}"> ${p}</a></li>
            </c:forEach>
            <li><a href="/book/list?pageNum=${list.nextPage}&pageSize=10"> <span class="glyphicon glyphicon-forward"></span></a></li>
            <li><a href="/book/list?pageNum=${list.pages}&pageSize=10"> 尾页</a></li>
        </ul>
    </div>
  </footer>





</body>
</html>