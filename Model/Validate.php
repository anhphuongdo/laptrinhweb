<?php
    function existsEmail($link, $email)
    {
        $stmt = $link->prepare("SELECT 1 FROM khachhang WHERE email=? LIMIT 1");
        $stmt->bind_param('s', $email);
        $stmt->execute();
        $stmt->store_result();
        return $stmt->num_rows;
    }
?>