<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: 王春林
  Date: 2020-02-07
  Time: 13:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>归还书籍</title>
<script src="/static/js/jquery-3.3.1.min.js"></script>
<script src="/static/bootstrap/js/bootstrap.js"></script>
<link href="/static/bootstrap/css/bootstrap.css" type="text/css" rel="stylesheet"/>
    <link rel="stylesheet" type="text/css" href="/static/css/giveback/giveback.css"/>
    <script src="/static/js/givebackList.js"></script>
</head>
<body>
<h2>归还信息</h2>
<table class="table table-hover">
    <tr>
        <th>编号</th>
        <th>图书编号</th>
        <th>读者编号</th>
        <th>借书时间</th>
        <th>归还时间</th>
        <th>每日租金</th>
        <th>租借天数</th>
        <th>租金</th>
        <th>状态</th>
        <th>报损原因</th>
    </tr>
    <c:forEach items="${giveback.list}" var="giveback">
    <tr>
        <td>${giveback.gbId}</td>
        <td>${giveback.bookId}</td>
        <td>${giveback.readId}</td>
        <td id="time1"><fmt:formatDate value="${giveback.borrow.lendtime}" pattern="yyyy-MM-dd"/></td>
        <td id="time2"><fmt:formatDate value="${giveback.overTime}" pattern="yyyy-MM-dd"/> </td>
        <td>${giveback.eventRent}</td>
        <td id="day" onload="day()">${giveback.rentDay}</td>
        <td>${giveback.rent}</td>
        <td>${giveback.state}</td>
        <td>${giveback.breakage}</td>
    </tr>
    </c:forEach>

</table>
<footer class="navbar-fixed-bottom">
    <div class="container">
        <ul class="pagination">
            <li><a href="/giveback/list?pageNum=1&pageSize=10"> 首页</a></li>
            <li><a href="/giveback/list?pageNum=${giveback.prePage}&pageSize=10"> <span class="glyphicon glyphicon-backward"></span></a></li>
            <c:forEach items="${giveback.navigatepageNums}" var="b">
                <li><a href="/giveback/list?pageNum=${b}"> ${b}</a></li>
            </c:forEach>
            <li><a href="/giveback/list?pageNum=${giveback.nextPage}&pageSize=10"> <span class="glyphicon glyphicon-forward"></span></a></li>
            <li><a href="/giveback/list?pageNum=${giveback.pages}&pageSize=10"> 尾页</a></li>
        </ul>
    </div>
</footer>
</body>
</html>
