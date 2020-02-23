<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 王春林
  Date: 2019-12-20
  Time: 15:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="/static/js/jquery-3.3.1.min.js"></script>
    <script src="/static/bootstrap/js/bootstrap.js"></script>
    <link href="/static/bootstrap/css/bootstrap.css" type="text/css" rel="stylesheet"/>
    <link href="/static/css/admin/adminList.css" type="text/css" rel="stylesheet"/>
</head>
<body>
    <form action="#" method="post" >
       <label>姓名：</label>
       <input type="text" value="${admin.staName}" readonly><br/>
       <label>性别：</label>
       <input type="text" value="${admin.staSex}" readonly><br/>
       <label>民族：</label>
       <input type="text" value="${admin.nation}" readonly><br/>
       <label>生日：</label>
       <input type="text" value="${admin.birthday}" readonly><br/>
       <label>身份证号：</label>
       <input type="text" value="${admin.idcard}" readonly><br/>
       <label>地址:</label>
       <input type="text" value="${admin.address}" readonly><br/>
        <label>毕业院校:</label>
        <input type="text" value="${admin.graduate}" readonly><br/>
        <label>入职时间:</label>
        <input type="text" value="${admin.hiredate}" readonly><br/>

    </form>


</body>
</html>
