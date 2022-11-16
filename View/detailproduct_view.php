<html>
<body>
    <?php
    foreach($motas as $mota){
        if($mota -> get_id_sach() == $id){
            $motasach = $mota -> get_mota();
        }
    }
    foreach($tacgias as $tacgia){
        foreach($books as $book){
            if ($book->get_id_sach() == $id){
                if($tacgia -> get_id_tacgia() == $book -> get_id_tacgia()){
                    $tentacgia = $tacgia -> get_ten_tacgia();
                }
            }
        }
    }
    foreach($nxbs as $nxb){
        foreach($books as $book){
            if ($book->get_id_sach() == $id){
                if($nxb -> get_id_nxb() == $book -> get_id_nxb()){
                    $tennxb = $nxb -> get_ten_nxb();
                }
            }
        }
    }
    foreach ($books as $book){
        if ($book->get_id_sach() == $id) {
            echo "
                <div class='col-md-4 col-sm-12 col-xs-12 image' id='mainimage'>
                    <img title='" . $book->get_ten_sach() . "' alt='" . $book->get_ten_sach() . "'src='" . $book->get_hinhanh() . "' class='center' width=420px height=600px>
                </div>

                <div class='col-md-6 col-sm-12 col-xs-12 product-content' id='detailproduct'>
                    <div class='product-content-1'>
                        <div class='product-title'>
                            <h1>" . $book->get_ten_sach() . "</h1>
                            <span id='ID'>ID: ".$book -> get_id_sach()."</span>
                        </div>
                        <div class='product-price' id='price-priview'><span class='pro-price'> Đơn giá: " .number_format((int)$book->get_giatien(), 0, ",", "."). " VNĐ</span></div>
                        <form id='add-item-form' action='../Controller/GiohangController.php' method='post' class='variants clearfix'>
                            <div class='select-actions'>
                                <div class='center1>
                                    <p></p>
                                    <p></p>
                                    <div class='buttons_added'>
                                        <input class='minus is-form' type='button' value='-'>
                                        <input aria-label='quantity' class='input-qty' max='". $book->get_soluong() ."' min='1' name='' type='number' value='1'>
                                        <input class='plus is-form' type='button' value='+'>
                                    </div>
                                    <p>Số lượng còn lại: ". $book->get_soluong() ."</p>
                                    <p></p>
                                </div>
                                <div class='wrap-addcart clearfix'>
                                    <div class='row-flex'>
                                        <div class='col-xs-6 col-md-6'>
                                            <button type='submit' class='button btn-addtocart addtocart-modal' name='GiohangController' value='themvaogiohang'>Add to cart</button>
                                        </div>
                                        <div class='col-xs-6 col-md-6'>
                                            <button type='submit' class='buy-now button' style='display: block;' name='GiohangController' value='muangay'>Buy now</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </form>
                        <div class='product-description'>
                            <div class='title'>
                                <h2>Mô tả sản phẩm</h2>
                            </div>
                            <div class='description-content'>
                                <div class='description-productdetail'>
                                    <p><span>" . $motasach . "</span><br></p>
                                    <ul>
                                        <li>Nhà xuất bản: " . $tennxb . "</li>
                                        <li>Tác giả: " . $tentacgia . "</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                ";
        }
    }
    ?>
</body>

</html>