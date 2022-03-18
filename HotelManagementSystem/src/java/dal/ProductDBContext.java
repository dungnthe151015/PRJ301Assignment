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
import model.Product;
import model.ProductType;

/**
 *
 * @author ASUS
 */
public class ProductDBContext extends DBContext {

    private PreparedStatement ps;
    private ResultSet rs;
    ArrayList<Product> pro = new ArrayList<Product>();

    public ArrayList<Product> getAll() {
        ArrayList<Product> list = new ArrayList<>();
        String sql = "select * from Product";
        try {
            ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                ProductType producType = new ProductType();
                producType = new ProductTypeDBContext().getOne(rs.getInt(4));
                Product pro = new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getDouble(3),
                        producType,
                        rs.getInt(5),
                        rs.getString(6), rs.getBoolean(7));
                list.add(pro);
            }
            return list;
        } catch (SQLException ex) {
            Logger.getLogger(ProductDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public Product getOne(int productID) {
        String sql = "select * from Product where ID = ?";
        try {
            ps = connection.prepareStatement(sql);
            ps.setInt(1, productID);
            rs = ps.executeQuery();
            while (rs.next()) {
                ProductType producType = new ProductType();
                producType = new ProductTypeDBContext().getOne(rs.getInt(4));
                Product pro = new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getDouble(3),
                        producType,
                        rs.getInt(5),
                        rs.getString(6), rs.getBoolean(7));
                return pro;
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public void changeQuantity(int quantity_remain, int productID) {
        try {
            String sql = "UPDATE [dbo].[Product]\n"
                    + "   SET [quantity] = ?\n"
                    + "      \n"
                    + " WHERE ID = ?";
            ps = connection.prepareStatement(sql);

            ps.setInt(1, quantity_remain);
            ps.setInt(2, productID);
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(ProductTypeDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void delete(int productID) {
        try {
            String sql = "DELETE FROM [dbo].[Product]\n"
                    + "      WHERE ID = ?";
            ps = connection.prepareStatement(sql);

            ps.setInt(1, productID);
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(ProductTypeDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void insert(Product product) {
        try {
            String sql = "INSERT INTO [dbo].[Product]\n"
                    + "           ([productName]\n"
                    + "           ,[cost]\n"
                    + "           ,[productTypeID]\n"
                    + "           ,[quantity]\n"
                    + "           ,[status]\n"
                    + "           ,[description])\n"
                    + "     VALUES\n"
                    + "           (?, ?, ?, ?, ?, ?)";
            ps = connection.prepareStatement(sql);
            ps.setString(1, product.getProductName());
            ps.setDouble(2, product.getCost());
            ps.setInt(3, product.getProducType().getID());
            ps.setInt(4, product.getQuantity());
            ps.setBoolean(5, product.isStatus());
            ps.setString(6, product.getDescription());
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(ProductTypeDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
