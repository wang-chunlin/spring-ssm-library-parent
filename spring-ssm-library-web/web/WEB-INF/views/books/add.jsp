<%--
  User: cj
  Date: 2019/11/21
  Time: 09:05
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Employee list</title>
    <link rel="stylesheet" type="text/css" href="/static/html/books/booksAdd.css"/>
    <script src="/static/js/jquery-3.3.1.min.js"></script>
</head>
<body>

    <form id="from" method="post" action="/book/insert">
        <h1>添加图书</h1>
        <div id="book_div1">
            <label>图书名称:</label>
            <input type="text" name="bookName"/>
            <span style="color: red;font-size:8px">${bookName}</span><br>
            <label>出版社:</label>
            &nbsp;&nbsp;<input type="text" name="press"/>
            <span style="color: red;font-size:8px">${press}</span><br>
            <label>藏书总量:</label>
            <input type="text" name="total"/>
            <span style="color: red;font-size:8px">${total}</span><br>
            <label>登记日期:</label>
            <input type="date" name="registertime">
            <span style="color: red;font-size:8px">${registertime}</span><br><br>
            <label>简介:</label><br/>
            <textarea name="synopsis" class="form-control" rows="6" cols="40"></textarea>
        </div>
       <div id="book_div2">
           <label>作者:</label>
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="author"/>
           <span style="color: red;font-size:8px">${author}</span><br>
           <label>出版时间:</label>
           <input type="date" name="presstime">
           <span style="color: red;font-size:8px">${presstime}</span><br>
           <label>馆内剩余:</label>
           <input type="text" name="surplus">
           <span style="color: red;font-size:8px">${surplus}</span><br>

       </div>
       <div id="book_div3">
           <label>译者:</label>
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="translator">
           <span style="color: red;font-size:8px">${translator}</span><br>
           <label>图书类型:</label>
           <input type="text" name="sortId"/>
           <span style="color: red;font-size:8px">${sortId}</span><br>
           <label>存放位置:</label>
           <input type="text" name="position">
           <span style="color: red;font-size:8px">${position}</span><br>
       </div>

        <button id="btn" type="submit" class="btn btn-default">添加</button>
        <button id="btn1" type="button" class="btn btn-default">取消</button>
        <button id="btn2" type="reset" class="btn btn-default">重置</button>
    </form>
<script>
    // $(".btn").onclick(function () {
    //     var targetUrl =
    //         $("#from").attr("action");
    //     var data = $("#from").serialize();
    //     $.ajax({
    //         type:'post',
    //         url:targetUrl,
    //         cache:false,
    //         data:data,
    //         dataType:'json',
    //         success:function (data) {
    //             alert("添加成功");
    //         },
    //         error:function () {
    //             alert("添加失败")
    //         }
    //     })
    // })
</script>
</body>
</html>
