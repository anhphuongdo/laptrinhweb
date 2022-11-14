<?php 
    require_once($_SERVER['DOCUMENT_ROOT']."/LaptrinhWeb/Model/Class/Sach.php");
    require_once($_SERVER['DOCUMENT_ROOT']."/LaptrinhWeb/Model/Class/Theloai.php");
    require_once($_SERVER['DOCUMENT_ROOT']."/LaptrinhWeb/db_module.php");

    class Getbook{
        public function getallbooklist(){
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
        public function gettypebookId(){
            $link = null;
            taoKetNoi($link);
            $data = array();
            $result = chayTruyVanTraVeDL($link, "select * from theloai");
            while($rows = mysqli_fetch_assoc($result)){
                $type = new Theloai($rows["id_theloai"], $rows["ten_theloai"]);
                array_push($data, $type);
            }
            giaiPhongBoNho($link, $result);
            return $data;
        }
        public function getbook($ten_sach){
            $link = null;
            taoKetNoi($link);
            $result = chayTruyVanTraVeDL($link, "select * from sach 
                                                where ten_sach like '%".$ten_sach."%'");
            $data = array();
            while($rows = mysqli_fetch_assoc($result))
            {
                $book = new Sach($rows["id_sach"], $rows["ten_sach"], $rows["id_theloai"], $rows["id_tacgia"], $rows["id_nxb"], $rows["giatien"], $rows["soluong"], $rows["hinhanh"]);
                array_push($data, $book);
            }
            giaiPhongBoNho($link, $result);
            return $data;
        }
        public function getbooklist_theotheloai($name){
            $link = null;
            taoketnoi($link);
            $data = array();
            $result = chayTruyVanTraVeDL($link, "select * 
                                                from theloai, sach
                                                where theloai.id_theloai = sach.id_theloai and theloai.ten_theloai='%".$name."%'");
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
    