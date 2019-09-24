package codigo;

import static codigo.cod_mesas.eliminar_mesa;
import javax.swing.JOptionPane;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author Miguel
 */
public class cod_categorias {
    
    
    public static DefaultTableModel llenar_tablaC(){
        DefaultTableModel modelo = new DefaultTableModel();
        modelo.addColumn("id");
        modelo.addColumn("nombre");
        String q= "SELECT * FROM categoria";
        
        return Conexion.llenar_tabla(q, modelo);
    }
    
    public static void agregar_categoria(String x, String id){
        String q = "INSERT INTO categoria (id, nombre) VALUES ('"+ id +"', '"+ x +"' ) ";
        Conexion.ejecutar(q); 
    }
    
    public static void eliminar(String x){
        
        
        int test = JOptionPane.showConfirmDialog(null, "Confirmar eliminacion");

        if (test==0) {   
            String q = "DELETE FROM categoria WHERE id=('"+ x +"') ";
            Conexion.ejecutar(q); 
        }
        
        
    }
    
    public static int obtenerID(){
        int a = Conexion.id("SELECT max(id) FROM categoria");
        a =a+1;
        return a;
    }
    
    
    //update
    public static void modificar (String m1, String id1){
        String q = "UPDATE categoria SET nombre =('"+ m1 +"') WHERE id=('"+ id1 + "')";
        Conexion.ejecutar(q);
    }
    
}
