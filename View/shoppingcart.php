<html>

<head>
  <title>Giỏ hàng</title>
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
              <a href="#" title="">
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
    <div class="shoppingcart">
      <div class="card">
        <div class="card-header">
          <h2>Giỏ hàng</h2>
        </div>
        <div class="card-body">
          <div class="table-responsive">
            <table class="table table-bordered m-0">
              <thead>
                <tr>
                  <th class="text-center py-3 px-4" style="min-width: 400px;"> Sản phẩm</th>
                  <th class="text-center py-3 px-4" style="width: 100px;">Giá</th>
                  <th class="text-center py-3 px-4" style="width: 120px;">Số Lượng </th>
                  <th class="text-center py-3 px-4" style="width: 100px;">Tổng</th>
                  <th class="text-center align-middle py-3 px-0" style="width: 40px;"><a href="#" class="shop-tooltip float-none text-light" title="" data-original-title="Clear cart"><i class="ino ion-md-trash"></i></a></th>
                </tr>
              </thead>
              <tbody>

                <tr>
                  <td class="p-4">
                    <div class="media align-items-center">
                      <img src="image/vimo.jpg" class="d-block ui-w-40 ui-bordered mr-4" alt="">
                      <div class="media-body">
                        <a href="#" class="d-block text-dark">Tên sản phẩm</a>
                        <small>
                          <span class="text-muted">Chi tiết sản phẩm: </span> Nội dung &nbsp;
                        </small>
                      </div>
                    </div>
                  </td>
                  <td class="text-right font-weight-semibold align-middle p-4">200,000 VNĐ</td>
                  <td class="align-middle p-4"><input type="text" class="form-control text-center" value="2"></td>
                  <td class="text-right font-weight-semibold align-middle p-4">400,000 VNĐ</td>
                  <td class="text-center align-middle px-0"><a href="#" class="shop-tooltip close float-none text-danger" title="" data-original-title="Remove">×</a></td>
                </tr>

                <tr>
                  <td class="p-4">
                    <div class="media align-items-center">
                      <img src="image/vimo.jpg" class="d-block ui-w-40 ui-bordered mr-4" alt="">
                      <div class="media-body">
                        <a href="#" class="d-block text-dark">Tên sản phẩm</a>
                        <small>
                          <span class="text-muted">Chi tiết sản phẩm: </span> Nội dung &nbsp;
                        </small>
                      </div>
                    </div>
                  </td>
                  <td class="text-right font-weight-semibold align-middle p-4">150,000 VNĐ</td>
                  <td class="align-middle p-4"><input type="text" class="form-control text-center" value="1"></td>
                  <td class="text-right font-weight-semibold align-middle p-4">150,000 VNĐ</td>
                  <td class="text-center align-middle px-0"><a href="#" class="shop-tooltip close float-none text-danger" title="" data-original-title="Remove">×</a></td>
                </tr>

                <tr>
                  <td class="p-4">
                    <div class="media align-items-center">
                      <img src="image/vimo.jpg" class="d-block ui-w-40 ui-bordered mr-4" alt="">
                      <div class="media-body">
                        <a href="#" class="d-block text-dark">Tên sản phẩm</a>
                        <small>
                          <span class="text-muted">Chi tiết sản phẩm: </span> Nội dung &nbsp;
                        </small>
                      </div>
                    </div>
                  </td>
                  <td class="text-right font-weight-semibold align-middle p-4">240,000 VNĐ</td>
                  <td class="align-middle p-4"><input type="text" class="form-control text-center" value="1"></td>
                  <td class="text-right font-weight-semibold align-middle p-4">240,000 VNĐ</td>
                  <td class="text-center align-middle px-0"><a href="#" class="shop-tooltip close float-none text-danger" title="" data-original-title="Remove">×</a></td>
                </tr>

              </tbody>
            </table>
          </div>
          <!-- / Shopping cart table -->

          <div class="d-flex flex-wrap justify-content-between align-items-center pb-4">
            <div class="d-flex">
              <div class="text-right mt-4">
                <label class="text-muted font-weight-normal m-0">Tổng thanh toán</label>
                <div class="text-large"><strong>740,000 VNĐ</strong></div>
              </div>
            </div>
          </div>

          <div class="button" id="buttons">
            <a href="index.php" class="btn blue">Quay về trang chủ</a>
            <a href="#" class="btn green">Xác nhận</a>
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

</body>

</html>