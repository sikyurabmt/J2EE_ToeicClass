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

/**
 *
 * @author VegetaPC
 */
public class AccountServlet extends HttpServlet {

    AccountDAO accountDAO = new AccountDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String command = request.getParameter("command");
        String url = "";
        Account account = new Account();
        //HttpSession session = request.getSession();
        switch (command) {
            case "insert":
                account.setUsername(request.getParameter("username"));
                account.setPassword(request.getParameter("password"));
                account.setName(request.getParameter("acc_name"));
                account.setAddress(request.getParameter("address"));
                account.setEmail(request.getParameter("email"));
                account.setPhonenumber(request.getParameter("phonenumber"));
                account.setType(2);
                account.setIdle(0);
                accountDAO.insertAccount(account);
                //session.setAttribute("account", account);
                url = "/index.jsp";
                break;
            case "login":
//                account = accountDAO.login(request.getParameter("email"), MD5.encryption(request.getParameter("pass")));
//                if (account != null) {
//                    session.setAttribute("user", account);
//                    url = "/index.jsp";
//                } else {
//                    request.setAttribute("error", "Error email or password!");
//                    url = "/login.jsp";
//                }
                break;
        }
        RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
        rd.forward(request, response);
    }
}
