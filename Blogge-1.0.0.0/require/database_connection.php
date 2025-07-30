<?php

    require_once("database_settings.php");


    mysqli_report(false);


    $connection = mysqli_connect($host_name, $user_name, $password, $database_name);


   if (mysqli_connect_errno()) {
    echo "Connection Error: " . mysqli_connect_error();
    }












?>