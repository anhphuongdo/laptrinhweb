<?php
    class Donhang{
        private $id_donhang;
        private $id_kh;
        private $id_sach;
        private $soluong;
        private $thoigian;

        public function get_id_donhang() {return $this -> id_donhang;}
        public function get_id_kh() {return $this -> id_kh;}
        public function get_id_sach() {return $this -> id_sach;}
        public function get_soluong() {return $this -> soluong;}
        public function get_thoigian() {return $this -> thoigian;}

        public function set_soluong($soluong){
            $this -> soluong = $soluong;
        }
        public function set_thoigian($thoigian){
            $this -> thoigian = $thoigian;
        }

        public function __construct($id_donhang, $id_kh, $id_sach, $soluong, $thoigian){
            $this -> id_donhang = $id_donhang;
            $this -> id_kh = $id_kh;
            $this -> id_sach = $id_sach;
            $this -> soluong = $soluong;
            $this -> thoigian = $thoigian;
        }
    }
?>