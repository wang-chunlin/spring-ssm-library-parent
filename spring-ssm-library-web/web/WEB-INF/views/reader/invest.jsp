<%--
  Created by IntelliJ IDEA.
  User: 王春林
  Date: 2019-12-24
  Time: 19:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="/static/css/reader/invest.css"/>
</head>
<body>
    <h1>充值</h1>
   <form action="/readers/investMoney" method="post">
       <label>读者编号：</label>
       <input type="text" name="readId" placeholder="填写编号">
       <label>充值面额：</label>
       <input type="text" name="deposit" >
       <input type="submit" id="submit1" value="提交">
   </form>

</body>
</html>
