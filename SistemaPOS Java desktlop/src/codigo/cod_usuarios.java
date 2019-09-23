package codigo;

import javax.swing.table.DefaultTableModel;

/**
 *
 * @author Miguel
 */
public class cod_usuarios {
    
    
    //llenar TABLA envia el modelo y la sentencia sql, recibe el modelo lleno*******
    public static DefaultTableModel llenar_tabla(){
        DefaultTableModel modelo = new DefaultTableModel();
        
        
        modelo.addColumn("Id");
        modelo.addColumn("Nombre");
        modelo.addColumn("Login");
        modelo.addColumn("Clave");
        modelo.addColumn("Pin");
        modelo.addColumn("Rol");
        
        String q= "SELECT * FROM usuario";
        modelo =Conexion.llenar_tabla(q, modelo);
        return modelo;
    }
}
