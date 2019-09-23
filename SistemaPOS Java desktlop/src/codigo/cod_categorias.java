package codigo;

import javax.swing.table.DefaultTableModel;

/**
 *
 * @author Miguel
 */
public class cod_categorias {
    
    
    public static DefaultTableModel llenar_tablaC(DefaultTableModel md){
        DefaultTableModel modelo = new DefaultTableModel();
        modelo = md;
        String q= "SELECT * FROM categoria";
        
        return Conexion.llenar_tabla(q, md);
    }
    
    public static void agregar_categoria(String x){
        String q = "INSERT INTO categoria (nombre) VALUES ('"+ x +"') ";
        Conexion.ejecutar(q); 
    }
    
    public static void eliminar_categoria(String x){
        
        String q = "DELETE FROM categoria WHERE id=('"+ x +"') ";
        Conexion.ejecutar(q);
    }
    
}
