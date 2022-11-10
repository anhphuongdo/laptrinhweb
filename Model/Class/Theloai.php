<?php
    class Theloai{
        private $id_theloai;
        private $ten_theloai;

        public function get_id_theloai() {return $this -> id_theloai;}
        public function get_ten_theloai() {return $this -> ten_theloai;}

        public function set_ten_theloai($ten_theloai){
            $this -> ten_theloai = $ten_theloai;
        }

        public function __construct($id_theloai, $ten_theloai){
            $this -> id_theloai = $id_theloai;
            $this -> ten_theloai = $ten_theloai;
        }
    }
?>