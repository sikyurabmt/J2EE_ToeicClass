/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import BEAN.Course;
import CONNECT.DBConnect;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author VegetaPC
 */
public class CourseDAO {

    public ArrayList<Course> getAllCourse() throws SQLException {
        Connection connection = DBConnect.getConnection();
        String sql = "SELECT * "
                + "FROM course "
                + "WHERE idle = 0";
        PreparedStatement ps = connection.prepareCall(sql);
        ResultSet rs = ps.executeQuery();
        ArrayList<Course> list = new ArrayList<>();
        while (rs.next()) {
            Course course = new Course();
            course.setId(rs.getInt("id"));
            course.setName(rs.getString("name"));
            course.setImage(rs.getString("image"));
            course.setContent(rs.getString("content"));
            course.setIdle(rs.getInt("idle"));
            list.add(course);
        }
        return list;
    }

    public ArrayList<Course> getAllCourseByName(String name) throws SQLException {
        Connection connection = DBConnect.getConnection();
        String sql = "SELECT * "
                + "FROM course "
                + "WHERE name like '%" + name + "%'"
                + "AND idle = 0";
        PreparedStatement ps = connection.prepareCall(sql);
        ResultSet rs = ps.executeQuery();
        ArrayList<Course> list = new ArrayList<>();
        while (rs.next()) {
            Course course = new Course();
            course.setId(rs.getInt("id"));
            course.setName(rs.getString("name"));
            course.setImage(rs.getString("image"));
            course.setContent(rs.getString("content"));
            course.setIdle(rs.getInt("idle"));
            list.add(course);
        }
        return list;
    }

    public Course getCourseById(int id) throws SQLException {
        Connection connection = DBConnect.getConnection();
        String sql = "SELECT * "
                + "FROM course "
                + "WHERE id = '" + id + "' "
                + "AND idle = 0";
        PreparedStatement ps = connection.prepareCall(sql);
        ResultSet rs = ps.executeQuery();
        Course course = new Course();
        while (rs.next()) {
            course.setId(rs.getInt("id"));
            course.setName(rs.getString("name"));
            course.setImage(rs.getString("image"));
            course.setContent(rs.getString("content"));
            course.setIdle(rs.getInt("idle"));
        }
        return course;
    }

    public boolean insertCourse(Course course) {
        Connection connection = DBConnect.getConnection();
        String sql = "INSERT INTO course(name, image, content, idle) "
                + "VALUES(?,?,?,?)";
        try {
            PreparedStatement ps = connection.prepareCall(sql);
            ps.setString(1, course.getName());
            ps.setString(2, course.getImage());
            ps.setString(3, course.getContent());
            ps.setInt(4, course.getIdle());
            ps.executeUpdate();
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(CourseDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    public boolean updateCourse(Course course) {
        Connection connection = DBConnect.getConnection();
        String sql = "UPDATE course "
                + "SET name = ?, "
                + "image = ?, "
                + "content = ?, "
                + "idle = ? "
                + "WHERE id = ?";
        try {
            PreparedStatement ps = connection.prepareCall(sql);
            ps.setString(1, course.getName());
            ps.setString(2, course.getImage());
            ps.setString(3, course.getContent());
            ps.setInt(4, course.getIdle());
            ps.setInt(5, course.getId());
            ps.executeUpdate();
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(CourseDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    public boolean deleteCourse(int id) {
        Connection connection = DBConnect.getConnection();
        String sql = "UPDATE course "
                + "SET idle = 1 "
                + "WHERE id = ?";
        try {
            PreparedStatement ps = connection.prepareCall(sql);
            ps.setInt(1, id);
            ps.executeUpdate();
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(CourseDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    public static void main(String[] args) throws SQLException {
//        CourseDAO courseDAO = new CourseDAO();
//        ArrayList<Course> courseList = courseDAO.getAllCourseByName("a");
//        for (Course c : courseList) {
//            System.out.println(c.getName());
//        }
    }
}
