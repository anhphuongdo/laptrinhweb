<?php
    session_start();

    require_once("Model/Getcustomer.php");
    require_once("db_module.php");

    $link = NULL;
    taoKetNoi($link);

    if(isset($_POST['email']) && isset($_POST['matkhau']))
    {
        if(signin($link, $_POST["email"], $_POST["matkhau"])) header("Location: userprofile .php");
        else header("Location: signin.php?msg=login-fail");
    }
    else header("Location: signin.php");
?>