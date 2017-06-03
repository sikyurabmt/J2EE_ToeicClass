<%@page import="BEAN.Account"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <c:set var="root" value="${pageContext.request.contextPath}"/>
    </head>
    <body>
        <%
            Account acc = null;
            if (session.getAttribute("account") != null) {
                acc = (Account) session.getAttribute("account");
            }
        %>
        <div class="sidebar" data-background-color="white" data-active-color="danger">
            <div class="sidebar-wrapper">
                <div class="logo">
                    <a href="${root}/admin/index.jsp" class="simple-text">
                        <%
                            if (acc != null) {
                        %>
                        XIN CHÀO, <%=acc.getName()%>
                        <%
                            } else {
                        %>
                        CHƯA ĐĂNG NHẬP
                        <%
                            }
                        %>
                    </a>
                </div>

                <ul class="nav">
                    <li>
                        <a href="${root}/admin/index.jsp">
                            <i class="ti-panel"></i>
                            <p>Thống kê</p>
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
                        <a href="${root}/admin/contactManager.jsp">
                            <i class="ti-email"></i>
                            <p>Liên hệ</p>
                        </a>
                    </li>
                    <li class="active-pro">
                        <a href="/toeicclass/AccountServlet?command=logout">
                            <i class="ti-new-window"></i>
                            <p>Đăng xuất</p>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </body>
</html>
