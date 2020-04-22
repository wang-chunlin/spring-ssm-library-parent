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
    <title>Book List</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="/static/css/books/booksList.css" >
    <script src="/static/js/jquery-3.3.1.min.js"></script>
    <script src="/static/bootstrap/js/bootstrap.js"></script>
    <link href="/static/bootstrap/css/bootstrap.css" type="text/css" rel="stylesheet"/>
    <script src="/static/js/booksList.js"></script>
</head>
<body>
    <%--    图书名称查询--%>
    <div class="col-lg-6" id="genjushuming">
        <form action="${path}/book/getBookName" method="post">
            <div class="input-group" >
                <input type="text" name="bookName" class="form-control" placeholder="根据书名查询">
                <span class="input-group-btn">
                    <button class="btn btn-default" onclick="butOK" type="submit">Go!</button>
                </span>
            </div>
        </form>
    </div>

    <%--    图书类型查询--%>
    <div id="tushuleixin">
        <form action="${path}/book/getBookType" method="post" >
            <div class="form-group">
                <select  name="sortId" id="leixin-select">
                    <option>--请选择图书类型--</option>
                    <option value="1">武侠</option>
                    <option value="2">爱情</option>
                </select>
                <input type="submit" value="查询" id="leixin-submit">
            </div>
        </form>
    </div>
    <%--    标题--%>
    <h2>图书信息</h2>

    <table class="table table-hover">
        <tr id="firstTr">
            <th>编号</th>
            <th class="th1">图书名称</th>
            <th class="th1">作者</th>
            <th>译者</th>
            <th class="th1">出版社</th>
            <th class="th1">出版时间</th>
    <%--        <th>图书类型</th>--%>
            <th>藏书总量</th>
            <th>馆内剩余</th>
            <th class="th1">存放位置</th>
            <th class="th1">登记日期</th>
            <th colspan="2" style="text-align:center;">操作</th>

        </tr>
        <c:forEach items="${book.list}" var="book">
            <tr>
                <td>${book.bookId}</td>
                <td>${book.bookName}</td>
                <td>${book.author}</td>
                <td>${book.translator}</td>
                <td>${book.press}</td>
                <td><fmt:formatDate value="${book.presstime}" pattern="yyyy/MM/dd"/> </td>
    <%--            <td>${emp.sortId}</td>--%>
                <td>${book.total}</td>
                <td>${book.surplus}</td>
                <td>${book.position}</td>
                <td><fmt:formatDate value="${book.registertime}" pattern="yyyy/MM/dd"/> </td>
                <td>
                    <a href="/book/delete/?bookId=${book.bookId}" class="btn btn-warning btn-xs" role="button">下架</a>
                </td>
                <td>
                    <a href="/book/edit/?bookId=${book.bookId}" class="btn btn-info btn-xs" role="button">编辑</a>
                </td>

            </tr>
        </c:forEach>
    </table>

    <footer class="navbar-fixed-bottom">
        <div class="container">
            <ul class="pagination">
                <li><a href="/book/list?pageNum=1&pageSize=10"> 首页</a></li>
                <li><a href="/book/list?pageNum=${book.prePage}&pageSize=10"> <span class="glyphicon glyphicon-backward"></span></a></li>
                <c:forEach items="${book.navigatepageNums}" var="p">
                    <li><a href="/list?pageNum=${p}"> ${p}</a></li>
                </c:forEach>
                <li><a href="/book/list?pageNum=${book.nextPage}&pageSize=10"> <span class="glyphicon glyphicon-forward"></span></a></li>
                <li><a href="/book/list?pageNum=${book.pages}&pageSize=10"> 尾页</a></li>
            </ul>
        </div>
    </footer>


</body>
</html>
