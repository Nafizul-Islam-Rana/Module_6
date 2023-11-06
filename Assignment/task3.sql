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
    c.name AS category_name,
    SUM(oi.quantity * oi.unit_price) AS total_revenue
    FROM Order_Items oi
    JOIN Products p ON oi.product_id = p.product_id
    JOIN Categories c ON p.category_id = c.category_id
    GROUP BY c.name
    ORDER BY total_revenue DESC;


?>