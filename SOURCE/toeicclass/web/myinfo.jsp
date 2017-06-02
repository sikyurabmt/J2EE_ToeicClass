<%-- 
    Document   : myinfo
    Created on : Jun 2, 2017, 1:23:48 PM
    Author     : VegetaPC
--%>

<%@page import="BEAN.Account"%>
<%@page import="DAO.AccountDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SỬA THÔNG TIN</title>
        
        <script type="text/javascript">
            function validateInfo() {
                var password = document.getElementById("password").value;
                var password2 = document.getElementById("password2").value;
                var email = document.getElementById("email").value;
                if (password.length === 0) {
                    alert("Chưa nhập mật khẩu");
                    return false;
                }
                if (password2.length === 0) {
                    alert("Chưa nhập trường nhập lại mật khẩu");
                    return false;
                }
                if (email.length === 0) {
                    alert("Chưa nhập địa chỉ email");
                    return false;
                }
                if (password2 !== password) {
                    alert("Nhập lại mật khẩu chưa đúng");
                    return false;
                }
                if (password.length < 6) {
                    alert("Mật khẩu phải >= 6 kí tự");
                    return false;
                }
                return true;
            }
        </script>
    </head>
    <body>
        <%
            AccountDAO accountDAO = new AccountDAO();
            Account acc = null;
            if (session.getAttribute("account") != null) {
                acc = (Account) session.getAttribute("account");
            }
        %>
        <jsp:include page="header.jsp"></jsp:include>
            <div class="container">
                <div class="account" style="margin-left: 25%">
                <%
                    if (acc != null) {
                %>    
                <h3 class="account-in" style="margin-left: 130px">THÔNG TIN TÀI KHOẢN</h3>
                <form action="AccountServlet" method="POST">
                    <div>
                        <span class="word">Tên tài khoản *</span>
                        <br/>
                        <input type="text" name="username" id="username" value="<%=acc.getUsername()%>" disabled/>
                        <span id="user-result"></span>
                    </div>
                    <div> 
                        <span class="word">Mật khẩu *</span>
                        <br/>
                        <input type="password" name="password" id="password"/>
                    </div>
                    <div> 
                        <span class="word">Nhập lại mật khẩu *</span>
                        <br/>
                        <input type="password" name="password" id="password2"/>
                    </div>
                    <div>
                        <span class="word">Họ tên </span>
                        <br/>
                        <input type="text" name="acc_name" id="acc_name" value="<%=acc.getName()%>"/>
                    </div>
                    <div>
                        <span class="word">Địa chỉ </span>
                        <br/>
                        <input type="text" name="address" id="address" value="<%=acc.getAddress()%>"/>
                    </div>
                    <div>
                        <span class="word">Email *</span>
                        <br/>
                        <input type="text" name="email" id="email" value="<%=acc.getEmail()%>"/>
                    </div>
                    <div>
                        <span class="word">Số điện thoại </span>
                        <br/>
                        <input type="text" name="phonenumber" id="phonenumber" value="<%=acc.getPhonenumber()%>"/>
                    </div>
                    <input type="hidden" value="update" name="command"/>
                    <input type="hidden" value="<%=acc.getId()%>" name="acc_id"/>
                    <input type="submit" value="Lưu" style="margin-left: 22%"  onClick="return validateInfo()"/>
                </form>
                <%
                } else {
                %>
                <h3 class="account-in" style="margin-left: 130px">CHƯA ĐĂNG NHẬP TÀI KHOẢN</h3>
                <%
                    }
                %>
            </div>
        </div>
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>