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
    c.customer_id,
    c.name AS customer_name,
    c.email,
    c.location,
    COUNT(o.order_id) AS total_orders
    FROM Customers c
    LEFT JOIN Orders o ON c.customer_id = o.customer_id
    GROUP BY c.customer_id, c.name, c.email, c.location
    ORDER BY total_orders DESC;


?>