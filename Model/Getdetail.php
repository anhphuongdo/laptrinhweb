<?php
    require_once("../LaptrinhWeb/Model/Class/Sach.php");
    require_once("../LaptrinhWeb/Model/Class/Motasach.php");
    require_once("../LaptrinhWeb/db_module.php");

    class Getdetail{
        public function getdetailbook($name){
            $link = null;
            taoKetNoi($link);
            $result = chayTruyVanTraVeDL($link, "select *
                                                from sach, motasach
                                                on sach.id_sach = motasach.id_sach");
            $data = array();
            while($rows = mysqli_fetch_assoc($result))
            {
                $book = new Sach($rows["id_sach"], $rows["ten_sach"], $rows["id_theloai"], $rows["id_tacgia"], $rows["id_nxb"], $rows["giatien"], $rows["soluong"], $rows["hinhanh"]);
                array_push($data, $book);
            }
            giaiPhongBoNho($link, $result);
            return $data;
        }
    }
?> 