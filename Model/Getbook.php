<?php 
    require_once("../Model/Class/Sach.php");
    require_once("../Model/Class/Theloai.php");
    require_once("../db_module.php");
    
    function getallbooklist(){
            $link = null;
            taoKetNoi($link);
            $result = chayTruyVanTraVeDL($link, "select * from sach");
            $data = array();
            while($rows = mysqli_fetch_assoc($result))
            {
                $book = new Sach($rows["id_sach"], $rows["ten_sach"], $rows["id_theloai"], $rows["id_tacgia"], $rows["id_nxb"], $rows["giatien"], $rows["soluong"], $rows["hinhanh"]);
                array_push($data, $book);
            }
            giaiPhongBoNho($link, $result);
            return $data;
        }
        function getbooklist_theotheloai($ten_theloai){
            $link = null;
            taoKetNoi($link);
            $result = chayTruyVanTraVeDL($link, "select *
                                                from sach inner join theloai
                                                on sach.id_theloai = theloai.id_theloai
                                                where 'ten_theloai' = ".$ten_theloai."");
            $data = array();
            while($rows = mysqli_fetch_assoc($result))
            {
                $book = new Sach($rows["id_sach"], $rows["ten_sach"], $rows["id_theloai"], $rows["id_tacgia"], $rows["id_nxb"], $rows["giatien"], $rows["soluong"], $rows["hinhanh"]);
                array_push($data, $book);
            }
            giaiPhongBoNho($link, $result);
            return $data;
        }
        function getbook($ten_sach){
            $link = null;
            taoKetNoi($link);
            $result = chayTruyVanTraVeDL($link, "select * from sach 
                                                where ten_sach = ".$ten_sach."");
            $data = array();
            while($rows = mysqli_fetch_assoc($result))
            {
                $book = new Sach($rows["id_sach"], $rows["ten_sach"], $rows["id_theloai"], $rows["id_tacgia"], $rows["id_nxb"], $rows["giatien"], $rows["soluong"], $rows["hinhanh"]);
                array_push($data, $book);
            }
            giaiPhongBoNho($link, $result);
            return $data;
        }