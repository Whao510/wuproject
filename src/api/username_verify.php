<?php 

   $username = isset($_GET['username']) ? $_GET['username'] : null;
    $servername = "localhost";
    $serverusername = "root";
    $serverpassword = "wuhao";
    $dbname = "1804";

    $conn = new mysqli($servername,$serverusername,$serverpassword,$dbname);

    if($conn->connect_error){
        die("error:" . $conn->connect_error);
    }

    $conn->set_charset('utf8');
   
    $sql = "select * from login where username='$username'";

    $result = $conn->query($sql);

    if($result->num_rows > 0){
        echo 'no';
        
    }else{
        echo 'yes';
    }























 ?>