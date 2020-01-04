<%--
  Created by IntelliJ IDEA.
  User: 王春林
  Date: 2019-12-18
  Time: 9:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="/static/js/jquery-3.3.1.min.js"></script>
    <script src="/static/bootstrap/js/bootstrap.js"></script>
    <link href="/static/bootstrap/css/bootstrap.css" type="text/css" rel="stylesheet"/>
    <link href="/static/html/admin/adminUpdate.css" type="text/css" rel="stylesheet"/>
</head>
<body>
    <form action="/admin/updatePassword" method="post" style="margin-left: 400px;margin-top:100px">
<%--        <label>编号</label>--%>
<%--        <input type="number" name="staId" value="${admin.staId}" readonly="readonly"><br><br>--%>
<%--        <label>姓名</label>--%>
<%--        <input type="text" name="staName" value="${admin.staName}"><br><br>--%>
<%--        <label>性别</label>--%>
<%--        <input type="radio" name="staSex" value="男">男--%>
<%--        <input type="radio" name="staSex" value="女">女<br><br>--%>
<%--        <label>民族</label>--%>
<%--        <input type="text" name="nation" value="${admin.nation}"><br><br>--%>
<%--        <label>出生日期</label>--%>
<%--        <input type="date" name="birthday" value="${admin.birthday}"><br><br>--%>
<%--        <label>身份证号</label>--%>
<%--        <input type="text" name="idcard" value="${admin.idcard}"><br><br>--%>
<%--        <label>地址</label>--%>
<%--        <input type="text" name="address" value="${admin.address}"><br><br>--%>
<%--        <label>手机号码</label>--%>
<%--        <input type="text" name="phone" value="${admin.phone}"><br><br>--%>
<%--        <label>毕业院校</label>--%>
<%--        <input type="text" name="graduate" value="${admin.graduate}"><br><br>--%>
<%--        <label>入职时间</label>--%>
<%--        <input type="date" name="hiredate" value="${admin.hiredate}"><br><br>--%>
        <label>用户名：</label>
        <input type="text" name="staName" value="${admin.staName}" readonly><br><br>
        <label>原来密码：</label>
         <input type="text" name="password" value="${admin.password}" readonly/><br><br>
        <label>密码：</label>
        &nbsp;&nbsp;&nbsp;&nbsp;<input type="password" name="password" placeholder="填写修改密码"><br/><br>
        <label>重置密码</label>
        <input type="password" name="repassword" placeholder="请再次输入密码">
        <input type="submit" value="修改" onclick="submit()" style="margin-left: 170px;margin-top: 100px"/>
        <input type="button" value="取消" style="margin-top: 100px;margin-left: 30px"/>

    </form>
    <script>
        function submit() {
            var password = document.getElementsByName(password);
            var repassword = document.getElementsByName(repassword);
            if(password.value==""){
                alert("密码不能为空！")
                return false;
            }else if(repassword.value==""){
                alert("重置密码不能为空！")
                return false;
            }
        }
        submit();
    </script>
</body>
</html>
