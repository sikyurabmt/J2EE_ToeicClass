<%-- 
    Document   : contactManager
    Created on : Jun 1, 2017, 5:18:18 PM
    Author     : VegetaPC
--%>

<%@page import="BEAN.Contact"%>
<%@page import="DAO.ContactDAO"%>
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

        <title>QUẢN LÝ LIÊN HỆ</title>

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
                            <h3>Liên hệ</h3>
                        </div>
                    </div>
                </nav>

                <div class="content">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="card">
                                    <div class="content table-responsive table-full-width">
                                        <table class="table table-striped">
                                            <thead>
                                            <th width="5%">STT</th>
                                            <th width="15%">Tên người gửi</th>
                                            <th width="auto">Email</th>
                                            <th width="auto">Chủ đề</th>
                                            <th width="40%">Lời nhắn </th>
                                            <th width="auto">Hành động </th>
                                            </thead>

                                            <tbody>
                                                <%
                                                    ContactDAO contactDAO = new ContactDAO();
                                                    int stt = 1;
                                                    for (Contact c : contactDAO.getAllContact()) {
                                                %>
                                                <tr>
                                                    <td><%=stt%></td>
                                                    <td><%=c.getName()%></td>
                                                    <td><%=c.getEmail()%></td>
                                                    <td><%=c.getSubject()%></td>
                                                    <td><%=c.getMessage()%></td>
                                                    <td>
                                            <center>
                                                <a href="/toeicclass/ContactServlet?command=delete&contact_id=<%=c.getId()%>">Xoá</a>
                                            </center>
                                            </td>
                                            </tr>
                                            <%
                                                    stt++;
                                                }
                                            %>
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