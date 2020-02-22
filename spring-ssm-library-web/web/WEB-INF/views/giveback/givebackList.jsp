<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <link rel="stylesheet" type="text/css" href="/static/html/giveback/giveback.css"/>
</head>
<body>
<table class="table table-hover">
    <tr>
        <th>编号</th>
        <th>图书编号</th>
        <th>读者编号</th>
        <th>借书时间</th>
        <th>应还时间</th>
        <th>逾期时间</th>
        <th>逾期每日租金</th>
        <th>逾期天数</th>
        <th>租金</th>
        <th>状态</th>
        <th>报损原因</th>
    </tr>
    <c:forEach items="${giveback.list}" var="giveback">
    <tr>
        <td>${giveback.gbId}</td>
        <td>${giveback.bookId}</td>
        <td>${giveback.readId}</td>
        <td><fmt:formatDate value="${giveback.lendtime}" pattern="yyyy-MM-dd"/></td>
        <td><fmt:formatDate value="${giveback.returntime}" pattern="yyyy-MM-dd"/> </td>
        <td><fmt:formatDate value="${giveback.overTime}" pattern="yyyy-MM-dd"/> </td>
        <td>${giveback.eventRent}</td>
        <td>${giveback.rentDay}</td>
        <td>${giveback.rent}</td>
        <td>${giveback.state}</td>
        <td>${giveback.breakage}</td>
    </tr>
    </c:forEach>

</table>
</body>
</html>
