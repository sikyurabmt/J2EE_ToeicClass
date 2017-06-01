<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Đăng nhập - TOEIC CLASS</title>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
            <div class="container">
                <div class="account" style="margin-left: 25%">
                    <form action="AccountServlet" method="POST">
                    <%

                        if (session.getAttribute("error") != null && session.getAttribute("error") != "") {

                    %>
                    <div>
                        <p style="color:red"><%=session.getAttribute("error")%></p>
                    </div>
                    <%
                            session.setAttribute("error", "");
                        }
                    %>
                    <div>
                        <span>Tên đăng nhập *</span>
                        <br/>
                        <input type="text" name="username"/>
                    </div> 	
                    <div> 
                        <span class="word">Mật khẩu *</span>
                        <br/>
                        <input type="password" name="password"/>
                    </div>			
                    <input type="hidden" value="login" name="command"/>
                    <input type="submit" value="Đăng nhập" style="margin-left: 22%"/> 
                </form>
            </div>
        </div>
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
