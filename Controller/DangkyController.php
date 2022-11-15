<?php

    require_once($_SERVER['DOCUMENT_ROOT']."/LaptrinhWeb/Model/Getcustomer.php");

    function signup_ctl($ten_kh, $matkhau, $sdt, $diachi, $email)
    {
        $link = NULL;
        taoKetNoi($link);
        if(isset($email) && isset($matkhau))
        {
            $valid = $matkhau;
            $valid = $valid&&validateLenUP('matkhau');
            $valid = $valid&&validateEmail($email);
            if($valid)
            {
                if(existsEmail($link, $email))
                {
                    giaiPhongBoNho($link, true);
                    echo "duplicate";
                }
                else
                {
                    dangki($link, $ten_kh, $matkhau, $sdt, $diachi, $email);
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
