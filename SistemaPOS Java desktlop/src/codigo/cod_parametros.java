
package codigo;

import javax.swing.table.DefaultTableModel;

/**
 *
 * @author Miguel
 */
public class cod_parametros {
    
    String id, nombre, valor;
    
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
    
    
    
}
