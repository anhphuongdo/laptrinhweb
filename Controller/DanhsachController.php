<?php 
    require_once($_SERVER['DOCUMENT_ROOT']."/LaptrinhWeb/Model/Getbook.php");

    class DanhsachController{
        public $model;
        public function __construct() {
            $this->model = new Getbook();
        }

        public function invoke(){
            /* if(!isset($_GET['key'])){
                $books = $this->model->getallbooklist();
                include $_SERVER['DOCUMENT_ROOT']."/LaptrinhWeb/View/booklist_view.php"; 
            }
            else */ if(isset($_GET['tl'])){
                if($_GET['tl'] == 'TL001'){
                    $books = $this->model->getbooklist_theotheloai($_GET['tl']);
                    include $_SERVER['DOCUMENT_ROOT']."/LaptrinhWeb/View/booklist_view.php"; 
                }
                if($_GET['tl'] == 'TL002'){
                    $books = $this->model->getbooklist_theotheloai($_GET['tl']);
                    include $_SERVER['DOCUMENT_ROOT']."/LaptrinhWeb/View/booklist_view.php"; 
                }
                if($_GET['tl'] == 'TL003'){
                    $books = $this->model->getbooklist_theotheloai($_GET['tl']);
                    include $_SERVER['DOCUMENT_ROOT']."/LaptrinhWeb/View/booklist_view.php"; 
                }
                if($_GET['tl'] == 'TL004'){
                    $books = $this->model->getbooklist_theotheloai($_GET['tl']);
                    include $_SERVER['DOCUMENT_ROOT']."/LaptrinhWeb/View/booklist_view.php"; 
                }
                if($_GET['tl'] == 'TL005'){
                    $books = $this->model->getbooklist_theotheloai($_GET['tl']);
                    include $_SERVER['DOCUMENT_ROOT']."/LaptrinhWeb/View/booklist_view.php"; 
                }
                if($_GET['tl'] == 'TL006'){
                    $books = $this->model->getbooklist_theotheloai($_GET['tl']);
                    include $_SERVER['DOCUMENT_ROOT']."/LaptrinhWeb/View/booklist_view.php"; 
                }
            }/* else if(isset($_GET['key']) && !isset($_GET['tl']))
            {
                $books = $this->model->getbook($_GET['key']);
                include $_SERVER['DOCUMENT_ROOT']."/LaptrinhWeb/View/booklist_view.php";
            } */
        }
        public function tl_invoke($name){
            $types = $this->model->gettypebookId();
            $books = $this->model->getallbooklist();
            include $_SERVER['DOCUMENT_ROOT']."/LaptrinhWeb/View/booktypelist.php";
        }
    }
?>