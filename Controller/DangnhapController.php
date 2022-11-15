<?php
    include_once($_SERVER['DOCUMENT_ROOT']."/LaptrinhWeb/Model/Getcustomer.php");
 
    function login_ctl($email, $matkhau) {
        if(dangnhap($email, $matkhau))
            include_once($_SERVER['DOCUMENT_ROOT']."/LaptrinhWeb/View/index.php");
        else
            echo "Login fail";
        }
?>