<?php
    require_once("Model/Class/Sach.php");
    require_once("Model/Class/Motasach.php");
    require_once("db_module.php");

    function getdetailbook(){
        $link = null;
        taoKetNoi($link);
        $result = chayTruyVanTraVeDL($link, "select *
                                            from sach inner join motasach
                                            on id_sach.sach = id_sach.motasach");
        $data = array();
        while($rows = mysqli_fetch_assoc($result))
        {
            $book = new Sach($rows["id_sach"], $rows["ten_sach"], $rows["id_theloai"], $rows["id_tacgia"], $rows["id_nxb"], $rows["giatien"], $rows["soluong"], $rows["hinhanh"]);
            array_push($data, $book);
        }
        giaiPhongBoNho($link, $result);
        return $data;
    }
?>