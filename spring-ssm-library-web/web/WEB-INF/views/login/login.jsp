<%--
  Created by IntelliJ IDEA.
  User: 王春林
  Date: 2020-03-04
  Time: 10:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="/static/css/login/login1.css"/>
    <script src="/static/bootstrap/js/bootstrap.js"></script>
    <link href="/static/bootstrap/css/bootstrap.css" type="text/css" rel="stylesheet"/>
</head>
<body>
    <div id="diyige">
        <div id="img">

        </div>
        <div id="xitong">
            <span id="span1">流星图书</span>
        </div>
    </div>
    <div id="denglukuang">
        <div id="biaotou">
            <span id="span2">账号登录</span>
        </div>
        <div id="shurukuang">
           <form class="bs-example bs-example-form" role="form" action="/login" method="post">
               <div class="input-group">
                   <input type="text"  name="staName" id="staName" class="form-control" placeholder="请输入登录账号">
               </div>
               <br>
               <div class="input-group">
                   <input type="password"  name="password" id="password" class="form-control" placeholder="密码">
               </div>
               <br>
               <div class="input-group">
                   <button type="submit"  id="denglu" class="btn btn-primary btn-sm btn-block">登录</button>
               </div>
               <div id="shuru">
                   <a id="zhuce" href="/register">立即注册</a>
               </div>
           </form>
       </div>
    </div>
</body>
</html>
