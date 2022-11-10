<?php
    require_once("Model/Khachhang.php");
    require_once("Model/Donhang.php");
    require_once("db_module.php");

    function getinformation(){
        $link = null;
        taoKetNoi($link);
        $result = chayTruyVanTraVeDL($link, "select * from khachhang");
        $data = array();
        while($rows = mysqli_fetch_assoc($result))
        {
            $kh = new Khachhang($rows["id_kh"], $rows["ten_kh"], $rows["taikhoan"], $rows["matkhau"], $rows["sdt"], $rows["diachi"], $rows["email"]);
            array_push($data,$kh);
        }
        giaiPhongBoNho($link, $result);
        return $data;
    }

    function setinformation(){
        $link = null;
        taoKetNoi($link);
        $result = chayTruyVanKhongTraVeDL();
    }
?>