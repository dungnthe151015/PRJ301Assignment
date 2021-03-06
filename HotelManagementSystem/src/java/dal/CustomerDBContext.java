/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Account;
import model.Booking;
import model.Customer;
import model.Room;

/**
 *
 * @author ASUS
 */
public class CustomerDBContext extends DBContext {

    PreparedStatement ps;
    ResultSet rs;
    ArrayList<Customer> cus = new ArrayList<>();

    public ArrayList<Customer> getAll() {
        try {
            String sql = "select * from Customer";
            ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();

            while (rs.next()) {
                Account acc = new Account();
                acc = new AccountDBContext().getAccountByID(rs.getInt(9));
                Customer customer = new Customer(rs.getInt(1),
                        rs.getString(2), rs.getString(3),
                        rs.getString(4), rs.getString(5),
                        rs.getBoolean(6), rs.getString(7), rs.getBoolean(8), acc);
                cus.add(customer);
            }
            return cus;
        } catch (SQLException ex) {
            Logger.getLogger(CustomerDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public Customer getOne(int aInt) {
        try {
            String sql = "select * from Customer where ID = ?";
            ps = connection.prepareStatement(sql);
            ps.setInt(1, aInt);
            rs = ps.executeQuery();
            while (rs.next()) {
                Account acc = new Account();
                acc = new AccountDBContext().getAccountByID(rs.getInt(9));

                Customer customer = new Customer(rs.getInt(1),
                        rs.getString(2), rs.getString(3),
                        rs.getString(4), rs.getString(5),
                        rs.getBoolean(6), rs.getString(7), rs.getBoolean(8), acc);
                return customer;
            }
        } catch (SQLException ex) {
            Logger.getLogger(RoomDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public Customer getOneByAccountID(Account account) {
        try {
            String sql = "select * from Customer where accountID = ?";
            ps = connection.prepareStatement(sql);
            ps.setInt(1, account.getID());
            rs = ps.executeQuery();
            while (rs.next()) {
                Account acc = new Account();
                acc = new AccountDBContext().getAccountByID(rs.getInt(9));

                Customer customer = new Customer(rs.getInt(1),
                        rs.getString(2), rs.getString(3),
                        rs.getString(4), rs.getString(5),
                        rs.getBoolean(6), rs.getString(7), rs.getBoolean(8), acc);
                return customer;
            }
        } catch (SQLException ex) {
            Logger.getLogger(RoomDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public ArrayList<Customer> search(String text_search) {
        ArrayList<Customer> list = new ArrayList<>();
        try {
            String sql = "select Customer.* from Customer \n"
                    + "                    inner join Account on Customer.accountID = Account.ID\n"
                    + "                    where displayName like '%" + text_search + "%'";
            ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Account acc = new Account();
                acc = new AccountDBContext().getAccountByID(rs.getInt(9));

                Customer customer = new Customer(rs.getInt(1),
                        rs.getString(2), rs.getString(3),
                        rs.getString(4), rs.getString(5),
                        rs.getBoolean(6), rs.getString(7), rs.getBoolean(8), acc);
                list.add(customer);
            }
            return list;
        } catch (SQLException ex) {
            Logger.getLogger(RoomDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public void update(Customer c) {
        try {
            String sql = "UPDATE [dbo].[Customer]\n"
                    + "   SET [Phone] = ?\n"
                    + "      ,[Email] = ?\n"
                    + "      ,[Address] = ?\n"
                    + "      ,[IDProof] = ?\n"
                    + "      ,[gender] = ?\n"
                    + "      ,[image] = ?\n"
                    + "      ,[status] = ?\n"
                    + "      ,[accountID] = ?\n"
                    + " WHERE ID = ?";
            ps = connection.prepareStatement(sql);
            ps.setString(1, c.getPhone());
            ps.setString(2, c.getEmail());
            ps.setString(3, c.getAddress());
            ps.setString(4, c.getIDProof());
            ps.setBoolean(5, c.isGender());
            ps.setString(6, c.getImage());
            ps.setBoolean(7, c.isStatus());
            ps.setInt(8, c.getAccountid().getID());
            ps.setInt(9, c.getId());
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(RoomDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public int getTotal() {
        int total = 0;
        try {
            String sql = "select count(*) from Customer";
            ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                total = rs.getInt(1);
            }
        } catch (SQLException ex) {
            Logger.getLogger(RoomDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return total;
    }
}
//    private int id;
//    private String phone;
//    private String email;
//    private String address;
//    private String IDProof;
//    private boolean gender;
//    private String image;
//    private boolean status;
//    private Account accountid;
