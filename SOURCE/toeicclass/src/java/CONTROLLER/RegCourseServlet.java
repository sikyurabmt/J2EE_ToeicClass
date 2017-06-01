/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CONTROLLER;

import DAO.RegCourseDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author VegetaPC
 */
public class RegCourseServlet extends HttpServlet {

    RegCourseDAO rcDAO = new RegCourseDAO();
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // để lưu ký tự tiếng việt
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        String command = request.getParameter("command");
        String url = "";
        try {
            switch (command) {
                case "insert":
                    int idaccount = Integer.parseInt(request.getParameter("idaccount"));
                    int idcourse = Integer.parseInt(request.getParameter("idcourse"));
                    rcDAO.insertRegCourse(idaccount, idcourse);
                    url = "/mycourse.jsp";
                    break;
            }
        } catch (NumberFormatException e) {

        }
        RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
        rd.forward(request, response);
    }
}
