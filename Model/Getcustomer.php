<?php
    require_once("../Model/Class/Khachhang.php");
    require_once("../Model/Class/Donhang.php");
    require_once("../db_module.php");
    class Getcustomer{
    public function signup($link, $ten_kh, $email, $matkhau, $sdt, $diachi)
    {
        chayTruyVanKhongTraVeDL($link, "insert into Khachhang values (NULL,".$ten_kh.", ".mysqli_real_escape_string($link, $email).", ".md5($matkhau).", ".$sdt.", ".$diachi."");
    }

    public function signin($link, $email, $matkhau)
    {
        $result = chayTruyVanTraVeDL($link, "select count(*) from Khachhang where email=".mysqli_real_escape_string($link, $email)." and matkhau = ".md5($matkhau)."");
        $row = mysqli_fetch_row($result);
        mysqli_free_result($result);
        if($row[0]>0){
            $_SESSION['email'] = $email;
            return true;
        }
        else return false;
    }

    public function logout(){
        if(isset($_SESSION['email']))
        {
            unset($_SESSION['email']);
            return true;
        }
        else return false;
    }
    }
?>