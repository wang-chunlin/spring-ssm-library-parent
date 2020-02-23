window.onclick=function (){

}
    function setOK(){
        var staName = document.getElementById("staName").value;
        var nation = document.getElementById("nation").value;
        var birthday = document.getElementById("birthday").value;
        var idcard = document.getElementById("idcard").value;
        var address = document.getElementById("address").value;
        var phone = document.getElementById("phone").value;
        var graduate = document.getElementById("graduate").value;
        var hiredate = document.getElementById("hiredate").value;
        var password = document.getElementById("password").value;
        var repassword = document.getElementById("repassword").value;
        if (staName==""){
           alert("名字不能为空！");
           return;
         }else if (nation==""){
           alert("民族不能为空！");
           return;
        }else if(birthday==""){
            alert("出生日期不能为空！");
            return;
        }else if(idcard==""){
            alert("身份证号不能为空！");
            return;
        }else if(idcard.length!=18){
            alert("身份证要18位数");
            return;
        }else if (address==""){
            alert("地址不能为空！");
            return;
        }else if(phone==""){
            alert("电话号码不能为空！");
            return;
        }else if(phone.length!=11){
            alert("电话号码要11位数！");
            return;
        }else if(graduate==""){
            alert("毕业院校不能为空！");
            return;
        }else if(hiredate==""){
            alert("入职时间不能为空！");
            return;
        }else if(password==""){
            alert("密码不能为空！");
            return;
        }else if(repassword==""){
            alert("重置密码不能为空！");
            return;
        }else if(repassword!=password){
            alert("两次密码不一至");
            return;
        }else {
            alert("注册成功");
        }
    }