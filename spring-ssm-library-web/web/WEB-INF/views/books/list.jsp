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
    <script src="/static/js/list.js"></script>
<%--    <style type="text/css">--%>
<%--        #login{--%>
<%--            display:none;--%>
<%--            border:1em solid #3366FF;--%>
<%--            height:30%;--%>
<%--            width:50%;--%>
<%--            position:absolute;/*让节点脱离文档流,我的理解就是,从页面上浮出来,不再按照文档其它内容布局*/--%>
<%--            top:24%;/*节点脱离了文档流,如果设置位置需要用top和left,right,bottom定位*/--%>
<%--            left:24%;--%>
<%--            z-index:2;/*个人理解为层级关系,由于这个节点要在顶部显示,所以这个值比其余节点的都大*/--%>
<%--            background: white;--%>
<%--        }--%>
<%--        #over{--%>
<%--            width: 100%;--%>
<%--            height: 100%;--%>
<%--            opacity:0.8;/*设置背景色透明度,1为完全不透明,IE需要使用filter:alpha(opacity=80);*/--%>
<%--            filter:alpha(opacity=80);--%>
<%--            display: none;--%>
<%--            position:absolute;--%>
<%--            top:0;--%>
<%--            left:0;--%>
<%--            z-index:1;--%>
<%--            background: silver;--%>
<%--        }--%>
<%--    </style>--%>
</head>
<body>

<div class="col-lg-6" style="width: 250px;margin-top:10px;margin-bottom: 5px;float: left">
    <form action="${path}/book/getBookName" method="post">
        <div class="input-group" >
            <input type="text" name="bookName" class="form-control" placeholder="根据书名查询">
            <span class="input-group-btn">
                <button class="btn btn-default" onclick="butOK" type="submit">Go!</button>
            </span>
        </div>
    </form>
</div>
<%--弹出层--%>
<%--<div id="login">--%>
<%--    <a href="javascript:hide()">关闭</a>--%>
<%--    <div>书名不能为空</div>--%>
<%--</div>--%>
<%--<div id="over"></div>--%>

<div style="float:left;margin-left: 50px">
    <form action="${path}/book/getBookType" method="post" >
        <div class="form-group">
            <select  name="sortId" style="margin-top: 15px">
                <option>--请选择图书类型--</option>
                <option value="1">武侠</option>
                <option value="2">爱情</option>
            </select>
            <input type="submit" value="查询" style="height: 20px;line-height: 10px;">
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
<%--        <th>图书类型</th>--%>
        <th>藏书总量</th>
        <th>馆内剩余</th>
        <th>存放位置</th>
        <th>登记日期</th>
<%--        <th>图片</th>--%>
        <th colspan="2">操作</th>

    </tr>
    <c:forEach items="${list.list}" var="emp">
        <tr>
            <td>${emp.bookId}</td>
            <td>${emp.bookName}</td>
            <td>${emp.author}</td>
            <td>${emp.translator}</td>
            <td>${emp.press}</td>
            <td><fmt:formatDate value="${emp.presstime}" pattern="yyyy/MM/dd"/> </td>
<%--            <td>${emp.sortId}</td>--%>
            <td>${emp.total}</td>
            <td>${emp.surplus}</td>
            <td>${emp.position}</td>
            <td><fmt:formatDate value="${emp.registertime}" pattern="yyyy/MM/dd"/> </td>
<%--            <td><img id="book_img" src="/static/img/${emp.bookPhoto}"></td>--%>
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
