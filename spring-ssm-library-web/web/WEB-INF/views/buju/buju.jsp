<%--
  Created by IntelliJ IDEA.
  User: 王春林
  Date: 2019-12-07
  Time: 14:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="/static/js/jquery-3.3.1.min.js"></script>
    <script src="/static/bootstrap/js/bootstrap.js"></script>
    <link href="/static/bootstrap/css/bootstrap.css" type="text/css" rel="stylesheet"/>
    <script src="//libs.baidu.com/jquery/1.10.2/jquery.min.js"></script>
    <link rel="stylesheet" type="text/css" href="/static/css/buju/buju.css"/>

</head>
<body>
<div id="div2">
    <ul class="nav nav-tabs">
        <li id="li1">图书</li>
        <li><a href="/buju/shouye" target="box">首页</a> </li>
        <li><a href="/book/list" target="box">图书管理</a> </li>
        <li><a href="/login"></a> </li>
        <li id="li2">
            <span id="span-huang">欢迎您!</span>
            <a href="#" id="a-guanglinming"> ${staName}</a><span>
            <a href="/" id="a-tuchu">[退出]</a></span> </li>
    </ul>
</div>

<div id="div1">
    <ul class="nav nav-tabs nav-stacked">

        <li class="dropdown">
            <a class="dropdown-toggle ri" data-toggle="dropdown" href="">
                图书信息<span class="caret"></span>
            </a>
            <ul class="dropdown-menu">
                <li><a href="/book/list" target="box"><span class="glyphicon glyphicon-book" id="span1">&nbsp;图书查询</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
                <li><a href="/book/add" target="box"><span class="glyphicon glyphicon-plus" id="span2">&nbsp;添加图书&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></a></li>
                <li class="divider"></li>
            </ul>
        </li>

        <li class="dropdown">
            <a class="dropdown-toggle ri" data-toggle="dropdown" href="">
                读者信息<span class="caret"></span>
            </a>
            <ul class="dropdown-menu" role="menu">
                <li><a href="/readers/add" target="box">添加信息</a></li>
                <li><a href="/readers/list" target="box">查询读者</a></li>
                <li class="divider"> </li>
                <li><a href="/readers/invest" target="box">充值</a></li>
            </ul>
        </li>

        <li class="dropdown">
            <a class="dropdown-toggle ri" data-toggle="dropdown" href="">
                借阅信息<span class="caret"></span>
            </a>
            <ul class="dropdown-menu" role="menu">
                <li><a href="/borrows/List" target="box">查询借阅信息</a> </li>
                <li><a href="/giveback/List" target="box">查询归还信息</a> </li>
                <li><a href="/borrows/borrows" target="box">借书</a></li>
                <li><a href="/giveback/giveback" target="box">还书</a></li>
            </ul>
        </li>
        <li class="dropdown">
            <a class="dropdown-toggle ri" data-toggle="dropdown" href="#">
                基本信息<span class="caret"></span>
            </a>
            <ul class="dropdown-menu" role="menu">
                <li><a href="/admin/adminlist" target="box">个人信息</a></li>
                <li><a href="/admin/edit" target="box">修改密码</a></li>
            </ul>
        </li>
    </ul>
</div>


<div>
    <iframe src="/buju/shouye" name="box" width="1196px" height="597px"></iframe>
</div>
</body>
</html>
