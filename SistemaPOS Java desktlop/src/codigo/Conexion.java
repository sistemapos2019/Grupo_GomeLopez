package codigo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.Statement;
import java.util.ArrayList;
import javax.swing.DefaultListModel;
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
    
    
    private boolean a;  //true si es correcto el inicio
    private String error, rol, id, nombre;   //envia el erro en inicio
    public boolean exito=false; //true exito, false fracaso en ejecutar sql
     
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
    
    
    //login
    public static Conexion login(String login, String clave, String pin){
        Conexion x = new Conexion();
        String q= "SELECT id, nombreCompleto, clave, rol, pin FROM usuario WHERE login ='"+login +"' OR pin ='" +pin+ "' " ;
        resultado = obtenerValores(q);
        x.setA(false);
        
        try {
            if (resultado.next()) {
                System.out.println("");
                if (clave.equals(resultado.getString("clave")) || pin.equals(resultado.getString("pin"))) {
                    
                    x.setA(true);
                    x.setId(resultado.getString("id"));
                    x.setNombre(resultado.getString("nombreCompleto"));
                    x.setRol(resultado.getString("rol"));
                    
                } else {
                    x.setError("clave incorrecta");
                }
                
            } else{
                x.setError("Usuario incorrecto");
            }
        } catch (Exception e) {
        }
        
        return x;
    }
    
    
    public static String valor(String x){
        String q= "SELECT valor FROM parametro WHERE nombre='"+ x +"'";
        resultado = obtenerValores(q);
        String nombre = "";
        
        try {
            resultado.first();
            nombre = resultado.getString(1) ;
        } catch (Exception e) { }
        
        return nombre;
    }
    
    public static String valorId(String x){
        String q= "SELECT valor FROM parametro WHERE id='"+ x +"'";
        resultado = obtenerValores(q);
        String nombre = "";
        
        try {
            resultado.first();
            nombre = resultado.getString(1) ;
        } catch (Exception e) { }
        
        return nombre;
    }
    
    
    public static DefaultListModel<cod_parametros> llenar_modlista(String x){
        DefaultListModel<cod_parametros> modelo = new DefaultListModel<>();
        cod_parametros fila = new cod_parametros();
        resultado = obtenerValores(x);
        try {           
            while(resultado.next()){
                fila.setId(resultado.getString(1));
                fila.setValor(resultado.getString(2));
                modelo.addElement(fila);

            }
        } catch (Exception e) {
        }
        return modelo;
    }
    
    
    
    public void Exito(boolean x){
        exito= x;
    }
    
    
    //***************************
    // para el login

    public Conexion() {
    }

    public boolean isA() {
        return a;
    }

    public void setA(boolean a) {
        this.a = a;
    }

    public String getError() {
        return error;
    }

    public void setError(String error) {
        this.error = error;
    }

    public String getRol() {
        return rol;
    }

    public void setRol(String rol) {
        this.rol = rol;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    
    
    
}
