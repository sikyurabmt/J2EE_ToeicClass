/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import BEAN.Account;
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
public class AccountDAO {

    public ArrayList<Account> getAllAccount() throws SQLException {
        ArrayList<Account> list;
        try (Connection connection = DBConnect.getConnection()) {
            String sql = "SELECT * "
                    + "FROM account "
                    + "WHERE idle = 0";
            PreparedStatement ps = connection.prepareCall(sql);
            ResultSet rs = ps.executeQuery();
            list = new ArrayList<>();
            while (rs.next()) {
                Account account = new Account();
                account.setId(rs.getInt("id"));
                account.setUsername(rs.getString("username"));
                account.setPassword(rs.getString("password"));
                account.setName(rs.getString("name"));
                account.setAddress(rs.getString("address"));
                account.setEmail(rs.getString("email"));
                account.setPhonenumber(rs.getString("phonenumber"));
                account.setType(rs.getInt("type"));
                account.setIdle(rs.getInt("idle"));
                list.add(account);
            }
        }
        return list;
    }
    
    public int getNumberOfAccount() throws SQLException {
        int num = 0;
        try (Connection connection = DBConnect.getConnection()) {
            String sql = "SELECT * "
                    + "FROM account "
                    + "WHERE idle = 0 "
                    + "AND type = 2";
            PreparedStatement ps = connection.prepareCall(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                num++;
            }
            connection.close();
        }
        return num;
    }

    public boolean checkExistUsername(String username) {
        Connection connection = DBConnect.getConnection();
        String sql = "SELECT * "
                + "FROM account "
                + "WHERE username = '" + username + "'";
        PreparedStatement ps;
        try {
            ps = connection.prepareCall(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                connection.close();
                return true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    public boolean insertAccount(Account account) {
        Connection connection = DBConnect.getConnection();
        String sql = "INSERT INTO account(username, password, name, address, email, phonenumber, type, idle) "
                + "VALUES(?,?,?,?,?,?,?,?)";
        try {
            PreparedStatement ps = connection.prepareCall(sql);
            ps.setString(1, account.getUsername());
            ps.setString(2, account.getPassword());
            ps.setString(3, account.getName());
            ps.setString(4, account.getAddress());
            ps.setString(5, account.getEmail());
            ps.setString(6, account.getPhonenumber());
            ps.setInt(7, account.getType());
            ps.setInt(8, account.getIdle());
            ps.executeUpdate();
            connection.close();
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    public Account login(String username, String password) {
        Connection connection = DBConnect.getConnection();
        String sql = "SELECT * "
                + "FROM account "
                + "WHERE username='" + username + "' and password='" + password + "' "
                + "AND idle = 0";
        PreparedStatement ps;
        try {
            ps = (PreparedStatement) connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                Account acc = new Account();
                acc.setId(rs.getInt("id"));
                acc.setUsername(rs.getString("username"));
                acc.setPassword(rs.getString("password"));
                acc.setName(rs.getString("name"));
                acc.setAddress(rs.getString("address"));
                acc.setEmail(rs.getString("email"));
                acc.setPhonenumber(rs.getString("phonenumber"));
                acc.setType(rs.getInt("type"));
                acc.setIdle(rs.getInt("idle"));
                connection.close();
                return acc;
            }
        } catch (SQLException e) {
        }
        return null;
    }
    
    public boolean deleteAccount(int id) {
        Connection connection = DBConnect.getConnection();
        String sql = "UPDATE account "
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

    public static void main(String[] args) throws SQLException {
//        AccountDAO dao = new AccountDAO();
//        Account a = dao.login("admin", "123456");
//        System.out.println(a.getEmail());
    }
}
