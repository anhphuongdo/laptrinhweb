<?php
    session_start();    
    require_once("../db_module.php");
    require_once("../cart_module.php");
    $link = NULL;
    taoKetNoi($link);

    if(isset($_POST['GiohangController']))
    {
        $tongtiensach = $_POST['soluong'] * $_POST['giatien'];
        if(!isset($_SESSION['giohang']))
        {
            $_SESSION['giohang'] = array();
        }
        $sach = array(
            "idsachtronggiohang" => count($_SESSION['giohang']), 
            "id_sach" => $_POST['id_sach'],
            "ten_sach" => $_POST['ten_sach'],
            "hinhanh" => $_POST['hinhanh'],
            "giatien" => $_POST['giatien'],
            "soluong" => 1,
            "tongtiensach" => $tongtiensach
        );
    }
    if(isset($_POST['GiohangController']))
        {
            switch($_POST['GiohangController'])
            {
                case "themvaogiohang":
                    themvaogiohang($sach);
                    header("Location: ../View/detailproduct.php?pro_id=".$_GET['id_sach']);
                    break;
                case "muangay":
                    themvaogiohang($sach);
                    header("Location: ../View/shoppingcart.php");
                    break;
                case "xoahang":
                    xoahang($key);
                    header("Location: ../View/shoppingcart.php");
                default:
                    break;
            }
        }
?>