<?php 
    require_once("Model/Getbook.php");

    class DanhsachController{
        public $model;

        public function __construct() {}

        public function invoke(){
            if(!isset($_GET["tl"])){
                $book = getallbooklist();
                include "view/index.php";
            }
            else if($_GET["nd"] == "sachkt");
        }
    }
?>