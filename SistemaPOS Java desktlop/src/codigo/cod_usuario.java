package codigo;

import javax.swing.JOptionPane;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author Miguel
 */
public class cod_usuario {
    String id, nombre, login, clave, pin, rol;
    
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
    
    
    public static int obtenerID() {
        int a = Conexion.id("SELECT max(id) FROM usuario");
        a = a + 1;
        return a;
    }
    
    
    public static void eliminar(String x) {

        int test = JOptionPane.showConfirmDialog(null, "Confirmar eliminacion");

        if (test == 0) {
            String q = "DELETE FROM usuario WHERE id=('" + x + "') ";
            Conexion.ejecutar(q);
        }

    }
    
    
    //AGREGAR NUEVO
    public static void agregar(cod_usuario x){
        
        
        String q2= "INSERT INTO usuario  (id, nombreCompleto, login, clave, pin, rol) VALUES ('";
        String q3 = x.getId()+"', '" + x.getNombre() +"', '"+x.getLogin()+ "', '"+ x.getClave()+"', '"+ x.getPin()+"', '"+ x.getRol() +"') ";
        Conexion.ejecutar(q2+q3);
    } 
    
    public static void modificar (cod_usuario x){
        
        
        String q1 = "UPDATE usuario SET nombreCompleto =('"+ x.getNombre() +"'), login= ('"+ x.getLogin()+"'), clave = ('" + x.getClave()+"'), pin =('" +x.getPin()+"')," ;
        String q2 = " rol=('"+ x.getRol()  +"') WHERE id=('"+ x.getId() + "')";
        Conexion.ejecutar(q1+q2);
    }
    
    
    
    //***********************************************************************
    //CODIGO GENERADO

    public cod_usuario() {
    }

    public cod_usuario(String id, String nombre, String login, String clave, String pin, String rol) {
        this.id = id;
        this.nombre = nombre;
        this.login = login;
        this.clave = clave;
        this.pin = pin;
        this.rol = rol;
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

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getClave() {
        return clave;
    }

    public void setClave(String clave) {
        this.clave = clave;
    }

    public String getPin() {
        return pin;
    }

    public void setPin(String pin) {
        this.pin = pin;
    }

    public String getRol() {
        return rol;
    }

    public void setRol(String rol) {
        this.rol = rol;
    }
    
}
