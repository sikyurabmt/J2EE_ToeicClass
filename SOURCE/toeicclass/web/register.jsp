<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Đăng ký - TOEIC CLASS</title>
        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js" type="text/javascript"></script>
        <script type="text/javascript">
            $(document).ready(function () {
                var x_timer;
                $("#username").keyup(function (e) {
                    clearTimeout(x_timer);
                    var user_name = $(this).val();
                    x_timer = setTimeout(function () {
                        check_username_ajax(user_name);
                    }, 1000);
                });

                function check_username_ajax(username) {
                    $("#user-result").html('<img src="img/ajax-loader.gif" />');
                    $.post('CheckExistUsernameServlet', {'username': username}, function (data) {
                        $("#user-result").html(data);
                    });
                }
            });

            function validateInfo() {
                var username = document.getElementById("username").value;
                var password = document.getElementById("password").value;
                var password2 = document.getElementById("password2").value;
                var email = document.getElementById("email").value;
                if (username.length === 0) {
                    alert("Chưa nhập tên đăng nhập");
                    return false;
                }
                if (password.length === 0) {
                    alert("Chưa nhập mật khẩu");
                    return false;
                }
                if (password2.length === 0) {
                    alert("Chưa nhập trường nhập lại mật khẩu");
                    return false;
                }
                if (email.length === 0) {
                    alert("Chưa nhập địa chỉ email");
                    return false;
                }
                if (password2 !== password) {
                    alert("Nhập lại mật khẩu chưa đúng");
                    return false;
                }
                if (username.length < 5) {
                    alert("Tên đăng nhập phải >= 5 kí tự");
                    return false;
                }
                if (password.length < 6) {
                    alert("Mật khẩu phải >= 6 kí tự");
                    return false;
                }
                return true;
            }
        </script>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
            <div class="container">
                <div class="account" style="margin-left: 25%">
                    <h3 class="account-in" style="margin-left: 130px">THÔNG TIN ĐĂNG KÝ</h3>
                    <form action="AccountServlet" method="POST">
                        <div>
                            <span class="word">Tên tài khoản *</span>
                            <br/>
                            <input type="text" name="username" id="username"/>
                            <span id="user-result"></span>
                        </div>
                        <div> 
                            <span class="word">Mật khẩu *</span>
                            <br/>
                            <input type="password" name="password" id="password"/>
                        </div>
                        <div> 
                            <span class="word">Nhập lại mật khẩu *</span>
                            <br/>
                            <input type="password" name="password" id="password2"/>
                        </div>
                        <div>
                            <span class="word">Họ tên </span>
                            <br/>
                            <input type="text" name="acc_name" id="acc_name"/>
                        </div>
                        <div>
                            <span class="word">Địa chỉ </span>
                            <br/>
                            <input type="text" name="address" id="address"/>
                        </div>
                        <div>
                            <span class="word">Email *</span>
                            <br/>
                            <input type="text" name="email" id="email"/>
                        </div>
                        <div>
                            <span class="word">Số điện thoại </span>
                            <br/>
                            <input type="text" name="phonenumber" id="phonenumber"/>
                        </div>
                        <input type="hidden" value="insert" name="command"/>
                        <input type="submit" value="Đăng ký" style="margin-left: 22%"  onClick="return validateInfo()"/>
                    </form>
                </div>
            </div>
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>