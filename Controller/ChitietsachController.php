<?php
    require_once("Model/Getdetail.php");

    class ChitietsachController{
        public $model;

        public function __construct() {}

        public function invoke()
        {
            $book = getbook("nd");
            include "view/index.php";
        }
    }
?>