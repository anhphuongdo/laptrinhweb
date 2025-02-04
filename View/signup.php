<!DOCTYPE html>

<head>
    <title>Sign in</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="../style/wqlnsstyle.css">
    <script src= "../script/java.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
    <link href="https://fonts.googleapis.com/css?family=Dancing+Script|Itim|Lobster|Montserrat:500|Noto+Serif|Nunito|Patrick+Hand|Roboto+Mono:100,100i,300,300i,400,400i,500,500i,700,700i|Roboto+Slab|Saira" rel="stylesheet">
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <link rel="stylesheet" href="plugins/uikit/uikit.min.css" />
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
                        <li class="nav-item active dropdown"><a class="nav-link drop-btn" href="booklist.php?tl=TL001">SÁCH KINH TẾ</a></li>
                        <li class="nav-item active dropdown"><a class="nav-link drop-btn" href="#">SÁCH HỌC NGOẠI NGỮ</a>
                            <div class="dropdown-menu">
                                <a href="booklist.php?tl=TL004">ANH</a>
                                <a href="booklist.php?tl=TL005">HÀN</a>
                                <a href="booklist.php?tl=TL006">NHẬT</a>
                            </div>
                        </li>
                        <li class="nav-item active dropdown"><a class="nav-link drop-btn" href="#"> SÁCH VĂN HỌC</a>
                            <div class="dropdown-menu">
                                <a href="booklist.php?tl=TL002"> VIỆT NAM</a>
                                <a href="booklist.php?tl=TL003"> NƯỚC NGOÀI</a>
                            </div>
                        </li>
                    </ul>
                </div>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item active">
                            <a href="shoppingcart.php" title="">
                                <span class="material-symbols-outlined" style="color:black"></span>
                            </a>
                        </li>
                        <li class="nav-item active">
                            <a href="#" title="">
                                <span class="material-symbols-outlined" style="color:black"></span>
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
        <?php
            include_once($_SERVER['DOCUMENT_ROOT']."/LaptrinhWeb/Controller/DangkyController.php");
            if(isset($_POST['submit1']))
            {
                $ten_kh = $_POST['ten_kh'];
                $email = $_POST['email'];
                $matkhau = $_POST['matkhau'];
                $sdt = $_POST['sdt'];
                $diachi = $_POST['diachi'];
                $_SESSION['ten_kh'] = $ten_kh;
                $_SESSION['email'] = $email;
                $_SESSION['matkhau'] = $matkhau;
                $_SESSION['sdt'] = $sdt;
                $_SESSION['diachi'] = $diachi;
                signup_ctl($ten_kh, $matkhau, $sdt, $diachi, $email);
            }
        ?>
        <div class="content">
            <div class="row signup">
                <div class="col-md-6 col-xs-12 col-sm-12 signin-left">
                    <div class="logobrand">
                        <img alt="The A.N.H Bookshop's Logo" src="../image/logo.png" width="225" />
                    </div>
                    <div class="sign-title">
                        <h1>Tạo tài khoản</h1>
                    </div>
                </div>
                <div class="col-md-6 col-xs-12 col-sm-12 signin-right">
                    <form action="../View/signup.php" method="post">
                        <div class="name form-control1 ">
                            <input type="text" id="ten_kh" placeholder="Họ và tên" name="ten_kh">
                        </div>
                        <div class="email form-control1">
                            <input type="email" id="email" placeholder="Email" name="email" value="<?php echo isset($_GET['email'])?$_GET['email']:"";?>"/>
                        </div>
                        <div class="password form-control1">
                            <input type="password" id="matkhau" placeholder="Password" name="matkhau">
                        </div>
                        <div class="phonen-number form-control1">
                            <input type="text" id="sdt" placeholder="Số điện thoại" name="sdt">
                        </div>
                        <div class="address form-control1">
                            <input type="text" id="diachi" placeholder="Địa chỉ" name="diachi">
                        </div>
                        <div class="recaptcha form-control1">This site is protected by reCAPTCHA and the Google <a href="">Privacy Policy</a> and <a href="">Terms of Service</a> apply.</div>
                        <input type="submit" class="submit" value="Đăng ký" name="submit1">
                        </input>
                        <div class="backto">
                            <a href="../LaptrinhWeb/View/index.php"><i class="fa fa-long-arrow-alt-left"></i> Quay lại trang chủ</a>
                        </div>
                    </form>
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
        <script async defer crossorigin="anonymous" src="plugins/sdk.js"></script>
        <script src="plugins/jquery-3.4.1/jquery-3.4.1.min.js"></script>
        <script src="plugins/bootstrap/popper.min.js"></script>
        <script src="plugins/bootstrap/bootstrap.min.js"></script>
        <script src="plugins/owl.carousel/owl.carousel.min.js"></script>
        <script src="java/script.js"></script>
        <script src="plugins/uikit/uikit.min.js"></script>
        <script src="plugins/uikit/uikit-icons.min.js"></script>
</body>

</html>