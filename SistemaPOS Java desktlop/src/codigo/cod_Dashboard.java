package codigo;

import javax.swing.table.DefaultTableModel;

/**
 *
 * @author Miguel
 */
public class cod_Dashboard {
    
    
    public static DefaultTableModel llenarTabla(){
        DefaultTableModel modelo = new DefaultTableModel();
        modelo.addColumn("Orden #");
        modelo.addColumn("Mesa");
        modelo.addColumn("cliente");
        modelo.addColumn("Mesero");
        modelo.addColumn("Total");
        modelo.addColumn("Estado");
        modelo.addColumn("LLevar");
        modelo.addColumn("Tiempo Preparado");
        modelo.addColumn("Preprarado");
        modelo.addColumn("Tiempo Rapido");
        modelo.addColumn("Rapido");
        
        
        
        String q= "SELECT IdOrden, Mesa, Cliente, Mesero, Total, Estado, Llevar, TiempoPreparado, Preparado, TiempoRapido, Rapido FROM dashboardprincipal";
        
        return Conexion.llenar_tabla(q, modelo);
    }
    
}
