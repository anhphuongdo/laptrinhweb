<?php
    if(isset($_GET['msg']))
    {
        if($_GET['msg'] == "done")
        {
            echo "<div> class='msg' style='background-color:green; color:white;'>
                    Bạn đã đăng kí thành công tài khoản!
                  </div>";
        }
        else if($_GET['msg']=="unvalid-data")
        {
            echo "<div> class='msg' style='background-color:red; color:white;'
                    Vui lòng kiểm tra lại dữ liệu nhập vào!
                  </div>";
        }
        else if($_GET['msg']=="duplicate")
        {
            echo "<div> class='msg' style='background-color:red; color:white;'
                    Vui lòng kiểm tra lại dữ liệu nhập vào!
                  </div>";
        }
        else if($_GET['msg']=="login-fail")
        {
            echo "<div> class='msg' style='background-color:red; color:white;'
                    Vui lòng kiểm tra lại dữ liệu nhập vào!
                  </div>";
        }
    }
?>