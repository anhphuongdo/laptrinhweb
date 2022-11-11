<?php
    session_start();

    require_once "db_module.php";
    require_once "Model/Validate.php";
    require_once "Model/Getcustomer.php";

    $link = NULL;
    taoKetNoi($link);

    if(isset($_POST['ten_kh']) && isset($_POST['email']) && isset($_POST['matkhau']) && isset($_POST['sdt']) && isset($_POST['diachi']))
    {
        $valid = $valid&&validateEmail($_POST['email']);
        $valid = $valid&&validateLenUP($_POST['matkhau']);
        if($valid)
        {
            if(existsEmail($link, $_POST['email']))
            {
                giaiPhongBoNho($link, true);
                header("Location: dangki.php?msg=duplicate&email=".$_POST['email']);
            }
        }
        else
        {
            
        }
    }
?>