package codigo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.Statement;
import java.util.ArrayList;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author Miguel
 */
public class Conexion {
    
    static Connection con=null;
    static Statement sentencia;
    static ResultSet resultado;
    static ResultSetMetaData rsMetaData;
    
    public static void conectar(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pos","sistemaPOS","POS2019sis");
            sentencia = con.createStatement();
            //System.out.println("conexion exitosa");
        } catch (Exception e) {
            System.err.println("Error:" +e);
        }
    }
    
    public static void ejecutar(String q){
        conectar();
        try {
            sentencia.executeUpdate(q);
            //System.out.println("correcto");
        } catch (Exception e) {
            System.out.println("error: "+ q);
        } 
    }
    
    
    public static ResultSet obtenerValores(String q){
        conectar();
        try {
            resultado = sentencia.executeQuery(q);
            //System.out.println("correcto");
        } catch (Exception e) {
        }
        return resultado;
    }
    
    
    
    
    //llenar tabla
    public static DefaultTableModel llenar_tabla(String x, DefaultTableModel md){
        DefaultTableModel modelo = new DefaultTableModel();
        modelo = md;
        resultado = obtenerValores(x);
         
        try {
            rsMetaData = resultado.getMetaData();
            int nc = rsMetaData.getColumnCount();
            
            while(resultado.next()){
                Object[] fila = new Object[nc];
                for (int j = 0; j < nc; j++) {
                    fila[j] = resultado.getObject(j+1);
                }
                modelo.addRow(fila);
        }
        }catch (Exception e) {
        }
        
        return modelo;
    }
    
    
    //obtiene el nombre de categoria para llenar tabla de productos
    public static String nombreCategoria(String x){
        String q= "SELECT nombre FROM categoria WHERE id='"+x +"'";
        resultado = obtenerValores(q);
        String nombre = "";
        
        try {
            resultado.first();
            nombre = resultado.getString(1) ;
        } catch (Exception e) { }
        return nombre;
    }
    
    //obtiene el id
    public static int id(String x){
        
        resultado = obtenerValores(x);
        int id_ob =0;
        try {
            resultado.first();
            id_ob = resultado.getInt(1);
        } catch (Exception e) { }
        
        return id_ob;
    }
    
    
    //LLENAR LISTA DE LA COLUMNA numero 1***************************************
    //para llenar un jcbx
    public static ArrayList<String> LLenarLista(String x){
        resultado = obtenerValores(x);
        ArrayList<String> lista = new ArrayList<>();

        try {
            while(resultado.next() ){
            lista.add(resultado.getString(1));
            }
        } catch (Exception e) {
        }
        return lista;
    }
    
}
