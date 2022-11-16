<?php 
    require_once($_SERVER['DOCUMENT_ROOT']."/LaptrinhWeb/Model/Getlimitbook.php");

    class IndexController{
        public $model;
        public function __construct() {
            $this->model = new Getlimitbook();
        }

        public function tl_limit_invoke($name){
            $books = $this->model->getbooklist_theotheloai($name);
            include $_SERVER['DOCUMENT_ROOT']."/LaptrinhWeb/View/index_view.php";
        }
    }
?>   