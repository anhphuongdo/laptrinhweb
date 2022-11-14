<html>
    <body>
        <?php
        foreach($books as $book){
            echo "<div class='content' id='content1'>
                      <p class='name-item' id='name-item1'>".$book->get_ten_sach()."</p>
                      <p class='price-item' id='price-item1'>".$book->get_giatien()."</p>
                  </div>";
            echo "<div class='col-sm-6 col-md-6 col-lg-3 products-list'>
                    <div class='card card1' id='item-2' href='detailproduct.php'>
                        <div class='pro-imgg'>
                            <div class='image-item' id='image-item2'>
                                <a href='#'><img class='pro-imggg' src='".$book->get_hinhanh()."'></a>
                            </div>
                        </div>
                    </div>
                </div>";
        }
        ?>
    </body>
</html>