<?php
    include_once($_SERVER['DOCUMENT_ROOT']."/LaptrinhWeb/Model/Getcustomer.php")
?>
<?php 
    class UserController {
        public $model;
        public function __construct() {
            $this->model = new UserModel();
        }

        public function login_ctl($email, $matkhau) {
            $data = $this->model->login($email, $matkhau);
            if(isset($data))
                 /* header("Location: ./index.php"); */
                 //include_once $_SERVER['DOCUMENT_ROOT']."/LaptrinhWeb/index.php";
                include_once $_SERVER['DOCUMENT_ROOT']."/LaptrinhWeb/index.php";
            else 
                include_once $_SERVER['DOCUMENT_ROOT']."/LaptrinhWeb/View/signin.php";
        }

       /*  public function getInfoAdmin($email, $matkhau) {
            $data = $this->model->getUser($email, $matkhau);
            include_once $_SERVER['DOCUMENT_ROOT']."/LaptrinhWeb/View/.php";
        } */

    /* if(isset($_POST['email']) && isset($_POST['matkhau']))
    {
        if(signin($link, $_POST["email"], $_POST["matkhau"])) header("Location: userprofile .php");
        else header("Location: signin.php?msg=login-fail");
    }
    else header("Location: signin.php"); */
}
?>