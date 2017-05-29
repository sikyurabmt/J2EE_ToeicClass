<%-- 
    Document   : trainee.jsp
    Created on : May 24, 2017, 4:19:44 PM
    Author     : VegetaPC
--%>

<%@page import="BEAN.Account"%>
<%@page import="DAO.AccountDAO"%>
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
                            <h3>Học viên</h3>
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
                                            <th>ID</th>
                                            <th>Tài khoản</th>
                                            <th>Tên</th>
                                            <th>Địa chỉ</th>
                                            <th>Số điện thoại</th>
                                            <th>Hành động</th>
                                            </thead>

                                            <tbody>
                                                <%
                                                    AccountDAO accountDAO = new AccountDAO();
                                                    for (Account c : accountDAO.getAllAccount()) {
                                                %>
                                                <tr>
                                                    <td><%=c.getId()%></td>
                                                    <td><%=c.getUsername()%></td>
                                                    <td><%=c.getName()%></td>
                                                    <td><%=c.getAddress()%></td>
                                                    <td><%=c.getPhonenumber()%></td>
                                                    <td>Xoá</td>
                                                </tr>
                                                <%
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
