<html>

<head>
    <title>Thông tin chi tiết</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="../style/wqlnsstyle.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
    <link href="https://fonts.googleapis.com/css?family=Dancing+Script|Itim|Lobster|Montserrat:500|Noto+Serif|Nunito|Patrick+Hand|Roboto+Mono:100,100i,300,300i,400,400i,500,500i,700,700i|Roboto+Slab|Saira" rel="stylesheet">
    <script src="../java.js"></script>
</head>

<body>
    <div class="container-fluid">
        <div class="menu default_font" id="action-menu">
            <nav class="navbar navbar-expand navbar-light fixed-top">
                <a class="navbar-brand" href="index.php"><img alt="The A.N.H Bookshop's Logo" src="../image/logo.png" width="115" /></a>
                <span style="color: rgb(4, 4, 4); font-weight:bold">The A.N.H Bookshop</span>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item active"><a class="nav-link" href="../index.php">TRANG CHỦ</a></li>
                        <li class="nav-item active dropdown"><a class="nav-link drop-btn" href="./booklist.php?tl=TL001">SÁCH KINH TẾ</a></li>
                        <li class="nav-item active dropdown"><a class="nav-link drop-btn" href="#">SÁCH HỌC NGOẠI NGỮ</a>
                            <div class="dropdown-menu">
                                <a href="./booklist.php?tl=TL004">ANH</a>
                                <a href="./booklist.php?tl=TL005">HÀN</a>
                                <a href="./booklist.php?tl=TL006">NHẬT</a>
                            </div>
                        </li>
                        <li class="nav-item active dropdown"><a class="nav-link drop-btn" href="#"> SÁCH VĂN HỌC</a>
                            <div class="dropdown-menu">
                                <a href="./booklist.php?tl=TL002"> VIỆT NAM</a>
                                <a href="./booklist.php?tl=TL003"> NƯỚC NGOÀI</a>
                            </div>
                        </li>
                    </ul>
                </div>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item active">
                            <a href="signin.php" title="Tài khoản">
                                <span class="material-symbols-outlined" style="color:black">person</span>
                            </a>
                        </li>
                        <li class="nav-item active">
                            <a href="shoppingcart.php" title="Giỏ hàng">
                                <span class="material-symbols-outlined" style="color:black">shopping_cart</span>
                            </a>
                        </li>
                        <li class="nav-item active">
                            <a href="#" title="Tìm kiếm" onClick="showsearchbar()">
                                <span class="material-symbols-outlined" style="color:black">search</span>
                            </a>
                        </li>
                    </ul>
                </div>
            </nav>
        </div>
        <div class="searchbar" id="search-bar">
            <button id="close-bar" onClick="hidesearchbar()">
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-x-lg" viewBox="0 0 16 16">
                    <path fill-rule="evenodd" d="M13.854 2.146a.5.5 0 0 1 0 .708l-11 11a.5.5 0 0 1-.708-.708l11-11a.5.5 0 0 1 .708 0Z" />
                    <path fill-rule="evenodd" d="M2.146 2.146a.5.5 0 0 0 0 .708l11 11a.5.5 0 0 0 .708-.708l-11-11a.5.5 0 0 0-.708 0Z" />
                </svg>
            </button>
            <form class="d-flex justify-content-center" method="get" action="./View/booklist.php">
                <input type="search" name="key" class="search-box" id="searchbar" placeholder="Tìm kiếm">
                <button type="submit" class="search-btn"><i class="fa fa-search"></i></button>
            </form>
        </div>

        <div id="product" class="productdetailsection">
            <div class="row product-detail-wrapper">
                <div class="cod-md-12 col-sm-12 col-xs-12 ">
                    <div class="row product-detail-main">
                        <div class="col-md-1 col-sm-12 col-xs-12" id="blank2"></div>
                        <?php
                        ?>
                        <div class="col-md-1 col-sm-12 col-xs-12" id="blank2"></div>
                        <?php
                        ?>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col heading">
                <h2> Sách tham khảo </h2>
            </div>
        </div>
        <div class="row product-list">
            <div class='col-lg-3 col-md-6 col-6 products'>
                <div class='pro-img'>
                    <div class="suggestedimage" id="suggestedimage1">
                        <a href="#">
                            <img class='pro-img ' src="../image/vimo.jpg">
                        </a>
                    </div>
                    <div class='pro-btn d-flex'>
                        <a href="#" class='hidden-btn'><svg width='16' height='16' fill='currentColor' class='bi bi-eye' viewBox='0 0 16 16'>
                                <path d='M16 8s-3-5.5-8-5.5S0 8 0 8s3 5.5 8 5.5S16 8 16 8zM1.173 8a13.133 13.133 0 0 1 1.66-2.043C4.12 4.668 5.88 3.5 8 3.5c2.12 0 3.879 1.168 5.168 2.457A13.133 13.133 0 0 1 14.828 8c-.058.087-.122.183-.195.288-.335.48-.83 1.12-1.465 1.755C11.879 11.332 10.119 12.5 8 12.5c-2.12 0-3.879-1.168-5.168-2.457A13.134 13.134 0 0 1 1.172 8z' />
                                <path d='M8 5.5a2.5 2.5 0 1 0 0 5 2.5 2.5 0 0 0 0-5zM4.5 8a3.5 3.5 0 1 1 7 0 3.5 3.5 0 0 1-7 0z' />
                            </svg></a>
                    </div>
                </div>
                <div class='pro-detail'>
                    <h3 class='pro-name'><a href="#">Abc</a></h3>
                    <div class='pro-price'>
                        <p class='pro-price sale'>1,050,000đ
                            <span class='pro-price-retail'><del>1,500,000₫</del></span>
                        </p>
                    </div>
                </div>
            </div>
            <div class='col-lg-3 col-md-6 col-6 products'>
                <div class='pro-img'>
                    <div class="suggestedimage" id="suggestedimage1">
                        <a href="#">
                            <img class='pro-img ' src="../image/vimo.jpg">

                        </a>
                    </div>
                    <div class='pro-btn d-flex'>
                        <a href="#" class='hidden-btn'><svg width='16' height='16' fill='currentColor' class='bi bi-eye' viewBox='0 0 16 16'>
                                <path d='M16 8s-3-5.5-8-5.5S0 8 0 8s3 5.5 8 5.5S16 8 16 8zM1.173 8a13.133 13.133 0 0 1 1.66-2.043C4.12 4.668 5.88 3.5 8 3.5c2.12 0 3.879 1.168 5.168 2.457A13.133 13.133 0 0 1 14.828 8c-.058.087-.122.183-.195.288-.335.48-.83 1.12-1.465 1.755C11.879 11.332 10.119 12.5 8 12.5c-2.12 0-3.879-1.168-5.168-2.457A13.134 13.134 0 0 1 1.172 8z' />
                                <path d='M8 5.5a2.5 2.5 0 1 0 0 5 2.5 2.5 0 0 0 0-5zM4.5 8a3.5 3.5 0 1 1 7 0 3.5 3.5 0 0 1-7 0z' />
                            </svg></a>
                    </div>
                </div>
                <div class='pro-detail'>
                    <h3 class='pro-name'><a href="#">Abc</a></h3>
                    <div class='pro-price'>
                        <p class='pro-price sale'>1,050,000đ
                            <span class='pro-price-retail'><del>1,500,000₫</del></span>
                        </p>
                    </div>
                </div>
            </div>
            <div class='col-lg-3 col-md-6 col-6 products'>
                <div class='pro-img'>
                    <div class="suggestedimage" id="suggestedimage1">
                        <a href="#">
                            <img class='pro-img ' src="../image/vimo.jpg">

                        </a>
                    </div>
                    <div class='pro-btn d-flex'>
                        <a href="#" class='hidden-btn'><svg width='16' height='16' fill='currentColor' class='bi bi-eye' viewBox='0 0 16 16'>
                                <path d='M16 8s-3-5.5-8-5.5S0 8 0 8s3 5.5 8 5.5S16 8 16 8zM1.173 8a13.133 13.133 0 0 1 1.66-2.043C4.12 4.668 5.88 3.5 8 3.5c2.12 0 3.879 1.168 5.168 2.457A13.133 13.133 0 0 1 14.828 8c-.058.087-.122.183-.195.288-.335.48-.83 1.12-1.465 1.755C11.879 11.332 10.119 12.5 8 12.5c-2.12 0-3.879-1.168-5.168-2.457A13.134 13.134 0 0 1 1.172 8z' />
                                <path d='M8 5.5a2.5 2.5 0 1 0 0 5 2.5 2.5 0 0 0 0-5zM4.5 8a3.5 3.5 0 1 1 7 0 3.5 3.5 0 0 1-7 0z' />
                            </svg></a>
                    </div>
                </div>
                <div class='pro-detail'>
                    <h3 class='pro-name'><a href="#">Abc</a></h3>
                    <div class='pro-price'>
                        <p class='pro-price sale'>1,050,000đ
                            <span class='pro-price-retail'><del>1,500,000₫</del></span>
                        </p>
                    </div>
                </div>
            </div>
            <div class='col-lg-3 col-md-6 col-6 products'>
                <div class='pro-img'>
                    <div class="suggestedimage" id="suggestedimage1">
                        <a href="#">
                            <img class='pro-img ' src="../image/vimo.jpg">

                        </a>
                    </div>
                    <div class='pro-btn d-flex'>
                        <a href="#" class='hidden-btn'><svg width='16' height='16' fill='currentColor' class='bi bi-eye' viewBox='0 0 16 16'>
                                <path d='M16 8s-3-5.5-8-5.5S0 8 0 8s3 5.5 8 5.5S16 8 16 8zM1.173 8a13.133 13.133 0 0 1 1.66-2.043C4.12 4.668 5.88 3.5 8 3.5c2.12 0 3.879 1.168 5.168 2.457A13.133 13.133 0 0 1 14.828 8c-.058.087-.122.183-.195.288-.335.48-.83 1.12-1.465 1.755C11.879 11.332 10.119 12.5 8 12.5c-2.12 0-3.879-1.168-5.168-2.457A13.134 13.134 0 0 1 1.172 8z' />
                                <path d='M8 5.5a2.5 2.5 0 1 0 0 5 2.5 2.5 0 0 0 0-5zM4.5 8a3.5 3.5 0 1 1 7 0 3.5 3.5 0 0 1-7 0z' />
                            </svg></a>
                    </div>
                </div>
                <div class='pro-detail'>
                    <h3 class='pro-name'><a href="#">Abc</a></h3>
                    <div class='pro-price'>
                        <p class='pro-price sale'>1,050,000đ
                            <span class='pro-price-retail'><del>1,500,000₫</del></span>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <div class="footer row text-center">
        <div class="col-md-4">
            <hr class="light" />
            <h5> Giới thiệu</h5>
            <hr class="light" />
            <p>Vài dòng giới thiệu</p>
        </div>
        <div class="col-md-4">
            <hr class="light" />
            <h5> Founder:</h5>
            <hr class="light" />
            <p>Đỗ Thị Phương Anh</p>
            <p>Nông Thảo Hiền</p>
            <p>Đặng Thị Kim Ngân</p>
        </div>
        <div class="col-md-4">
            <hr class="light" />
            <h5> Liên hệ</h5>
            <hr class="light" />
            <p>Phone-number</p>
            <p>Address</p>
            <p>Email</p>
        </div>
        <div class="col-12">
            <hr class="light-100">
            <p>Đây là sản phẩm mô phỏng phục vụ cho môn học của sinh viên</p>
            <h5>&copy; Đại học Kinh tế Thành phố Hồ Chí Minh, 2022</h5>
        </div>
    </div>
    </div>
    <script src="java.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js" integrity="sha384-W8fXfP3gkOKtndU4JGtKDvXbO53Wy8SZCQHczT5FMiiqmQfUpWbYdTil/SxwZgAN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.min.js" integrity="sha384-skAcpIdS7UcVUC05LJ9Dxay8AXcDYfBJqt1CJ85S/CFujBsIzCIv+l9liuYLaMQ/" crossorigin="anonymous"></script>
</body>

</html>