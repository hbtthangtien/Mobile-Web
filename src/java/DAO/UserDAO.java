/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Model.User;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author hbtth
 */
public class UserDAO extends dbConfig {

    public UserDAO() {
        super();
    }

    public boolean checkLogin(User user) {
        String sql = "SELECT * FROM [User] WHERE [User].username = ? AND [User].password = ?";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, user.getUsername());
            ps.setString(2, user.getPassword());
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    public User getUser(User user) {
        String sql = "SELECT * FROM [User] WHERE [User].username = ? AND [User].password = ?";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, user.getUsername());
            ps.setString(2, user.getPassword());
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                int idUser = rs.getInt(1);
                String username = rs.getString(2), password = rs.getString(3);
                String phoneNumber = rs.getString(4), fullname = rs.getString(5), address = rs.getString(6);
                User u = new User(idUser, username, password, phoneNumber, fullname, address);
                return u;
            }

        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class
                    .getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public boolean addAccount(User user) {
        String sql = "INSERT INTO [dbo].[User] ([username], [password], [phoneNumber], [fullname], [address])\n"
                + "     VALUES (?,?,?,?,?)";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, user.getUsername());
            ps.setString(2, user.getPassword());
            ps.setString(3, user.getPhoneNumber());
            ps.setNString(4, user.getFullname());
            ps.setNString(5, user.getAddress());
            int x = ps.executeUpdate();
            return x != 0;
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    public static void main(String[] args) {
        UserDAO db = new UserDAO();
        
    }
}
