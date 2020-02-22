// document.getElementById("butOK").onclick=function() {
//     var b=document.getElementsByName("bookName").value;
//
//     if(b==null){
//         var login = document.getElementById("login");
//         var over = document.getElementById("over");
//         login.style.display = "block";
//         over.style.display = "block";
//     }
// }
// function hide()
// {
//     var login = document.getElementById("login");
//     var over = document.getElementById("over");
//     login.style.display = "none";
//     over.style.display = "none";
// }
//判断探索图书名输入框是否为空
function butOK() {
    var b=document.getElementsByName("bookName").value;
    if(b==null){
        alert("书名输入不能为空");
    }
}