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
    c.name AS customer_name,
    SUM(oi.quantity * oi.unit_price) AS total_purchase_amount
    FROM Customers c
    JOIN Orders o ON c.customer_id = o.customer_id
    JOIN Order_Items oi ON o.order_id = oi.order_id
    GROUP BY c.name
    ORDER BY total_purchase_amount DESC
    LIMIT 5;

?>