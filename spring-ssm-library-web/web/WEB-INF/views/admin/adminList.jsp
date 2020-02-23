<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: 王春林
  Date: 2019-12-17
  Time: 19:36
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
    <link href="/static/css/admin/adminList.css" type="text/css" rel="stylesheet"/>
</head>
<body>
    <table class="table table-hover">
        <tr>
            <th>姓名</th>
            <th>性别</th>
            <th>民族</th>
            <th>出生日期</th>
            <th>身份证号</th>
            <th>地址</th>
            <th>手机号码</th>
            <th>毕业院校</th>
            <th>入职时间</th>
            <th>密码</th>
        </tr>
        <c:forEach items="${admin.listIterator()}" var="admin">
           <tr>
               <td>${admin.staId}</td>
               <td>${admin.staName}</td>
               <td>${admin.staSex}</td>
               <td>${admin.nation}</td>
               <td><fmt:formatDate value="${admin.birthday}" pattern="yyyy/MM/dd"/> </td>
               <td>${admin.idcard}</td>
               <td>${admin.address}</td>
               <td>${admin.phone}</td>
               <td>${admin.graduate}</td>
               <td><fmt:formatDate value="${admin.hiredate}" pattern="yyyy/MM/dd"/> </td>
               <td>${admin.password}</td>
                <td>
                   <a href="/admin/deleteAdmin/?staId=${admin.staId}" class="btn btn-warning btn-xs" role="button">删除</a>
               </td>
               <td>
                   <a href="/admin/edit/?staId=${admin.staId}" class="btn btn-info btn-xs" role="button">编辑</a>
               </td>
           </tr>
        </c:forEach>
    </table>


</body>
</html>
