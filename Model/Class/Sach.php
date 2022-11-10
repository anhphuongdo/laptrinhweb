<?php
    class Sach{
        private $id_sach;
        private $ten_sach;
        private $id_theloai;
        private $id_tacgia;
        private $id_nxb;
        private $giatien;
        private $soluong;
        private $hinhanh;
        //private $mota;

        public function get_id_sach() {return $this->id_sach;}
        public function get_ten_sach(){return $this->ten_sach;}
        public function get_id_theloai(){return $this->get_id_theloai;}
        public function get_id_tacgia(){return $this->id_tacgia;}
        public function get_id_nxb(){return $this->id_nxb;}
        public function get_giatien(){return $this->giatien;}
        public function get_soluong(){return $this->soluong;}
        public function get_hinhanh(){return $this->hinhanh;}
        //public function get_mota(){return $this->mota;}

        public function set_ten_sach($ten_sach){
            $this -> ten_sach = $ten_sach;
        }
        public function set_id_theloai($id_theloai){
            $this -> id_theloai = $id_theloai;
        }
        public function set_id_tacgia($id_tacgia){
            $this -> id_tacgia = $id_tacgia;
        }
        public function set_id_nxb($id_nxb){
            $this -> id_nxb = $id_nxb;
        }
        public function set_giatien($giatien){
            $this -> giatien = $giatien;
        }
        public function set_soluong($soluong){
            $this -> soluong = $soluong;
        }
        public function set_hinhanh($hinhanh){
            $this -> hinhanh = $hinhanh;
        }
        /*public function set_description($mota){
            $this -> mota = $mota;
        }*/

        public function __construct($id_sach, $ten_sach, $id_theloai, $id_tacgia, $id_nxb, $giatien, $soluong, $hinhanh)
        {
            $this -> id_sach = $id_sach;
            $this -> ten_sach = $ten_sach;
            $this -> id_theloai = $id_theloai;
            $this -> id_tacgia = $id_tacgia;
            $this -> id_nxb = $id_nxb;
            $this -> giatien = $giatien;
            $this -> soluong = $soluong;
            $this -> hinhanh = $hinhanh;
            //$this -> mota = $mota;
        }
    }