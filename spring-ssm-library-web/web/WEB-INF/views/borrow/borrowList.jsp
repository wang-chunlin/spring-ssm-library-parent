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
    <link rel="stylesheet" type="text/css" href="/static/css/borrow/borrow.css"/>
</head>
<body>
    <h2>借阅信息</h2>
    <table class="table table-hover">
        <tr>
            <th>编号</th>
            <th>图书编号</th>
            <th>读者编号</th>
            <th>图书名</th>
            <th>读者姓名</th>
            <th>借书时间</th>
            <th>存放位置</th>
        </tr>
        <c:forEach items="${borrow.list}" var="borrow">
            <tr>
                <td>${borrow.boId}</td>
                <td>${borrow.bookId}</td>
                <td>${borrow.readId}</td>
                <td>${borrow.books.bookName}</td>
                <td>${borrow.readers.readName}</td>
                <td><fmt:formatDate value="${borrow.lendtime}" pattern="yyyy-MM-dd"/></td>
                <td>${borrow.books.position}</td>
            </tr>
        </c:forEach>
    </table>
    <footer class="navbar-fixed-bottom">
        <div class="container">
            <ul class="pagination">
                <li><a href="/borrows/list?pageNum=1&pageSize=10"> 首页</a></li>
                <li><a href="/borrows/list?pageNum=${borrow.prePage}&pageSize=10"> <span class="glyphicon glyphicon-backward"></span></a></li>
                <c:forEach items="${borrow.navigatepageNums}" var="b">
                    <li><a href="/borrows/list?pageNum=${b}"> ${b}</a></li>
                </c:forEach>
                <li><a href="/borrows/list?pageNum=${borrow.nextPage}&pageSize=10"> <span class="glyphicon glyphicon-forward"></span></a></li>
                <li><a href="/borrows/list?pageNum=${borrow.pages}&pageSize=10"> 尾页</a></li>
            </ul>
        </div>
    </footer>
</body>
</html>
