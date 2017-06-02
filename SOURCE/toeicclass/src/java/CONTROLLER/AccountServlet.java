/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CONTROLLER;

import BEAN.Account;
import DAO.AccountDAO;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author VegetaPC
 */
public class AccountServlet extends HttpServlet {

    AccountDAO accountDAO = new AccountDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String command = request.getParameter("command");
        String url = "";
        HttpSession session = request.getSession();
        switch (command) {
            case "logout":
                url = "/index.jsp";
                session.invalidate();
                break;
            case "delete":
                accountDAO.deleteAccount(Integer.parseInt(request.getParameter("account_id")));
                url = "/admin/traineeManager.jsp";
                break;
        }
        RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");

        String command = request.getParameter("command");
        String url = "";
        Account account;
        HttpSession session = request.getSession();
        switch (command) {
            case "insert":
                account = new Account();
                account.setUsername(request.getParameter("username"));
                account.setPassword(request.getParameter("password"));
                account.setName(request.getParameter("acc_name"));
                account.setAddress(request.getParameter("address"));
                account.setEmail(request.getParameter("email"));
                account.setPhonenumber(request.getParameter("phonenumber"));
                account.setType(2);
                account.setIdle(0);
                accountDAO.insertAccount(account);
                session.setAttribute("account", account);
                url = "/index.jsp";
                break;
            case "login":
                account = accountDAO.login(request.getParameter("username"), request.getParameter("password"));
                if (account != null) {
                    session.setAttribute("account", account);
                    if (account.getType() == 1) {
                        url = "/admin/index.jsp";
                    } else {
                        url = "/index.jsp";
                    }
                } else {
                    url = "/login.jsp";
                    session.setAttribute("error", "Tên đăng nhập và mật khẩu bạn đã nhập không khớp với bất kỳ tài khoản nào.");
                }
                break;
            case "update":
                account = new Account();
                account.setId(Integer.parseInt(request.getParameter("acc_id")));
                account.setUsername(request.getParameter("username"));
                account.setPassword(request.getParameter("password"));
                account.setName(request.getParameter("acc_name"));
                account.setAddress(request.getParameter("address"));
                account.setEmail(request.getParameter("email"));
                account.setPhonenumber(request.getParameter("phonenumber"));
                account.setType(2);
                account.setIdle(0);
                accountDAO.updateAccount(account);
                session.setAttribute("account", account);
                url = "/index.jsp";
                break;
        }
        RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
        rd.forward(request, response);
    }
}
