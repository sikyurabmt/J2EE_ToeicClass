<%-- 
    Document   : sidebar
    Created on : May 24, 2017, 4:01:25 PM
    Author     : VegetaPC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <c:set var="root" value="${pageContext.request.contextPath}"/>
    </head>
    <body>
        <div class="sidebar" data-background-color="white" data-active-color="danger">
            <div class="sidebar-wrapper">
                <div class="logo">
                    <a href="${root}/admin/index.jsp" class="simple-text">
                        TOEIC CLASS
                    </a>
                </div>

                <ul class="nav">
                    <li>
                        <a href="${root}/admin/index.jsp">
                            <i class="ti-panel"></i>
                            <p>Dashboard</p>
                        </a>
                    </li>
                    <li>
                        <a href="${root}/admin/courseManager.jsp">
                            <i class="ti-book"></i>
                            <p>Khoá học</p>
                        </a>
                    </li>
                    <li>
                        <a href="${root}/admin/traineeManager.jsp">
                            <i class="ti-user"></i>
                            <p>Học viên</p>
                        </a>
                    </li>
                    <li>
                        <a href="${root}/admin/user.jsp">
                            <i class="ti-user"></i>
                            <p>User Profile</p>
                        </a>
                    </li>
                    <li>
                        <a href="${root}/admin/table.jsp">
                            <i class="ti-view-list-alt"></i>
                            <p>Table List</p>
                        </a>
                    </li>
                    <li>
                        <a href="${root}/admin/typography.jsp">
                            <i class="ti-text"></i>
                            <p>Typography</p>
                        </a>
                    </li>
                    <li>
                        <a href="${root}/admin/icons.jsp">
                            <i class="ti-pencil-alt2"></i>
                            <p>Icons</p>
                        </a>
                    </li>
                    <li>
                        <a href="${root}/admin/maps.jsp">
                            <i class="ti-map"></i>
                            <p>Maps</p>
                        </a>
                    </li>
                    <li>
                        <a href="${root}/admin/notifications.jsp">
                            <i class="ti-bell"></i>
                            <p>Notifications</p>
                        </a>
                    </li>
                    <li class="active-pro">
                        <a href="${root}/admin/upgrade.jsp">
                            <i class="ti-new-window"></i>
                            <p>LOG OUT</p>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </body>
</html>
