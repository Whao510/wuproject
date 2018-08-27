<?php 
    
    $username = isset($_POST['username']) ? $_POST['username'] : null;
    $password = isset($_POST['password']) ? $_POST['password'] : null;

    $servername = "localhost";
    $serverusername = "root";
    $serverpassword = "wuhao";
    $dbname = "1804";

    $conn = new mysqli($servername,$serverusername,$serverpassword,$dbname);

    if($conn->connect_error){
        die("error:" . $conn->connect_error);
    }

    $conn->set_charset('utf8');
   
    $sql = "select * from login where username='$username' and password='$password'";

    $result = $conn->query($sql);
    if($result->num_rows>0){
        echo "yes";
    }else{
        echo "no";
    }
 ?>