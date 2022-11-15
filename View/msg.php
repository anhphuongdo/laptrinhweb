<?php
    if(isset($_GET['msg']))
    {
        if($_GET['msg'] == "done")
        {
            echo "<form> class='msg' style='background-color:green; color:white;'>
                    Bạn đã đăng kí thành công tài khoản!
                  </form>";
        }
        else if($_GET['msg']=="unvalid-data")
        {
            echo "<form> class='msg' style='background-color:red; color:white;'
                    Vui lòng kiểm tra lại dữ liệu nhập vào!
                  </form";
        }
        else if($_GET['msg']=="duplicate")
        {
            echo "<form> class='msg' style='background-color:red; color:white;'
                    Vui lòng kiểm tra lại dữ liệu nhập vào!
                  </form>";
        }
        else if($_GET['msg']=="login-fail")
        {
            echo "<form> class='msg' style='background-color:red; color:white;'
                    Vui lòng kiểm tra lại dữ liệu nhập vào!
                  </form>";
        }
    }
?>
<style>
  body{font-family: Tahoma, Geneva, sans-serif; font-size:13px;}
  .msg{
    width:450px;
    margin:0px auto;
    padding:5px;
    text-align:center;
  }
  form{width:300px; margin:0px auto;}
  .cls_caption{width:150px; float:left; font-weight:bold; text-aglin:left !important;}
  .cls_input{width:150px; float:left;}
  .img_row{text-align:center; padding:5px 0px;}
  .frm_row{margin-top: 5px;}
  #menu{margin-bottom:100px; tent-align:right}
</style>