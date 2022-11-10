<?php
    class Motasach{
        private $id_sach;
        private $mota;

        public function get_id_sach() {return $this -> id_sach;}
        public function get_mota() {return $this -> mota;}

        public function set_mota($mota) {
            $this -> mota = $mota;
        }

        public function __construct($id_sach, $mota){
            $this -> id_sach = $id_sach;
            $this -> mota = $mota;
        }
    }
?>