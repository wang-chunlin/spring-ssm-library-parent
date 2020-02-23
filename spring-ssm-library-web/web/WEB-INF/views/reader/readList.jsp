<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="frm" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: 王春林
  Date: 2019-12-15
  Time: 21:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <script src="/static/js/jquery-3.3.1.min.js"></script>
    <script src="/static/bootstrap/js/bootstrap.js"></script>
    <link href="/static/bootstrap/css/bootstrap.css" type="text/css" rel="stylesheet"/>
    <link rel="stylesheet" type="text/css" href="/static/css/reader/readerList.css">
</head>
<body>
<div class="col-lg-6" id="div-xingming">
    <form action="${path}/readers/getReaderName" method="post">
        <div class="input-group" >
            <input type="text" name="bookName" class="form-control" placeholder="根据姓名查询">
            <span class="input-group-btn">
                <button class="btn btn-default" onclick="butOK" type="submit">Go!</button>
            </span>
        </div>
    </form>
</div>
    <table class="table table-hover">
        <tr>
            <th>读者编号</th>
            <th>读者姓名</th>
            <th>读者性别</th>
            <th>年龄</th>
            <th>身份证</th>
            <th>电话号码</th>
            <th>登记日期</th>
            <th>押金金额</th>
            <th>备注</th>
            <th>图片</th>
            <th colspan="2" id="caozuo">操作</th>
        </tr>
      <c:forEach items="${read.list}" var="read">
          <tr>
              <td>${read.readId}</td>
              <td>${read.readName}</td>
              <td>${read.readSex}</td>
              <td>${read.readAge}</td>
              <td>${read.readIdCard}</td>
              <td>${read.readPhone}</td>
              <td><frm:formatDate value="${read.readRegistertime}" pattern="yyyy/MM/dd"/> </td>
              <td>${read.deposit}</td>
              <td>${read.remarks}</td>
              <td><img id="img1" src="/static/img/${read.photo}"> </td>
              <td>
                  <a href="/readers/delete/?readId=${read.readId}" class="btn btn-warning btn-xs">删除</a>
              </td>
              <td>
                  <a href="/readers/edit/?readId=${read.readId}" class="btn btn-info btn-xs">编辑</a>
              </td>
          </tr>
      </c:forEach>
    </table>
    <footer class="navbar-fixed-bottom">
          <div class="container">
              <ul class="pagination">
                  <li><a href="/readers/list?pageNum=3&pageSize=6"> 首页</a></li>
                  <li><a href="/readers/list?pageNum=${read.prePage}&pageSize=6">  <span class="glyphicon glyphicon-backward" style="height: 20px"></span></a></li>
                  <c:forEach items="${read.navigatepageNums}" var="r">
                      <li><a href="/readers/list?pageNum=${r}"> ${r}</a></li>
                  </c:forEach>
                  <li><a href="/readers/list?pageNum=${read.nextPage}&pageSize=6"> <span class="glyphicon glyphicon-forward" style="height: 20px"></span></a></li>
                  <li><a href="/readers/list?pageNum=${read.pages}&pageSize=6"> 尾页</a></li>
              </ul>
          </div>
    </footer>
<script>


</script>
</body>
</html>
