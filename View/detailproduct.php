<html>

<head>
    <title>Thông tin chi tiết</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="../style/wqlnsstyle.css">
    <script src="../script/java.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
    <link href="https://fonts.googleapis.com/css?family=Dancing+Script|Itim|Lobster|Montserrat:500|Noto+Serif|Nunito|Patrick+Hand|Roboto+Mono:100,100i,300,300i,400,400i,500,500i,700,700i|Roboto+Slab|Saira" rel="stylesheet">
</head>

<body>
    <div class="container-fluid">
        <div class="menu default_font" id="action-menu">
            <nav class="navbar navbar-expand navbar-light fixed-top">
                <a class="navbar-brand" href="index.php"><img alt="The A.N.H Bookshop's Logo" src="../image/logo.png" width="115" /></a>
                <span style="color: rgb(4, 4, 4); font-weight:bold">The A.N.H Bookshop</span>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item active"><a class="nav-link" href="index.php">TRANG CHỦ</a></li>
                        <li class="nav-item active dropdown"><a class="nav-link drop-btn" href="booktypelist.php?tl=TL001">SÁCH KINH TẾ</a></li>
                        <li class="nav-item active dropdown"><a class="nav-link drop-btn" href="#">SÁCH HỌC NGOẠI NGỮ</a>
                            <div class="dropdown-menu">
                                <a href="booktypelist.php?tl=TL004">ANH</a>
                                <a href="booktypelist.php?tl=TL005">HÀN</a>
                                <a href="booktypelist.php?tl=TL006">NHẬT</a>
                            </div>
                        </li>
                        <li class="nav-item active dropdown"><a class="nav-link drop-btn" href="#"> SÁCH VĂN HỌC</a>
                            <div class="dropdown-menu">
                                <a href="booktypelist.php?tl=TL002"> VIỆT NAM</a>
                                <a href="booktypelist.php?tl=TL003"> NƯỚC NGOÀI</a>
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
            <form class="d-flex justify-content-center" method="get" action="booklist.php">
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
                        if (isset($_GET['pro_id'])) {
                            require_once($_SERVER['DOCUMENT_ROOT'] . "/LaptrinhWeb/Controller/ChitietsachController.php");
                            $controller = new ChitietsachController();
                            $controller->invoke($_GET['pro_id']);
                        }
                        ?>
                        <div class="col-md-1 col-sm-12 col-xs-12" id="blank2"></div>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col heading">
                <h2> Sách có liên quan </h2>
            </div>
        </div>
        <div class="row product-list">
            <?php
                if(isset($_GET['pro_id'])){
                    require_once($_SERVER['DOCUMENT_ROOT']."/LaptrinhWeb/Controller/ChitietsachController.php");
                    $controller = new ChitietsachController();
                    $controller -> tl_limit_invoke($_GET['pro_id']);
                }
            ?>
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
    <script>
        $('input.input-qty').each(function() {
            var $this = $(this),
                qty = $this.parent().find('.is-form'),
                min = Number($this.attr('min')),
                max = Number($this.attr('max'))
            if (min == 0) {
                var d = 0
            } else d = min
            $(qty).on('click', function() {
                if ($(this).hasClass('minus')) {
                    if (d > min) d += -1
                } else if ($(this).hasClass('plus')) {
                    var x = Number($this.val()) + 1
                    if (x <= max) d += 1
                }
                $this.attr('value', d).val(d)
            })
        })
    </script>
</body>

</html>