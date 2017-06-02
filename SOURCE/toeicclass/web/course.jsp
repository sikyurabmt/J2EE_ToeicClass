<%@page import="BEAN.Account"%>
<%@page import="DAO.CourseDAO"%>
<%@page import="BEAN.Course"%>
<%@page import="DAO.RegCourseDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>THÔNG TIN KHOÁ HỌC</title>
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
            CourseDAO courseDAO = new CourseDAO();
            RegCourseDAO rcDAO = new RegCourseDAO();
            Course course = new Course();
            String courseId = "";
            if (request.getParameter("courseId") != null) {
                courseId = request.getParameter("courseId");
                course = courseDAO.getCourseById(Integer.parseInt(courseId));
            }
            Account acc = null;
            if (session.getAttribute("account") != null) {
                acc = (Account) session.getAttribute("account");
            }

        %>

        <jsp:include page="header.jsp"></jsp:include>

            <div class="container">
                <div class="row" style="margin-top: 30px">
                    <div class="col-md-10 single-top-in single-para">    
                        <center><h1><%=course.getName()%></h1></center>
                    </div>

                <%
                    if (acc != null) {
                        if (!rcDAO.checkRegister(acc.getId(), course.getId())) {
                %>
                <div class="col-md-2 single-top-in">
                    <a href="/toeicclass/RegCourseServlet?command=insert&idaccount=<%=acc.getId()%>&idcourse=<%=course.getId()%>" class="hvr-shutter-in-vertical cart-to" onclick = "if (! confirm('Bạn có muốn đăng ký khoá học này không?')) { return false; }">Đăng ký học</a>
                </div>
                <%
                        }
                    }
                %>
            </div>
            <div class="row" style="margin-top: 50px">
                <p><%=course.getContent()%></p>
            </div>
        </div>
    </div>

    <jsp:include page="footer.jsp"></jsp:include>

</body>
</html>
