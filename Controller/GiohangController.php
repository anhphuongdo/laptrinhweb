<?php
    include_once("cart_module.php");

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
            "soluong" => $_POST['soluong'],
            "soluongmax" => $_POST['soluongmax'],
            "tongtiensach" => $tongtiensach
        );

        if(isset($_POST['GiohangController']))
        {
            switch($_POST['GiohangController'])
            {
                case "themvaogiohang":
                    themvaogiohang($sach);
                    header("Location: ../View/");
                    break;
                case "muangay":
                    themvaogiohang($sach);
                    header("Location: ../View/giohang.php/index.php");
                    break;
                default:
                    break;
            }
        }
    }
?>