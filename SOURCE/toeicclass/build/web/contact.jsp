<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LIÊN HỆ</title>
    </head>
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
            var contact_name = document.getElementById("contact_name").value;
            var email = document.getElementById("email").value;
            var subject = document.getElementById("subject").value;
            var message = document.getElementById("message").value;
            if (contact_name.length === 0 || email.length === 0 || subject.length === 0 || message.length === 0) {
                alert("Chưa nhập đầy đủ tất cả các trường");
                return false;
            }
            return true;
        }
    </script>
    <body>
        <jsp:include page="header.jsp"></jsp:include>

            <div class="container">
                <div class="contact">
                    <center><h2 style="opacity: 0.75; margin-bottom: 30px">LIÊN HỆ</h2></center>

                    <div class="col-md-6 contact-top">
                        <h3>THÔNG TIN</h3>
                        <div class="map">
                            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.2285080099773!2d106.80154771463751!3d10.87021696042831!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xafa66f9c8be3c91!2zVHLGsOG7nW5nIMSQ4bqhaSBo4buNYyBDw7RuZyBuZ2jhu4cgVGjDtG5nIHRpbiDEkEhRRy1IQ00!5e0!3m2!1svi!2s!4v1496309616109" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>                        </div>

                        <ul class="social ">
                            <li><span><i > </i>KP6,P. Linh Trung, Q. Thủ Đức, TP. Hồ Chí Minh</span></li>
                            <li><span><i class="down"> </i>+ 84 164 945 6397</span></li>
                            <li><a href="mailto:emhocit95@gmail.com"><i class="mes"> </i>emhocit95@gmail.com</a></li>
                            <li><a href="http://itzeno.com/"><i class="social"> </i>itzeno.com</a></li>
                        </ul>
                    </div>
                    <div class="col-md-6 contact-top">
                        <h3>TƯ VẤN, ĐẶT CÂU HỎI?</h3>
                        <form action="ContactServlet" method="POST">
                            <div>
                                <span>Họ tên </span>		
                                <input type="text" name="contact_name" id="contact_name">						
                            </div>
                            <div>
                                <span>Email </span>		
                                <input type="text" name="email" id="email">						
                            </div>
                            <div>
                                <span>Chủ đề </span>		
                                <input type="text" name="subject" id="subject">	
                            </div>
                            <div>
                                <span>Lời nhắn </span>		
                                <textarea name="message" id="message"> </textarea>	
                            </div>
                            <input type="hidden" value="insert" name="command"/>
                            <input type="submit" value="GỬI" style="margin-left: 22%"  onClick="return validateInfo()"/>
                        </form>
                    </div>
                    <div class="clearfix"> </div>
                </div>
            </div>

        <jsp:include page="footer.jsp"></jsp:include>

    </body>
</html>
