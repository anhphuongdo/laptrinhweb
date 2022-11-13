<?php
    session_start();

    require_once("db_module.php");
    require_once("../Model/Getcustomer.php");

    $link = NULL;
    taoKetNoi($link);

    if(logout()) header("Location: signup.php");
    else
    {
        header("Content-type: text/html; charset=utf8");
        echo "Không thể đăng xuất!";
    }
?>