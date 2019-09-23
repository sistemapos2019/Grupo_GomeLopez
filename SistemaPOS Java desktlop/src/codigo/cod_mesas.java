package codigo;

import javax.swing.JOptionPane;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author Miguel
 */
public class cod_mesas {
    
    
    //llenar TABLA envia el modelo y la sentencia sql, recibe el modelo lleno*******
    public static DefaultTableModel llenar_tabla(DefaultTableModel md){
        DefaultTableModel modelo = new DefaultTableModel();
        modelo = md;
        String q= "SELECT * FROM mesa";
        md =Conexion.llenar_tabla(q, md);
        return md;
    }
    
    public static void agregarMesa(String nombre){
        System.out.println(nombre);
    }
    
    
    public static void agregar_mesa(String x, String id1){
        String q = "INSERT INTO mesa (id, mesa) VALUES ('"+ id1 +"', '"+ x +"') ";
        Conexion.ejecutar(q); 
    }
    
    public static void eliminar_mesa(String x){
        
        String q = "DELETE FROM mesa WHERE id=('"+ x +"') ";
        Conexion.ejecutar(q);
    }
    
    public static int obtenerID(){
        int a = Conexion.id("SELECT max(id) FROM mesa");
        a =a+1;
        return a;
    }
    
    
    //eliminar
    public static void eliminar(String x){
        int test = JOptionPane.showConfirmDialog(null, "Confirmar eliminacion");

        if (test==0) {    
            eliminar_mesa(x);   
        }
            
        
        
    }
    
    
    //update
    public static void modificar (String m1, String id1){
        String q = "UPDATE mesa SET mesa =('"+ m1 +"') WHERE id=('"+ id1 + "')";
        Conexion.ejecutar(q);
    }
    
    
    

    
}
