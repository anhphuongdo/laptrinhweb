<?php
    class Khachhang{
        private $id_kh;
        private $ten_kh;
        private $email;
        private $matkhau;
        private $sdt;
        private $diachi;

        public function get_id_kh() {return $this->id_kh;}
        public function get_ten_kh() {return $this->ten_kh;}
        public function get_email() {return $this->email;}
        public function get_matkhau() {return $this->matkhau;}
        public function get_sdt() {return $this->sdt;}
        public function get_diachi() {return $this->diachi;}

        public function set_ten_kh($ten_kh){
            $this -> ten_kh = $ten_kh;
        }
        public function set_email($email){
            $this -> email = $email;
        }
        public function set_matkhau($matkhau){
            $this -> matkhau = $matkhau;
        }
        public function set_sdt($sdt){
            $this -> sdt = $sdt;
        }
        public function set_diachi($diachi){
            $this -> diachi = $diachi;
        }

        public function __construct($id_kh, $ten_kh, $email, $matkhau, $sdt, $diachi)
        {
            $this -> id_kh = $id_kh;
            $this -> ten_kh = $ten_kh;
            $this -> matkhau = $matkhau;
            $this -> sdt = $sdt;
            $this -> diachi = $diachi;
            $this -> email = $email;
        }
    }
?>