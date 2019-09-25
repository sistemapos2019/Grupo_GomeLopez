
package codigo;

import javax.swing.table.DefaultTableModel;

/**
 *
 * @author Miguel
 */
public class cod_parametros {
    
    String id, nombre, valor, nombreR, descripcion, telef, direcc;
    
    //llenar TABLA envia el modelo y la sentencia sql, recibe el modelo lleno*******
    public static DefaultTableModel llenar_tabla(){
        DefaultTableModel modelo = new DefaultTableModel();
        modelo.addColumn("id");
        modelo.addColumn("nombre");
        modelo.addColumn("Valor");
        
        
        String q= "SELECT * FROM parametro";
        
        return Conexion.llenar_tabla(q, modelo);
}

    public static void modificar (cod_parametros x){
        
        
        String q1 = "UPDATE parametro SET nombre =('"+ x.getNombre() +"'), valor= ('"+ x.getValor() ;
        String q2 = "') WHERE id=('"+ x.getId() + "')";
        Conexion.ejecutar(q1+q2);
    }
    
    public static cod_parametros inicio(){
        cod_parametros x = new cod_parametros();
        
        x.setNombreR(Conexion.valor("Nombre"));
        x.setDescripcion(Conexion.valor("Descripcion"));
        x.setTelef(Conexion.valor("Telefono"));
        x.setDirecc(Conexion.valor("Direccion"));
        
        return x;
    }
    
    
    public static boolean valorLogin(){
        
        String a = Conexion.valor("Login en cada pantalla");
        if (a.equals("1")==true) {
            return true;
        }
        return false;
    }
    
    
    /*******************************
    
    ***********************************/
    
    public cod_parametros() {
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

    public String getValor() {
        return valor;
    }

    public void setValor(String valor) {
        this.valor = valor;
    }

    public String getNombreR() {
        return nombreR;
    }

    public void setNombreR(String nombreR) {
        this.nombreR = nombreR;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getTelef() {
        return telef;
    }

    public void setTelef(String telef) {
        this.telef = telef;
    }

    public String getDirecc() {
        return direcc;
    }

    public void setDirecc(String direcc) {
        this.direcc = direcc;
    }
    
    
    
    
}
