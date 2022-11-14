<?php
    session_start();

    require_once "db_module.php";
    require_once "../Model/Validate.php";
    require_once "../Model/Getcustomer.php";

    $link = NULL;
    taoKetNoi($link);

    /* if(isset($_POST['ten_kh']) && isset($_POST['email']) && isset($_POST['matkhau']) && isset($_POST['sdt']) && isset($_POST['diachi']))
    {
        $valid = $valid&&validateEmail($_POST['email']);
        $valid = $valid&&validateLenUP($_POST['matkhau']);
        if($valid)
        {
            if(existsEmail($link, $_POST['email'])) header("Location: signup.php?msg=duplicate&email=".$_POST['email']);
            else
            {
                signup($_POST["ten_kh"], $_POST["email"], $_POST["matkhau"], $_POST["sdt"], $_POST["diachi"]);
                header("Location: signup.php?msg=done");
            }
        }
        else header("Location: signup.php?msg=unvalid-data&email=".$_POST('email'));
    } */
    class UserController {
        public $model;
        public function __construct() {
            $this->model = new UserModel();
        }

        public function signup_ctl($email, $matkhau) {
            $data = $this->model->signup($ten_kh, $email, $matkhau, $sdt, $diachi);
            if(isset($data))
            
?>