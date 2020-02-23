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
    <link rel="stylesheet" type="text/css" href="/static/css/books/booksAdd.css"/>
    <script src="/static/js/jquery-3.3.1.min.js"></script>
</head>
<body>

    <form id="from" method="post" action="/book/insert">
        <h1>添加图书</h1>
        <div id="book_div1">
            <label>图书名称:</label>
            <input type="text" name="bookName"/>
            <span class="tianjia">${bookName}</span><br>
            <label>出版社:</label>
            <input type="text" name="press" id="input-press"/>
            <span class="tianjia">${press}</span><br>
            <label>藏书总量:</label>
            <input type="text" name="total"/>
            <span class="tianjia">${total}</span><br>
            <label>登记日期:</label>
            <input type="date" name="registertime">
            <span class="tianjia">${registertime}</span><br><br>
            <label>简介:</label><br/>
            <textarea name="synopsis" class="form-control" rows="6" cols="40"></textarea>
        </div>
       <div id="book_div2">
           <label>作者:</label>
           <input type="text" name="author" id="input-author"/>
           <span class="tianjia">${author}</span><br>
           <label>出版时间:</label>
           <input type="date" name="presstime">
           <span class="tianjia">${presstime}</span><br>
           <label>馆内剩余:</label>
           <input type="text" name="surplus">
           <span class="tianjia">${surplus}</span><br>

       </div>
       <div id="book_div3">
           <label>译者:</label>
           <input type="text" name="translator" id="input-translator">
           <span class="tianjia">${translator}</span><br>
           <label>图书类型:</label>
           <input type="text" name="sortId"/>
           <span class="tianjia">${sortId}</span><br>
           <label>存放位置:</label>
           <input type="text" name="position">
           <span class="tianjia">${position}</span><br>
       </div>

        <button id="btn" type="submit" class="btn btn-default">添加</button>
        <button id="btn1" type="button" class="btn btn-default">取消</button>
        <button id="btn2" type="reset" class="btn btn-default">重置</button>
    </form>

</body>
</html>
