<?php
    function taoTonggiatien()
    {
        if(isset($_SESSION['giohang']))
        {
            $tongtiensach = 0;
            foreach($_SESSION['giohang'] as $value)
            {
                $tongtiensach += $value['tongtiensach'];
            }
            $_SESSION['tongtiensach'] = $tongtiensach;
        }
    }

    function themvaogiohang($sach)
    {
        if(isset($_SESSION['giohang']))
        {
            $giohang = $_SESSION['giohang'];
            if(count($giohang) == 0)
            {
                $giohang[$sach["tongsosach"]] = $sach;
                $_SESSION['giohang'] = $giohang;
                taoTonggiatien();
            }
            else
            {
                for($i = 0; $i<=count($giohang); $i++)
                {
                    if(!$giohang[$i]['id_sach'] == $sach['id_sach'])
                    {
                        $giohang[$sach["tongsosach"]] = $sach;
                    }
                    else
                    {
                        $temp = $giohang[$i]['soluong'] + $sach['soluong'];
                        if($temp > $sach['soluongmax'])
                        {
                            $giohang[$i]['soluong'] = $sach['soluongmax'];
                            $giohang[$i]['tongtiensach'] = $giohang[$i]['soluong']* $giohang[$i]['giatien'];
                        }
                        else
                        {
                            $giohang[$i]['soluong'] = $temp;
                            $giohang[$i]['tongtiensach'] = $giohang[$i]['soluong'] * $giohang[$i]['giatien'];
                        }
                    }
                    $_SESSION['giohang'] = $giohang;
                    taoTonggiatien();
                    break;
                }
            }
        }
        else
        {
            $giohang[$sach["idsachtronggiohang"]] = $sach;
            $_SESSION['giohang'] = $giohang;
            taoTonggiatien();
        }
        taoTonggiatien();

        function capnhatgiohang($quantity)
        {
            if(isset($_SESSION['giohang']))
            {
                $giohang = $_SESSION['giohang'];
                foreach($quantity as $idsachtronggiohang => $tongsosach)
                {
                    $giohang[$idsachtronggiohang]['soluong'] = $tongsosach;
                    $giohang[$idsachtronggiohang]['tongtiensach'] = $giohang[$idsachtronggiohang]['soluong'] * $giohang[$idsachtronggiohang]['giatien'];
                }
                $_SESSION['giohang'] = $giohang;
                taoTonggiatien();
            }
        }

        function lamtronggiohang()
        {
            if(isset($_SESSION['giohang']))
            {
                unset($_SESSION['giohang']);
                unset($_SESSION['tongtiensach']);
            }
        }

        function xemgiohang()
        {
            $sum = 0;
            if( isset($_SESSION['giohang']))
            {
                $giohang = $_SESSION['giohang'];
                foreach($giohang as $value)
                {
                    $sum += $value['soluong'] * $value['giatien'];
                }
                return number_format($sum);
            }
        }
    }

?>