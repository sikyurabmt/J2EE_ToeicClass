<%@page import="BEAN.Account"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>header</title>
    </head>
    <body>
        <%
            Account acc = null;
            if (session.getAttribute("account") != null) {
                acc = (Account) session.getAttribute("account");
            }
        %>
        <!--header-->
        <div class="header">
            <div class="header-top">
                <div class="container">	
                    <div class="header-top-in">			
                        <div class="logo">
                            <a href="index.jsp"><img src="images/logotoeic.png" alt="" ></a>
                        </div>
                        <div class="header-in">
                            <ul class="icon1 sub-icon1">
                                <%
                                    if (acc != null) {
                                %>
                                <li><a href="myinfo.jsp">XIN CHÀO, <%=acc.getName()%></a></li>
                                <li><a href="/toeicclass/AccountServlet?command=logout">ĐĂNG XUẤT</a></li>
                                    <%
                                    } else {
                                    %>
                                <li><a href="register.jsp">ĐĂNG KÝ</a></li>
                                <li><a href="login.jsp">ĐĂNG NHẬP</a></li>  
                                    <%
                                        }
                                    %>
                            </ul>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                </div>
            </div>

            <div class="header-bottom">
                <div class="container">
                    <div class="h_menu4">
                        <a class="toggleMenu" href="#">Menu</a>
                        <ul class="nav">
                            <li><a href="index.jsp"><i> </i>Trang chủ</a></li>
                                <%
                                    if (acc != null) {
                                %>
                            <li><a href="mycourse.jsp" >Khoá học của tôi</a></li>
                                <%
                                    }
                                %>
                            <li><a href="contact.jsp" >Liên hệ</a></li>
                        </ul>
                        <script type="text/javascript" src="js/nav.js"></script>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
