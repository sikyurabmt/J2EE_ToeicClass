<%-- 
    Document   : sidebar
    Created on : May 24, 2017, 4:01:25 PM
    Author     : VegetaPC
--%>

<%@page import="DAO.RegCourseDAO"%>
<%@page import="DAO.CourseDAO"%>
<%@page import="DAO.ContactDAO"%>
<%@page import="DAO.AccountDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <link rel="apple-touch-icon" sizes="76x76" href="${root}/admin/assets/img/apple-icon.png">
        <link rel="icon" type="image/png" sizes="96x96" href="${root}/admin/assets/img/favicon.png">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

        <title>Manager page</title>

        <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
        <meta name="viewport" content="width=device-width" />

        <c:set var="root" value="${pageContext.request.contextPath}"/>
        <!-- Bootstrap core CSS     -->
        <link href="${root}/admin/assets/css/bootstrap.min.css" rel="stylesheet" />

        <!-- Animation library for notifications   -->
        <link href="${root}/admin/assets/css/animate.min.css" rel="stylesheet"/>

        <!--  Paper Dashboard core CSS    -->
        <link href="${root}/admin/assets//css/paper-dashboard.css" rel="stylesheet"/>

        <!--  CSS for Demo Purpose, don't include it in your project     -->
        <link href="${root}/admin/assets/css/demo.css" rel="stylesheet" />

        <!--  Fonts and icons     -->
        <link href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">
        <link href='https://fonts.googleapis.com/css?family=Muli:400,300' rel='stylesheet' type='text/css'>
        <link href="${root}/admin/assets/css/themify-icons.css" rel="stylesheet">
    </head>

    <body>
        <%
            AccountDAO accountDAO = new AccountDAO();
            ContactDAO contactDAO = new ContactDAO();
            CourseDAO courseDAO = new CourseDAO();
            RegCourseDAO regCourseDAO = new RegCourseDAO();
        %>
        <div class="wrapper">
            <jsp:include page="sidebar.jsp"/>
            <div class="main-panel">
                <nav class="navbar navbar-default">
                    <div class="container-fluid">
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle">
                                <span class="sr-only">Toggle navigation</span>
                                <span class="icon-bar bar1"></span>
                                <span class="icon-bar bar2"></span>
                                <span class="icon-bar bar3"></span>
                            </button>
                            <a class="navbar-brand" href="#">THỐNG KÊ</a>
                        </div>
                </nav>

                <div class="content">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-lg-3 col-sm-6">
                                <div class="card">
                                    <div class="content">
                                        <div class="row">
                                            <div class="col-xs-5">
                                                <div class="icon-big icon-warning text-center">
                                                    <i class="ti-server"></i>
                                                </div>
                                            </div>
                                            <div class="col-xs-7">
                                                <div class="numbers">
                                                    <p>Số học viên</p>
                                                    <%=accountDAO.getNumberOfAccount()%>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="footer">
                                            <hr />
                                            <div class="stats">
                                                <i class="ti-reload"></i> Người dùng loại học viên
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-3 col-sm-6">
                                <div class="card">
                                    <div class="content">
                                        <div class="row">
                                            <div class="col-xs-5">
                                                <div class="icon-big icon-success text-center">
                                                    <i class="ti-wallet"></i>
                                                </div>
                                            </div>
                                            <div class="col-xs-7">
                                                <div class="numbers">
                                                    <p>Số khoá học</p>
                                                    <%=courseDAO.getNumberOfCourse()%>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="footer">
                                            <hr />
                                            <div class="stats">
                                                <i class="ti-calendar"></i> Số khoá học cung cấp
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-3 col-sm-6">
                                <div class="card">
                                    <div class="content">
                                        <div class="row">
                                            <div class="col-xs-5">
                                                <div class="icon-big icon-danger text-center">
                                                    <i class="ti-pulse"></i>
                                                </div>
                                            </div>
                                            <div class="col-xs-7">
                                                <div class="numbers">
                                                    <p>Số khoá đăng ký</p>
                                                    <%=regCourseDAO.getNumberOfRegCourse()%>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="footer">
                                            <hr />
                                            <div class="stats">
                                                <i class="ti-timer"></i> Số khoá học được đăng ký
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-3 col-sm-6">
                                <div class="card">
                                    <div class="content">
                                        <div class="row">
                                            <div class="col-xs-5">
                                                <div class="icon-big icon-info text-center">
                                                    <i class="ti-twitter-alt"></i>
                                                </div>
                                            </div>
                                            <div class="col-xs-7">
                                                <div class="numbers">
                                                    <p>Lượng phản hồi</p>
                                                    <%=contactDAO.getNumberOfContact()%>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="footer">
                                            <hr />
                                            <div class="stats">
                                                <i class="ti-reload"></i> Phản hồi, câu hỏi của người dùng
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-12">
                                <div class="card">
                                    <div class="header">
                                        <h4 class="title">Lượng truy cập</h4>
                                        <p class="category">Trong 24 giờ qua</p>
                                    </div>
                                    <div class="content">
                                        <div id="chartHours" class="ct-chart"></div>
                                        <div class="footer">
                                            <div class="chart-legend">
                                                <i class="fa fa-circle text-info"></i> Vào trang chủ
                                                <i class="fa fa-circle text-danger"></i> Vào trang khoá học
                                                <i class="fa fa-circle text-warning"></i> Vào trang khoá học nhiều hơn 2 lần
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>

    <!--   Core JS Files   -->
    <script src="${root}/admin/assets/js/jquery-1.10.2.js" type="text/javascript"></script>
    <script src="${root}/admin/assets/js/bootstrap.min.js" type="text/javascript"></script>

    <!--  Checkbox, Radio & Switch Plugins -->
    <script src="${root}/admin/assets/js/bootstrap-checkbox-radio.js"></script>

    <!--  Charts Plugin -->
    <script src="${root}/admin/assets/js/chartist.min.js"></script>

    <!--  Notifications Plugin    -->
    <script src="${root}/admin/assets/js/bootstrap-notify.js"></script>

    <!--  Google Maps Plugin    -->
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js"></script>

    <!-- Paper Dashboard Core javascript and methods for Demo purpose -->
    <script src="${root}/admin/assets/js/paper-dashboard.js"></script>

    <!-- Paper Dashboard DEMO methods, don't include it in your project! -->
    <script src="${root}/admin/assets/js/demo.js"></script>

    <script type="text/javascript">
                                $(document).ready(function () {
                                    demo.initChartist();
                                });
    </script>

</html>
