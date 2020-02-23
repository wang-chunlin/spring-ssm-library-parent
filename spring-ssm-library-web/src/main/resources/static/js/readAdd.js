window.onclick=function (){

}
    function setOK() {
        var readName = document.getElementsByName("readName").value;
        var readAge = document.getElementsByName("readAge").value;
        var readRegistertime = document.getElementsByName("readRegistertime").value;
        var readIdCard = document.getElementsByName("readIdCard").value;
        var readPhone = document.getElementsByName("readPhone").value;
        var myfile = document.getElementsByName("myfile").value;
        if(readName==""){
            alert("姓名不能为空！");
            return;
        }else if(readAge==""){
            alert("年龄不能为空！");
            return;
        }else if(readRegistertime==""){
            alert("登记日期不能为空！");
            return;
        }else if(readIdCard==""){
            alert("身份证号不能为空！");
            return;
        }else if(readIdCard.length!=18){
            alert("身份证数要18位数！");
            return;
        }else if(readPhone.length!=11){
            alert("手机号要11位数！");
            return;
        }else if(myfile==""){
            alert("图片不能为空！");
            return;
        }else {
            alert("添加成功");
        }
    }