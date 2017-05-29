<%-- 
    Document   : courseUpdate
    Created on : May 24, 2017, 11:58:01 PM
    Author     : VegetaPC
--%>

<%@page import="BEAN.Course"%>
<%@page import="DAO.CourseDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <link rel="apple-touch-icon" sizes="76x76" href="${root}/admin/assets/img/apple-icon.png">
        <link rel="icon" type="image/png" sizes="96x96" href="${root}/admin/assets/img/favicon.png">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

        <title>Toeic class - Khoá học</title>

        <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
        <meta name="viewport" content="width=device-width" />

        <c:set var="root" value="${pageContext.request.contextPath}"/>
        <!-- Bootstrap core CSS     -->
        <link href="${root}/admin/assets/css/bootstrap.min.css" rel="stylesheet" />

        <!-- Animation library for notifications   -->
        <link href="${root}/admin/assets/css/animate.min.css" rel="stylesheet"/>

        <!--  Paper Dashboard core CSS    -->
        <link href="${root}/admin/assets/css/paper-dashboard.css" rel="stylesheet"/>

        <!--  CSS for Demo Purpose, don't include it in your project     -->
        <link href="${root}/admin/assets/css/demo.css" rel="stylesheet" />

        <!--  Fonts and icons     -->
        <link href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">
        <link href='https://fonts.googleapis.com/css?family=Muli:400,300' rel='stylesheet' type='text/css'>
        <link href="${root}/admin/assets/css/themify-icons.css" rel="stylesheet">
    </head>

    <body>
        <div class="wrapper">
            <jsp:include page="sidebar.jsp"/>
            <div class="main-panel">
                <nav class="navbar navbar-default">
                    <div class="container-fluid">
                        <div class="navbar-header">
                            <h3>Khoá học</h3>
                        </div>
                        <div class="collapse navbar-collapse">
                            <ul class="nav navbar-nav navbar-right">
                                <li>
                                    <a href="javascript:{}" onclick="document.getElementById('postCourseServlet').submit();">
                                        <i class="ti-save"></i>
                                        <p>Lưu khoá học</p>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </nav>

                <div class="content">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="card">
                                <div class="content">
                                    <form action="/toeicclass/CourseServlet" method="POST" id="postCourseServlet">

                                        <%
                                            CourseDAO courseDAO = new CourseDAO();
                                            int id = Integer.parseInt(request.getParameter("course_id"));
                                            Course course = courseDAO.getCourseById(id);
                                        %>

                                        <div class="row">
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label>Tên khoá học</label>
                                                    <input type="text" class="form-control border-input" placeholder="Nhập tên khoá học" name="course_name" value="<%=course.getName()%>"/>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label>Hình đại diện</label>
                                                    <div class="row">
                                                        <input type="hidden" value="${root}/admin/assets/img/faces/face-1.jpg" name="course_image"/>
                                                        <div class="col-xs-4">
                                                            <center>
                                                                <div class="avatar">
                                                                    <img src="${root}/admin/assets/img/faces/face-1.jpg" alt="Circle Image" class="img-circle img-no-padding img-responsive">
                                                                </div>
                                                            </center>
                                                        </div>
                                                        <div class="col-xs-4">
                                                            <center>
                                                                <span class="text-success">tìm hình ảnh</span>
                                                            </center>
                                                        </div>
                                                        <div class="col-xs-4 text-right">
                                                            <center>
                                                                <btn class="btn btn-sm btn-success btn-icon"><i class="fa fa-search"></i></btn>
                                                            </center>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <label>Nội dung</label>
                                                    <textarea rows="10" class="form-control border-input" placeholder="Nhập nội dung khoá học" name="course_content"><c:out value="<%=course.getContent()%>" /></textarea>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="text-center">
                                            <input type="hidden" name="command" value="update"/>
                                            <input type="hidden" name="course_id" value="<%=request.getParameter("course_id")%>"/>
                                            <button type="submit" class="btn btn-info btn-fill btn-wd">Lưu khoá học</button>
                                        </div>
                                        <div class="clearfix"></div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>