<?php 
  
    $username = isset($_POST['username']) ? $_POST['username'] : null;

    $password = isset($_POST['password']) ? $_POST['password'] : null;

    $servername = 'localhost';
    $serverusername = 'root';
    $serverpassword = 'wuhao';
    $serverdb = '1804';

    $conn = new mysqli($servername,$serverusername,$serverpassword,$serverdb);

    if($conn->connect_error){
        die("error:" . $conn->connect_error);
    }

    $conn->set_charset('utf8');

  

    $sql = "insert into login(username,password) values('$username','$password')";

    $result = $conn->query($sql);


    if($result){
        echo "pass";
    }else{
        echo "fail";
    }
   








    //  else{
    //     $result = $conn->query($sql);
    //     if($result){
    //         echo "{'status: true'}";
    //     }else {
    //         echo "{status: false,message: '注册失败'}";
    //     }
    // }

    // $username = !isset($_POST['username']) ? "" : $_POST['username'];
    // $pwd = !isset($_POST['pwd']) ? "" : $_POST['pwd'];
    
    // $sql = "select * from users where username = '$username'";
    // $result = query_sql($sql);
    // if(count($result) > 0){
    //     echo "{status: false, message: '用户名已注册'}";
    // } else{
    //     $sql = "insert into users(username, password) values('$username', '$pwd')";
    //     $result = exec_sql($sql);
    //     if($result){
    //     echo "{'status: true'}";
    // } else{
    //     echo "{status: false, message: '注册失败'}";
    // }

    // }

 ?>