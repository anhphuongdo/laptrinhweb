<?php
    class Tacgia{
        private $id_tacgia;
        private $ten_tacgia;

        public function get_id_tacgia() {return $this -> id_tacgia;}
        public function get_ten_tacgia() {return $this -> ten_tacgia;}
        
        public function set_ten_tacgia($ten_tacgia){
            $this -> ten_tacgia = $ten_tacgia;
        }

        public function __construct($id_tacgia, $ten_tacgia){
            $this -> id_tacgia = $id_tacgia;
            $this -> ten_tacgia = $ten_tacgia;
        }
    }
?>