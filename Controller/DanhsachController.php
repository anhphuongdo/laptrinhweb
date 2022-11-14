<?php 
    require_once("../LaptrinhWeb/Model/Getbook.php");

    class DanhsachController{
        public $model;
        public function __construct() {
            $this->model = new Getbook();
        }

        public function invoke(){
            if(!isset($_GET["nd"])){
                $books = $this->model->getallbooklist();
                include "../LaptrinhWeb/View/allbooklist.php";
            }
            else
            {
                $book = $this->model->getbook("nd");
                include "../LaptrinhWeb/View/allbooklist.php";
            }
        }
        public function tl_invoke($name){
            $types = $this->model->gettypebookId();
            $books = $this->model->getallbooklist();
            include "../LaptrinhWeb/View/booktypelist.php";
        }

        public function tl_limit_invoke($name){
            $types = $this->model->gettypebookId();
            $books = $this->model->getallbooklist();
            include "../LaptrinhWeb/View/index_view.php";
        }
    }
?>