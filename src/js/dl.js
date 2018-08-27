;jQuery(function($){

        $('#btn').click(function(){
        var params = {
            username:$('#username').val(),
            password:$('#password').val()
        }
        if(params.username === ""){
            alert("请输入用户名");
            return;
        }else if(params.password === ""){
            alert("请输入密码");
             return;
        }

        console.log(params.username);

        $.ajax({
            type:'post',
            data:params,
            url: '../api/dl.php',
            success: function(res){
                console.log(res);
                if(res === 'yes'){
                    window.location.href = "../html/fhlg.html";
                }else if(res === 'no'){
                    alert('用户名或密码错误');
                }
            }
        });
        })
});
