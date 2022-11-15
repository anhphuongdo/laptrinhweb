<?php
    include_once($_SERVER['DOCUMENT_ROOT']."/Model/Getcustomer.php");
 
    function login_ctl($email, $matkhau) {
        if(dangnhap($email, $matkhau))
            include_once($_SERVER['DOCUMENT_ROOT']."/index.php");
            else
            echo "Login fail";
        }
?>