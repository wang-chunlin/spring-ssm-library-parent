window.onclick=function (ev) {

}
    function setOK() {
        var bookName =document.getElementsByName("bookName").value;
        var author =document.getElementsByName("author").value;
        var translator =document.getElementsByName("translator").value;
        var press =document.getElementsByName("press").value;
        var presstime =document.getElementsByName("presstime").value;
        var sortId =document.getElementsByName("sortId").value;
        var total =document.getElementsByName("total").value;
        var surplus =document.getElementsByName("surplus").value;
        var position =document.getElementsByName("position").value;
        var registertime =document.getElementsByName("registertime").value;
        var synopsis =document.getElementsByName("synopsis").value;

        if (bookName==""){
            alert("书名不能为空！");
            return;
        }else if(author==""){
            alert("作者不能为空！");
            return;
        }else if(translator==""){
            alert("译者不能为空！");
            return;
        }else if(press==""){
            alert("出版社不能为空！");
            return;
        }else if(presstime==""){
            alert("出版时间不能为空！");
            return;
        }else if(sortId==""){
            alert("图书类型不能为空！");
            return;
        }else if(total==""){
            alert("藏书总量不能为空！");
            return;
        }else if(surplus==""){
            alert("馆内剩余不能为空！");
            return;
        }else if (position==""){
            alert("存放位置不能为空！");
            return;
        } else if(registertime==""){
            alert("登记日期不能为空！");
            return;
        }else if(synopsis==""){
            alert("简介不能为空！");
            return;
        }
    }