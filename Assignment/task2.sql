<?php
    $hostname = 'localhost';
    $username = 'root';
    $password = '';
    $database = 'phpmyadmin';

    $mysqli = new mysqli($hostname, $username, $password, $database);

    if($mysqli->connect_errno){
        echo "Connect Failed";
    }
    else{
        echo "Connected";
    }
    
    echo "<br>";

    SELECT
    o.order_id,
    p.name AS product_name,
    oi.quantity,
    (oi.quantity * oi.unit_price) AS total_amount
    FROM Order_Items oi
    JOIN Products p ON oi.product_id = p.product_id
    ORDER BY o.order_id ASC;

?>