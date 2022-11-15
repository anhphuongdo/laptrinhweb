<?php

    require_once($_SERVER['DOCUMENT_ROOT']."/LaptrinhWeb/Model/Getcustomer.php");

    function signup_ctl($ten_kh, $email, $matkhau, $sdt, $diachi)
    {
        $link = NULL;
        taoKetNoi($link);
        if(isset($_POST['email']) && isset($_POST['matkhau']))
        {
            $valid = $_POST['matkhau'];
            $valid = $valid&&validateLenUP('matkhau');
            $valid = $valid&&validateEmail($_SESSION['email']);
            if($valid)
            {
                if(existsEmail($link, $_POST['email']))
                {
                    giaiPhongBoNho($link, true);
                    echo "duplicate";
                }
                else
                {
                    dangki($link, $_POST['ten_kh'], $_POST['email'], $_POST['matkhau'], $_POST['sdt'], $_POST['diachi']);
                    giaiPhongBoNho($link, true);
                    echo "done";
                    include_once($_SERVER['DOCUMENT_ROOT']."/LaptrinhWeb/signin.php");
                }
            }
        else
        {
            giaiPhongBoNho($link, true);
            echo "unvalid";
        }
    }
}
    /* class UserController {
        public $model;
        public function __construct()
        {
            $this->model = new UserModel();
        }
        public function signup_ctl($ten_kh, $email, $matkhau, $sdt, $diachi) {
            $data = $this->model->signup($ten_kh, $email, $matkhau, $sdt, $diachi);
            if(isset($data)) ($_SERVER['DOCUMENT_ROOT']."/LaptrinhWeb/signin.php");
        }
    } */
