/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package conexion;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import javax.swing.JOptionPane;

/**
 *
 * @author cuellar
 */
public class conexion {
     public Connection conexion;
   public  Statement st;
    
        
            
   
    public  conexion(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conexion = DriverManager.getConnection("jdbc:mysql://localhost/DBpos", "SistemaPos", "pos2019sis"); 
            st = conexion.createStatement();
            
        } catch (Exception ex) {
            JOptionPane.showMessageDialog(null, "Algo impido que se realizara la conexion a la DB asegurece de tener los servicios activados: ","Error DB",JOptionPane.ERROR_MESSAGE);
            System.exit(0);
        }
    }
    

    
}
