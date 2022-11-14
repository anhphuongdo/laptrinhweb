<html>

<body>
    <?php
    echo "
    <div class='col-md-4 col-sm-12 col-xs-12 image' id='mainimage'>
        <img title='".$book->get_ten_sach()."' alt='".$book->get_ten_sach()."' src='".$book->get_hinhanh()."' class='center' width=420px height=600px>
    </div>

    <div class='col-md-6 col-sm-12 col-xs-12 product-content' id='detailproduct'>
        <div class='product-content-1'>
            <div class='product-title'>
                <h1>'".$book->get_ten_sach()."'</h1>
                <span id='ID'>ID: KTHVM</span>
            </div>
            <div class='product-price' id='price-priview'><span class='pro-price'>'".$book->get_giatien()."'</span></div>
            <form id='add-item-form' action='/card/add' method='post' class='variants clearfix'>
                <div class='select-actions'>
                    <div class='center1>
                        <p></p>
                        <p></p>
                        <div class='buttons_added'>
                            <input class='minus is-form' type='button' value='-'>
                            <input aria-label='quantity' class='input-qty' max='".$book->get_soluong()."' min='1' name='' type='number' value='1'>
                            <input class='plus is-form' type='button' value='+'>
                        </div>
                        <p></p>
                    </div>
                    <div class='wrap-addcart clearfix'>
                        <div class='row-flex'>
                            <div class='col-xs-6 col-md-6'>
                                <button type='button' class='button btn-addtocart addtocart-modal'>Add to cart</button>
                            </div>
                            <div class='col-xs-6 col-md-6'>
                                <button type='button' class='buy-now button' style='display: block;'>Buy now</button>
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
                        <p><span>'".$book->get_mota()."'</span><br></p>
                        <ul>
                            <li>Nhà xuất bản: '".$book->get_ten_sach()."'</li>
                            <li>Tác giả: '".$book->get_ten_sach()."'</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    ";
    ?>
</body>

</html>