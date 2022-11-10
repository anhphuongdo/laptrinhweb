<?php 
    require_once("Model/Getbook.php");

    class DanhsachController{
        public $model;

        public function __construct() {}

        public function invoke(){
            if(!isset($_GET["nd"])){
                $book = getallbooklist();
                include "view/index.php";
            }
            else if($_GET["nd"] == "sachkt")
            {
                $book = getbooklist_theotheloai("Sách kinh tế"); //"N'Sách kinh tế'"
                include "view/index.php";
            }
            else if($_GET["nd"] == "vhvietnam")
            {
                $book = getbooklist_theotheloai("Văn học Việt Nam"); //"N'Sách kinh tế'"
                include "view/index.php";
            }
            else if($_GET["nd"] == "vhnuocngoai")
            {
                $book = getbooklist_theotheloai("Văn học nước ngoài"); //"N'Sách kinh tế'"
                include "view/index.php";
            }
            else if($_GET["nd"] == "sachAnh")
            {
                $book = getbooklist_theotheloai("Sách học tiếng Anh"); //"N'Sách kinh tế'"
                include "view/index.php";
            }
            else if($_GET["nd"] == "sachHan")
            {
                $book = getbooklist_theotheloai("Sách học tiếng Hàn"); //"N'Sách kinh tế'"
                include "view/index.php";
            }
            else if($_GET["nd"] == "sachTrung")
            {
                $book = getbooklist_theotheloai("Sách học tiếng Trung"); //"N'Sách kinh tế'"
                include "view/index.php";
            }
            else
            {
                $book = getbook("nd");
                include "view/index.php";
            }
        }
    }
?>