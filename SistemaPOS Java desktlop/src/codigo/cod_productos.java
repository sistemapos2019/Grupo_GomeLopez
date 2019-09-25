package codigo;

import java.util.ArrayList;
import javax.swing.JOptionPane;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author Miguel
 */
public class cod_productos {

    String id, nombre, precio, inventario, preparado, categoria;

    //llenar TABLA envia el modelo y la sentencia sql, recibe el modelo lleno*******
    public static DefaultTableModel llenar_tablaP(DefaultTableModel md) {
        DefaultTableModel modelo = new DefaultTableModel();
        modelo = md;
        String q = "SELECT * FROM producto";
        md = Conexion.llenar_tabla(q, md);
        md = llenarTabla2(md);
        return md;
    }

    //**************************************************************************
    //llenar la tabla con los nombres de la categoria
    //**************************************************************************
    public static DefaultTableModel llenarTabla2(DefaultTableModel md) {
        DefaultTableModel modelo = new DefaultTableModel();
        modelo = md;
        String x;
        String c;
        int a;

        for (int i = 0; i < md.getRowCount(); i++) {
            x = md.getValueAt(i, 5).toString();
            c = Conexion.nombreCategoria(x);
            md.setValueAt(c, i, 5);

            a = (int) md.getValueAt(i, 4);
            if (a == 1) {
                md.setValueAt("Si", i, 4);
            } else {
                md.setValueAt("No", i, 4);
            }
        }

        return md;
    }

    public static int obtenerID() {
        int a = Conexion.id("SELECT max(id) FROM producto");
        a = a + 1;
        return a;
    }

    public static void eliminar(String x) {

            String q = "DELETE FROM producto WHERE id=('" + x + "') ";
            Conexion.ejecutar(q);
    }

    public static ArrayList<String> llenarJcbx() {
        ArrayList<String> lista = new ArrayList<>();
        String q = "SELECT nombre FROM categoria";
        lista = Conexion.LLenarLista(q);
        return lista;
    }
    
    //guardar productos
    public static void agregar(cod_productos x){
        String q= "SELECT id FROM categoria WHERE nombre='"+x.getCategoria() +"'";
        int idC = Conexion.id(q);
        
        String q2= "INSERT INTO producto  (id, nombre, precio, inventario, preparado, idCategoria) VALUES ('";
        String q3 = x.getId()+"', '" + x.getNombre() +"', '"+x.getPrecio()+ "', '"+ x.getInventario() +"', '"+ x.getPreparado() +"', '"+ idC +"') ";
        Conexion.ejecutar(q2+q3);
    } 

    
    public static void modificar (cod_productos x){
        String q= "SELECT id FROM categoria WHERE nombre='"+x.getCategoria() +"'";
        int idC = Conexion.id(q);
        
        String q1 = "UPDATE producto SET nombre =('"+ x.getNombre() +"'), precio= ('"+ x.getPrecio() +"'), inventario = ('" + x.getInventario() +"'), preparado =('" +x.getPreparado()+"')," ;
        String q2 = " idCategoria=('"+ idC  +"') WHERE id=('"+ x.getId() + "')";
        Conexion.ejecutar(q1+q2);
    }
    
    
    
    
    
    //*********************************

    public cod_productos(String id, String nombre, String precio, String inventario, String preparado, String categoria) {
        this.id = id;
        this.nombre = nombre;
        this.precio = precio;
        this.inventario = inventario;
        this.preparado = preparado;
        this.categoria = categoria;
    }

    public cod_productos() {
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

    public String getPrecio() {
        return precio;
    }

    public void setPrecio(String precio) {
        this.precio = precio;
    }

    public String getInventario() {
        return inventario;
    }

    public void setInventario(String inventario) {
        this.inventario = inventario;
    }

    public String getPreparado() {
        return preparado;
    }

    public void setPreparado(String preparado) {
        this.preparado = preparado;
    }

    public String getCategoria() {
        return categoria;
    }

    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }
    
}
