<?php
    require_once($_SERVER['DOCUMENT_ROOT']."/LaptrinhWeb/Model/Class/Khachhang.php");
    require_once($_SERVER['DOCUMENT_ROOT']."/LaptrinhWeb/db_module.php");
    require_once($_SERVER['DOCUMENT_ROOT']."/LaptrinhWeb/Model/Validate.php");

    class UserModel {
        public function login($email, $matkhau){
            $result = NULL;
            $link = NULL;
            taoKetNoi($link);
            $query = "SELECT count(*) from khachhang WHERE `email` = '$email' AND `matkhau` = '$matkhau'";
            $result = chayTruyVanTraVeDL($link, $query);
            $rows = mysqli_fetch_row($result);
            if($rows[0]>0) return true;
            else return false;
        }
        public function signup($ten_kh, $email, $matkhau, $sdt, $diachi) {
            $result = NULL;
            $link = NULL;
            taoKetNoi($link);
            if(existsEmail($link, $email)) {
                giaiPhongBoNho($link, true);
                return false;
            }else {
                $matkhau = md5($matkhau);
                $email = mysqli_real_escape_string($link, $email);
                $query = "INSERT INTO `khachhang` (`ten_kh`, `matkhau`, `sdt`,'diachi', `email)
                VALUES ('$ten_kh', '$matkhau', '$sdt', '$diachi', '$email'";
                $setuser = chayTruyVanKhongTraVeDL($link, $query);
                if($setuser) return true;
                else return false;
        }
    }   
}
?>