<?php 
    require_once("../LaptrinhWeb/Model/Getlimitbook.php");

    class IndexController{
        public $model;
        public function __construct() {
            $this->model = new Getlimitbook();
        }

        public function tl_limit_invoke($name){
            $books = $this->model->getbooklist_theotheloai($name);
            include "../LaptrinhWeb/View/index_view.php";
        }
    }
?> 