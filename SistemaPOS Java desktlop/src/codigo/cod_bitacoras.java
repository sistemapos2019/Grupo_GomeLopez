package codigo;

import java.sql.Date;
import javax.swing.JOptionPane;
import javax.swing.JTable;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author Miguel
 */
public class cod_bitacoras {
    
    private String id, idUsuario, suceso;
    private Date fecha;
    
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
    
    
    public static DefaultTableModel llenar_tablaRango(Date desde, Date hasta){
        DefaultTableModel modelo = new DefaultTableModel();
        
        
        modelo.addColumn("Id");
        modelo.addColumn("Usuario");
        modelo.addColumn("Fecha");
        modelo.addColumn("Suceso");
        
        
        String q= "SELECT * FROM bitacora WHERE fecha BETWEEN '" + desde + "' AND '"+ hasta + " 23:59:59'";
        modelo =Conexion.llenar_tabla(q, modelo);
        return modelo;
    }
    
    
    public static void eliminar(String x){
  
            String q = "DELETE FROM bitacora WHERE id=('"+ x +"') ";
            Conexion.ejecutar(q); 
  
    }
    
    public static void eliminarTodo(DefaultTableModel md){
        
        JTable tabla = new JTable (md);

            for (int i = 0; i < tabla.getRowCount(); i++) {
                String q = "DELETE FROM bitacora WHERE id=('"+ tabla.getValueAt(i, 0) +"') ";
                
                Conexion.ejecutar(q);
                } 

    }
    
    //registrar bitacora
    public static void registrarBitacora(cod_bitacoras x){
        String q2= "INSERT INTO bitacora  (idUsuario, suceso) VALUES ('";
        String q3 = x.getIdUsuario()+"', '" + x.getSuceso() +"') ";
        Conexion.ejecutar(q2+q3);
    }
    
    
    public static String tipoSeceso(String desc, int tipo){
        String x="";
        
        switch (tipo) {
            case 1:
                x = "Inicio sesion en "+desc;
                return x;
                
                
            case 2:
                x = "Agrego nuevo/a "+desc;
                return x;
            case 3:
                x = "Modifico un registro en "+desc;
                return x;
                
            case 4:
                x = "Elimino un registo en "+desc;
                return x;
        }
        
        return x;
    }
    
    //suceso para orden, enviar el numero de orden
    public static String sucesoOrden(String desc, int tipo){
        String x="";
        
        switch (tipo) {
            case 1:
                x = "Creo la orden #"+desc;
                return x;   
            case 2:
                x = "Modifico la orden #"+desc;
                return x;
            case 3:
                x = "Agrego o elimno productos a la orden#"+desc;
                return x;
                
            case 4:
                x = "Cobro la orden #"+desc;
                return x;
            case 5:
                x = "Cerro la orden #"+desc;
                return x;
                
        }
        
        return x;
    }
    
    
    //codigo generado

    public cod_bitacoras() {
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(String idUsuario) {
        this.idUsuario = idUsuario;
    }

    public String getSuceso() {
        return suceso;
    }

    public void setSuceso(String suceso) {
        this.suceso = suceso;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }
    
    
    
}
