<%-- 
    Document   : mycourse
    Created on : Jun 1, 2017, 3:52:05 PM
    Author     : VegetaPC
--%>

<%@page import="BEAN.Account"%>
<%@page import="BEAN.Course"%>
<%@page import="DAO.RegCourseDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>KHOÁ HỌC CỦA TÔI</title>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="js/jquery.min.js"></script>
        <!-- Custom Theme files -->
        <!--theme-style-->
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />	
        <!--//theme-style-->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Bonfire Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
              Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <!--fonts-->
        <link href='http://fonts.googleapis.com/css?family=Exo:100,200,300,400,500,600,700,800,900' rel='stylesheet' type='text/css'>
        <!--//fonts-->
        <script type="text/javascript" src="js/move-top.js"></script>
        <script type="text/javascript" src="js/easing.js"></script>
        <script type="text/javascript">
            jQuery(document).ready(function ($) {
                $(".scroll").click(function (event) {
                    event.preventDefault();
                    $('html,body').animate({scrollTop: $(this.hash).offset().top}, 1000);
                });
            });
        </script>
        <!--slider-script-->
        <script src="js/responsiveslides.min.js"></script>
        <script>
            $(function () {
                $("#slider1").responsiveSlides({
                    auto: true,
                    speed: 500,
                    namespace: "callbacks",
                    pager: true,
                });
            });
        </script>
        <!--//slider-script-->
        <script>$(document).ready(function (c) {
                $('.alert-close').on('click', function (c) {
                    $('.message').fadeOut('slow', function (c) {
                        $('.message').remove();
                    });
                });
            });
        </script>
        <script>$(document).ready(function (c) {
                $('.alert-close1').on('click', function (c) {
                    $('.message1').fadeOut('slow', function (c) {
                        $('.message1').remove();
                    });
                });
            });
        </script>
    </head>
    <body>

        <%
            RegCourseDAO rcDAO = new RegCourseDAO();
            Account acc = null;
            if (session.getAttribute("account") != null) {
                acc = (Account) session.getAttribute("account");
            }
        %>

        <jsp:include page="header.jsp"></jsp:include>

            <div class="container">
                <div class="content">
                    <div class="content-top" style="margin-top: 20px">
                        <center><h3 style="opacity: 0.75">DANH SÁCH KHOÁ HỌC ĐÃ ĐĂNG KÝ</h3></center>
                        <div class="content-top-in">

                        <% 
                            for (Course c : rcDAO.getAllCourseByIdAccount(acc.getId())) {
                        %>
                        <div class="col-md-3 md-col" style="margin-bottom: 10px">
                            <div class="col-md">
                                <a href="#"><img src="<%=c.getImage()%>" height="240"/></a>	
                                <div class="top-content">
                                    <h5><a href="#"><%=c.getName()%></a></h5>
                                    <div class="white">
                                        <a href="course.jsp?courseId=<%=c.getId()%>" class="hvr-shutter-in-vertical hvr-shutter-in-vertical2" style="margin-right: 50px;">Xem chi tiết</a>
                                        <a href="course.jsp?courseId=<%=c.getId()%>" class="hvr-shutter-in-vertical hvr-shutter-in-vertical">Mua ngay</a>
                                        <div class="clearfix"></div>
                                    </div>
                                </div>							
                            </div>
                        </div>
                        <%
                            }
                        %>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
        </div>

        <jsp:include page="footer.jsp"></jsp:include>

    </body>
</html>