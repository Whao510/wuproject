<?php 
    
    $severname = "localhost";
    $username = "root";
    $password = "wuhao";
    $dbname = "1804";
    
    $conn = new mysqli($severname,$username,$password,$dbname);
    
    if($conn->connect_error){
        die("error:" . $conn->connect_error);
    }
    $conn->set_charset('utf8');
    $sql = "select * from goods";

   
    $result = $conn->query($sql);

    $row = $result->fetch_all(MYSQLI_ASSOC);

    echo json_encode($row,JSON_UNESCAPED_UNICODE);

 ?>