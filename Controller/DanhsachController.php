<?php 
    require_once($_SERVER['DOCUMENT_ROOT']."/LaptrinhWeb/Model/Getbook.php");

    class DanhsachController{
        public $model;
        public function __construct() {
            $this->model = new Getbook();
        }

        public function invoke(){
            if(!isset($_GET["nd"])){
                $books = $this->model->getallbooklist();
                include $_SERVER['DOCUMENT_ROOT']."/LaptrinhWeb/View/booklist_view.php"; 
            }
            else
            {
                $book = $this->model->getbook("nd");
                include $_SERVER['DOCUMENT_ROOT']."/LaptrinhWeb/View/booklist_view.php";
            }
        }
        public function tl_invoke($name){
            $types = $this->model->gettypebookId();
            $books = $this->model->getallbooklist();
            include $_SERVER['DOCUMENT_ROOT']."/LaptrinhWeb/View/booktypelist.php";
        }

        public function tl_limit_invoke($name){
            $types = $this->model->gettypebookId();
            $books = $this->model->getallbooklist();
            include $_SERVER['DOCUMENT_ROOT']."/LaptrinhWeb/View/index_view.php";
        }
    }
?>