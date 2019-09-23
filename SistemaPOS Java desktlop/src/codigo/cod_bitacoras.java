package codigo;

import javax.swing.table.DefaultTableModel;

/**
 *
 * @author Miguel
 */
public class cod_bitacoras {
    
    
    //llenar TABLA envia el modelo y la sentencia sql, recibe el modelo lleno*******
    public static DefaultTableModel llenar_tabla(){
        DefaultTableModel modelo = new DefaultTableModel();
        
        
        modelo.addColumn("Id");
        modelo.addColumn("Usuario");
        modelo.addColumn("Fecha");
        modelo.addColumn("Suceso");
        
        
        String q= "SELECT * FROM bitacora";
        modelo =Conexion.llenar_tabla(q, modelo);
        return modelo;
    }
}
