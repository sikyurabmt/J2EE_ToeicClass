<%@page import="BEAN.Course"%>
<%@page import="DAO.CourseDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>content</title>
    </head>
    <body>
        <%
            CourseDAO courseDAO = new CourseDAO();
        %>
        <!---->
        <div class="container">
            <div class="content">
                <div class="content-top">
                    <center><h3 style="opacity: 0.75">DANH SÁCH KHOÁ HỌC</h3></center>
                    <div class="content-top-in">

                        <%
                            for (Course c : courseDAO.getAllCourse()) {
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
    </body>
</html>