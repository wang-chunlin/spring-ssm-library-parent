<%--
  Created by IntelliJ IDEA.
  User: 王春林
  Date: 2019-12-11
  Time: 11:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="/static/html/reader/readerAdd.css"/>
    <script src="/static/js/jquery-3.3.1.min.js"></script>
    <script src="/static/bootstrap/js/bootstrap.js"></script>
    <link href="/static/bootstrap/css/bootstrap.css" type="text/css" rel="stylesheet"/>
    <script src="//libs.baidu.com/jquery/1.10.2/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/jquery/1.10.2/jquery.min.js">
    </script>
</head>
<body>
    <form  action="/readers/dengji" method="post" enctype="multipart/form-data">
        <div id="div1">
            <label>读者姓名：</label><span id="uname"></span>
            <input type="text" id="text1" class="form-control" name="readName" placeholder="请输入姓名">
            <label>读者性别：</label>
            <input type="radio" name="readSex">女
            <input type="radio" name="readSex">男<br/>
            <label>年龄：</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="number" class="form-control" name="readAge">
            <label>登记日期：</label>
            <input type="date" class="form-control" name="readRegistertime" placeholder="请输入登记日期" >
            <label>押金金额：</label>
            <input type="text" class="form-control" name="deposit">
            <label>备注：</label>
            <textarea  class="form-control"  rows="3"x33 cols="25" name="remarks"></textarea>
            <br/>
        </div>
        <div id="div2">
        <label>身份证：</label>&nbsp;&nbsp;&nbsp;
        <input type="text" class="form-control" name="readIdCard" placeholder="请输入身份证">
        <label>电话号码：</label>
        <input type="tel" class="form-control" name="readPhone" placeholder="请输入电话号码">
        <label>图片：</label>
        <input type="file" class="form-control" name="myfile">
            <input type="submit" value="提交" onclick="subimt1()" style="margin-left:100px;margin-top: 150px">
    </div>



    </form>

    <script>
        // function subimt1() {
        //     var name=document.querySelector("#text1");
        //     if(!name.value){
        //         alert("姓名不为空");
        //         return;
        //     }
        // }
    </script>
</body>
</html>
