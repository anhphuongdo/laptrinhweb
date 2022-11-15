<?php
    require_once($_SERVER['DOCUMENT_ROOT']."/LaptrinhWeb/Model/Class/Sach.php");
    require_once($_SERVER['DOCUMENT_ROOT']."/LaptrinhWeb/Model/Class/Motasach.php");
    require_once($_SERVER['DOCUMENT_ROOT']."/LaptrinhWeb/Model/Class/NXB.php");
    require_once($_SERVER['DOCUMENT_ROOT']."/LaptrinhWeb/Model/Class/Tacgia.php");
    require_once($_SERVER['DOCUMENT_ROOT']."/LaptrinhWeb/db_module.php");

    class Getdetail{
        public function getmota(){
            $link = null;
            taoKetNoi($link);
            $result = chayTruyVanTraVeDL($link, "select * from motasach");
            $data = array();
            while($rows = mysqli_fetch_assoc($result))
            {
                $motas = new Motasach($rows["id_sach"], $rows["mota"]);
                array_push($data, $motas);
            }
            giaiPhongBoNho($link, $result);
            return $data;
        }
        public function gettacgia(){
            $link = null;
            taoKetNoi($link);
            $result = chayTruyVanTraVeDL($link, "select * from tacgia");
            $data = array();
            while($rows = mysqli_fetch_assoc($result))
            {
                $tacgias = new Tacgia($rows["id_tacgia"], $rows["ten_tacgia"]);
                array_push($data, $tacgias);
            }
            giaiPhongBoNho($link, $result);
            return $data;
        }
        public function getnxb(){
            $link = null;
            taoKetNoi($link);
            $result = chayTruyVanTraVeDL($link, "select * from nxb");
            $data = array();
            while($rows = mysqli_fetch_assoc($result))
            {
                $nxbs = new NXB($rows["id_nxb"], $rows["ten_nxb"]);
                array_push($data, $nxbs);
            }
            giaiPhongBoNho($link, $result);
            return $data;
        }
        public function getspecbook($id){
            $link = null;
            taoKetNoi($link);
            $result = chayTruyVanTraVeDL($link, "select * from sach
                                                where sach.id_sach ='".$id."'");
            $data = array();
            while($rows = mysqli_fetch_assoc($result))
            {
                $specbooks = new Sach($rows["id_sach"], $rows["ten_sach"], $rows["id_theloai"], $rows["id_tacgia"], $rows["id_nxb"], $rows["giatien"], $rows["soluong"], $rows["hinhanh"]);
                array_push($data, $specbooks);
            }
            giaiPhongBoNho($link, $result);
            return $data;
        }
        public function getbook(){
            $link = null;
            taoKetNoi($link);
            $result = chayTruyVanTraVeDL($link, "select * from sach");
            $data = array();
            while($rows = mysqli_fetch_assoc($result))
            {
                $books = new Sach($rows["id_sach"], $rows["ten_sach"], $rows["id_theloai"], $rows["id_tacgia"], $rows["id_nxb"], $rows["giatien"], $rows["soluong"], $rows["hinhanh"]);
                array_push($data, $books);
            }
            giaiPhongBoNho($link, $result);
            return $data;
        }
    }
?>  