<?php 
    require_once("../Model/Getbook.php");

    class DanhsachController{
        public $model;

        public function __construct() {}

        public function invoke(){
            if(!isset($_GET["nd"])){
                $books = getallbooklist();
                //include "../View/booklist.php";
            }
            else if($_GET["nd"] == "sachkt")
            {
                $books = getbooklist_theotheloai("N'Sách kinh tế'"); 
                //include "../View/booklist.php?nd=sachkt";
            }
            else if($_GET["nd"] == "vhVietNam")
            {
                $books = getbooklist_theotheloai("N'Văn học Việt Nam'"); 
                //include "../View/booklist.php?nd=vhVietNam";
            }
            else if($_GET["nd"] == "vhnuocngoai")
            {
                $books = getbooklist_theotheloai("N'Văn học nước ngoài'"); 
                //include "../View/booklist.php?nd=vhnuocngoai";
            }
            else if($_GET["nd"] == "sachAnh")
            {
                $books = getbooklist_theotheloai("N'Sách học tiếng Anh'"); 
                //include "../View/booklist.php?nd=sachAnh";
            }
            else if($_GET["nd"] == "sachHan")
            {
                $books = getbooklist_theotheloai("N'Sách học tiếng Hàn'"); 
                //include "..View/booklist.php?nd=sachHan";
            }
            else if($_GET["nd"] == "sachTrung")
            {
                $books = getbooklist_theotheloai("N'Sách học tiếng Trung'");
                //include "..View/booklist.php?nd=sachTrung";
            }
            else
            {
                $book = getbook("nd");
                //include "..View/booklist.php";
            }
        }
    }
?>