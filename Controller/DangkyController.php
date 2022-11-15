<?php
    require_once($_SERVER['DOCUMENT_ROOT']."/LaptrinhWeb/Model/Getcustomer.php");

    function signup_ctl($ten_kh, $matkhau, $sdt, $diachi, $email)
    {
        if(isset($email) && isset($matkhau))
        {
            if(dangki($ten_kh, $matkhau, $sdt, $diachi, $email))
            {
                include_once($_SERVER['DOCUMENT_ROOT']."/LaptrinhWeb/View/signin.php");
                echo "Success";
            }
        }
        else
        {
/*             giaiPhongBoNho($link, true); */
            echo "unvalid";
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
