<?php
    function validateLenUP($up){
        return strlen($up)>=8&&strlen($up)<=30;
    }

    function validateEmail($email){
        return filter_var($email, FILTER_VALIDATE_EMAIL)!=false?true:false;
    }

    function existsEmail($link, $email)
    {
        $result = chayTruyVanTraVeDL($link, "select count(*) from Khachhang where email = ".$email."");
        $row = mysqli_fetch_row($result);
        mysqli_free_result($result);
        return $row[0]>0;
    }
?>