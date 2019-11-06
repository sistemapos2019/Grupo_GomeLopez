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
        modelo.addColumn("Cliente");
        modelo.addColumn("Mesero");
        modelo.addColumn("Total");
        modelo.addColumn("Estado");
        modelo.addColumn("Tiempo Preparado");
        modelo.addColumn("Tiempo Rapido");
        modelo.addColumn("Tipo");
        
        
        
        String q= "SELECT IdOrden, Mesa, Cliente, Mesero, Total, Estado, TiempoPreparado, TiempoRapido, tipo FROM dashboardprincipal2";
        
        return Conexion.llenar_tabla(q, modelo);
    }
    
    public static DefaultTableModel DashboardLlevar(){
        DefaultTableModel modelo = new DefaultTableModel();
        modelo.addColumn("Orden #");
        modelo.addColumn("Mesero");
        modelo.addColumn("cliente");
        modelo.addColumn("Total");
        modelo.addColumn("Estado");
        modelo.addColumn("Tiempo Preparado");
        modelo.addColumn("Preprarado");
        
        
        
      String q= "SELECT IdOrden, Mesero, Cliente, Total, Estado, TiempoPreparado, Preparado FROM dashboardllevar";
        
        return Conexion.llenar_tabla(q, modelo);
    }
    
}
