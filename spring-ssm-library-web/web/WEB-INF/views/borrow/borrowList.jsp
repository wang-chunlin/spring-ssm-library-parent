<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: 王春林
  Date: 2019-12-19
  Time: 11:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Title</title>
    <script src="/static/js/jquery-3.3.1.min.js"></script>
    <script src="/static/bootstrap/js/bootstrap.js"></script>
    <link href="/static/bootstrap/css/bootstrap.css" type="text/css" rel="stylesheet"/>
</head>
<body>
    <table class="table table-hover">
        <tr>
            <th>编号</th>
            <th>图书编号</th>
            <th>读者编号</th>
            <th>借书时间</th>
            <th>应还时间</th>
        </tr>
        <c:forEach items="${borrow.list}" var="borrow">
            <tr>
                <td>${borrow.boId}</td>
                <td>${borrow.bookId}</td>
                <td>${borrow.readId}</td>
                <td><fmt:formatDate value="${borrow.lendtime}" pattern="yyyy-MM-dd"/></td>
                <td><fmt:formatDate value="${borrow.returntime}" pattern="yyyy-MM-dd"/> </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
