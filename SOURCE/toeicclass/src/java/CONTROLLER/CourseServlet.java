/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CONTROLLER;

import BEAN.Course;
import DAO.CourseDAO;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author VegetaPC
 */
public class CourseServlet extends HttpServlet {

    CourseDAO courseDAO = new CourseDAO();

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

                case "delete":
                    courseDAO.deleteCourse(Integer.parseInt(request.getParameter("course_id")));
                    url = "/admin/courseManager.jsp";
                    break;
            }
        } catch (Exception e) {

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
        Course course;
        switch (command) {
            case "insert":
                course = new Course();
                course.setName(request.getParameter("course_name"));
                course.setImage(request.getParameter("course_image"));
                course.setContent(request.getParameter("course_content"));
                course.setIdle(0);
                courseDAO.insertCourse(course);
                url = "/admin/courseManager.jsp";
                break;

            case "update":
                course = new Course();
                course.setId(Integer.parseInt(request.getParameter("course_id")));
                course.setName(request.getParameter("course_name"));
                course.setImage(request.getParameter("course_image"));
                course.setContent(request.getParameter("course_content"));
                course.setIdle(0);
                courseDAO.updateCourse(course);
                url = "/admin/courseManager.jsp";
                break;

            case "search":
                String name = request.getParameter("course_name");
                ArrayList<Course> listCourse = new ArrayList<>();
                if (name.equals("")) {
                    try {
                        listCourse = courseDAO.getAllCourse();
                    } catch (SQLException ex) {
                        Logger.getLogger(CourseServlet.class.getName()).log(Level.SEVERE, null, ex);
                    }
                } else {
                    try {
                        listCourse = courseDAO.getAllCourseByName(name);
                    } catch (SQLException ex) {
                        Logger.getLogger(CourseServlet.class.getName()).log(Level.SEVERE, null, ex);
                    }
                }
                request.setAttribute("listCourse", listCourse);
                url = "/admin/courseManager.jsp";
                break;
        }
        RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
        rd.forward(request, response);
    }
}
