<?php
    require_once($_SERVER['DOCUMENT_ROOT']."/LaptrinhWeb/Model/Class/Khachhang.php");
    require_once($_SERVER['DOCUMENT_ROOT']."/LaptrinhWeb/db_module.php");
    require_once($_SERVER['DOCUMENT_ROOT']."/LaptrinhWeb/Model/Validate.php");

    function dangki($ten_kh, $matkhau, $sdt, $diachi, $email)
    {
        $link = NULL;
        taoKetNoi($link);
        if(existsEmail($link, $email))
        {
            giaiPhongBoNho($link, true);
            return false;
        }
        else
        {
            chayTruyVanKhongTraVeDL($link, "INSERT INTO khachhang(ten_kh, matkhau, sdt, diachi, email)
                                            VALUES ('$ten_kh', '$matkhau', '$sdt', '$diachi', '$email')");
            return true;
        }
    }
    function dangnhap($email, $matkhau)
    {
        $result = NULL;
        $link = NULL;
        taoKetNoi($link);
        $result=chayTruyVanTraVeDL($link, "select * from khachhang where email='".mysqli_real_escape_string($link, $email)."' and matkhau='$matkhau'");
        if(mysqli_num_rows($result) > 0)
        {
            return true;
        }
        else
            return false;
    }

    function dangxuat()
    {
        if(isset($_SESSION['email']))
        {
            unset($_SESSION['email']);
            return true;
        }
        else return false;
    }
