/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import BEAN.Contact;
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
public class ContactDAO {
    public ArrayList<Contact> getAllContact() throws SQLException {
        Connection connection = DBConnect.getConnection();
        String sql = "SELECT * "
                + "FROM contact "
                + "WHERE idle = 0";
        PreparedStatement ps = connection.prepareCall(sql);
        ResultSet rs = ps.executeQuery();
        ArrayList<Contact> list = new ArrayList<>();
        while (rs.next()) {
            Contact contact = new Contact();
            contact.setId(rs.getInt("id"));
            contact.setName(rs.getString("name"));
            contact.setEmail(rs.getString("email"));
            contact.setSubject(rs.getString("subject"));
            contact.setMessage(rs.getString("message"));
            contact.setIdle(rs.getInt("idle"));
            list.add(contact);
        }
        return list;
    }
    
    public int getNumberOfContact() throws SQLException {
        int num = 0;
        try (Connection connection = DBConnect.getConnection()) {
            String sql = "SELECT * "
                    + "FROM contact "
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
    
    public boolean insertContact(Contact contact) {
        Connection connection = DBConnect.getConnection();
        String sql = "INSERT INTO contact(name, email, subject, message, idle) "
                + "VALUES(?,?,?,?,?)";
        try {
            PreparedStatement ps = connection.prepareCall(sql);
            ps.setString(1, contact.getName());
            ps.setString(2, contact.getEmail());
            ps.setString(3, contact.getSubject());
            ps.setString(4, contact.getMessage());
            ps.setInt(5, contact.getIdle());
            ps.executeUpdate();
            connection.close();
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    
    public boolean deleteContact(int id) {
        Connection connection = DBConnect.getConnection();
        String sql = "UPDATE contact "
                + "SET idle = 1 "
                + "WHERE id = ?";
        try {
            PreparedStatement ps = connection.prepareCall(sql);
            ps.setInt(1, id);
            ps.executeUpdate();
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(ContactDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
}