/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CONTROLLER;

import BEAN.Contact;
import DAO.ContactDAO;
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
public class ContactServlet extends HttpServlet {

    ContactDAO contactDAO = new ContactDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String command = request.getParameter("command");
        String url = "";
        try {
            switch (command) {
                case "delete":
                    contactDAO.deleteContact(Integer.parseInt(request.getParameter("contact_id")));
                    url = "/admin/contactManager.jsp";
                    break;
            }
        } catch (NumberFormatException e) {

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
        Contact contact = new Contact();
        switch (command) {
            case "insert":
                contact.setName(request.getParameter("contact_name"));
                contact.setEmail(request.getParameter("email"));
                contact.setSubject(request.getParameter("subject"));
                contact.setMessage(request.getParameter("message"));
                contact.setIdle(0);
                contactDAO.insertContact(contact);
                url = "/index.jsp";
                break;
        }
        RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
        rd.forward(request, response);
    }
}
