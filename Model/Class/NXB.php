<?php
    class NXB{
        private $id_nxb;
        private $ten_nxb;

        public function set_id_nxb() {return $this -> id_nxb; }
        public function set_ten_nxb() {return $this -> ten_nxb;}

        public function get_ten_nxb($ten_nxb){
            $this -> ten_nxb = $ten_nxb
        }

        public function __construct($id_nxb, $ten_nxb){
            $this -> id_nxb = $id_nxb;
            $this -> ten_nxb = $ten_nxb;
        }
    }
?>