<?php
    require_once("../LaptrinhWeb/Model/Getdetail.php");

    class ChitietsachController{
        public $model;

        public function __construct() {
            $this -> model= new Getdetail();
        }

        public function invoke($name)
        {
            $book = $this->model->getdetailbook($name);
            include "../LaptrinhWeb/View/detailproduct_view.php";
        }
    } 
?>