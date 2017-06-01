<%-- 
    Document   : courseManager
    Created on : May 24, 2017, 5:43:43 PM
    Author     : VegetaPC
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="BEAN.Course"%>
<%@page import="DAO.CourseDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <link rel="apple-touch-icon" sizes="76x76" href="${root}/admin/assets/img/apple-icon.png">
        <link rel="icon" type="image/png" sizes="96x96" href="${root}/admin/assets/img/favicon.png">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

        <title>Trainee Manager</title>

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
                                    <a href="${root}/admin/courseAdd.jsp">
                                        <i class="ti-plus"></i>
                                        <p>Thêm khoá học</p>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </nav>

                <div style="margin-left: 30px; margin-right: 30px; margin-top: 15px">
                    <div class="card">
                        <div class="content">
                            <form action="/toeicclass/CourseServlet" method="POST" id="postCourseServlet">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label>Tên khoá học</label>
                                            <input type="text" class="form-control border-input" placeholder="Tìm kiếm theo tên khoá học" name="course_name">
                                        </div>
                                    </div>
                                </div>
                                <div class="text-center">
                                    <input type="hidden" name="command" value="search"/>
                                    <button type="submit" class="btn btn-info btn-fill btn-wd">Tìm khoá học</button>
                                </div>
                                <div class="clearfix"></div>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="content">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="card">
                                    <div class="header">
                                        <h4 class="title">Danh sách khoá học</h4>
                                    </div>
                                    <div class="content table-responsive table-full-width">
                                        <table class="table table-striped">
                                            <thead>
                                            <th width="5%">STT</th>
                                            <th width="20%">Tên khoá học</th>
                                            <th width="auto">Hình ảnh</th>
                                            <th width="auto">Nội dung</th>
                                            <th width="10%">Hành động</th>
                                            </thead>

                                            <tbody>
                                                <% int stt = 1; %>
                                                <c:forEach items="${listCourse}" var="list">
                                                    <tr>
                                                        <td><%=stt%></td>
                                                        <td>${list.getName()}</td>
                                                        <td>
                                                            <div class="col-xs-4">
                                                                <center>
                                                                    <div class="avatar">
                                                                        <img src="${root}/${list.getImage()}" alt="Circle Image" class="img-responsive">
                                                                    </div>
                                                                </center>
                                                            </div>
                                                        </td>
                                                        <td>${list.getContent()}</td>
                                                        <td>
                                                <center>
                                                    <a href="${root}/admin/courseUpdate.jsp?command=update&course_id=${list.getId()}">Sửa</a> - 
                                                    <a href="/toeicclass/CourseServlet?command=delete&course_id=${list.getId()}">Xoá</a>
                                                </center>
                                                </td>
                                                </tr>
                                                <% stt++; %>
                                            </c:forEach>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
    </body>
</html>