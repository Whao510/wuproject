(function(){
    document.addEventListener('DOMContentLoaded',()=>{
        let username = document.querySelector('#username');
        let password = document.querySelector('#password');
        let btnReg = document.querySelector('#zcbtn');

        let status = [200,304];

        let isok = false;

        // 注册
        btnReg.onclick = ()=>{
            if(!isok){
                alert('错误操作');
                return false;
            }

            // 获取用户名/密码
            let _username = username.value;
            var _password = password.value;
        //     if(!/^[a-z][\w\-]{5,19}$/.test(_username)){
        //     alert('您输入的用户名不合法');
        //     return false;
        // }





            let xhr = new XMLHttpRequest();
            xhr.onload = ()=>{
                if(status.indexOf(xhr.status) >= 0){
                    console.log(xhr.responseText);
                    if(xhr.responseText === "pass"){
                        window.location.href = "../html/dl.html"
                    }
                }
            }
            xhr.open('post','../api/zc.php',true);

            // 设置请求头，以便后端接收post数据
            xhr.setRequestHeader('Content-Type','application/x-www-form-urlencoded');


            xhr.send(`username=${_username}&password=${_password}`);
        }


        // 验证用户名是否存在
        username.onblur = ()=>{
            let _username = username.value;

            let xhr = new XMLHttpRequest();
            
            xhr.onload = ()=>{
                if(status.indexOf(xhr.status) >= 0){
                    if(xhr.responseText === 'yes'){
                        isok = true;
                    }else if(xhr.responseText === 'no'){
                        isok = false;
                        alert('用户名已存在');
                    }
                }
            }
            xhr.open('get','../api/username_verify.php?username='+_username,true);
            xhr.send();

            }
        });

})();





























