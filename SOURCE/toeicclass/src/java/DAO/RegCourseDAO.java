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
public class RegCourseDAO {

    public ArrayList<Course> getAllCourseByIdAccount(int id) throws SQLException {
        ArrayList<Course> list;
        try (Connection connection = DBConnect.getConnection()) {
            String sql = "SELECT c.id AS id, c.name AS name, c.image AS image, c.content AS content, c.idle AS idle "
                    + "FROM course AS c "
                    + "INNER JOIN regcourse AS rc "
                    + "ON c.id = rc.idcourse "
                    + "INNER JOIN account AS a "
                    + "ON a.id = rc.idaccount "
                    + "WHERE c.idle = 0 "
                    + "AND a.id = ?";
            PreparedStatement ps = connection.prepareCall(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            list = new ArrayList<>();
            while (rs.next()) {
                Course course = new Course();
                course.setId(rs.getInt("id"));
                course.setName(rs.getString("name"));
                course.setImage(rs.getString("image"));
                course.setContent(rs.getString("content"));
                course.setIdle(rs.getInt("idle"));
                list.add(course);
            }
        }
        return list;
    }
    
    public int getNumberOfRegCourse() throws SQLException {
        int num = 0;
        try (Connection connection = DBConnect.getConnection()) {
            String sql = "SELECT * "
                    + "FROM regcourse "
                    + "WHERE idle = 0";
            PreparedStatement ps = connection.prepareCall(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                num++;
            }
            connection.close();
        }
        return num;
    }

    public boolean insertRegCourse(int idaccount, int idcourse) {
        Connection connection = DBConnect.getConnection();
        String sql = "INSERT INTO regcourse(idaccount, idcourse, idle) "
                + "VALUES(?,?,?)";
        try {
            PreparedStatement ps = connection.prepareCall(sql);
            ps.setInt(1, idaccount);
            ps.setInt(2, idcourse);
            ps.setInt(3, 0);
            ps.executeUpdate();
            connection.close();
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(RegCourseDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    // kiem tra khoa hoc da dang ki hay chua, return true neu da dang ky roi
    public boolean checkRegister(int idaccount, int idcourse) {
        Connection connection = DBConnect.getConnection();
        String sql = "SELECT * "
                + "FROM regcourse "
                + "WHERE idaccount='" + idaccount + "' and idcourse='" + idcourse + "' "
                + "AND idle = 0";
        PreparedStatement ps;
        try {
            ps = (PreparedStatement) connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                connection.close();
                return true;
            }
        } catch (SQLException e) {
        }
        return false;

    }

    public static void main(String[] args) throws SQLException {
        RegCourseDAO r = new RegCourseDAO();
        ArrayList<Course> courseList;
        courseList = r.getAllCourseByIdAccount(1);
        courseList.forEach((c) -> {
            System.out.println(c.getName());
        });
    }
}
