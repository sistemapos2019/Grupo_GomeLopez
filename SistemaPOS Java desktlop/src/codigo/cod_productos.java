package codigo;

import javax.swing.table.DefaultTableModel;

/**
 *
 * @author Miguel
 */
public class cod_productos {
    
    
    //llenar TABLA envia el modelo y la sentencia sql, recibe el modelo lleno*******
    public static DefaultTableModel llenar_tablaP(DefaultTableModel md){
        DefaultTableModel modelo = new DefaultTableModel();
        modelo = md;
        String q= "SELECT * FROM producto";
        md =Conexion.llenar_tabla(q, md);
        md = llenarTabla2(md);
        return md;
    }
    
    //**************************************************************************
    //llenar la tabla con los nombres de la categoria
    //**************************************************************************
    public static DefaultTableModel llenarTabla2(DefaultTableModel md){
        DefaultTableModel modelo = new DefaultTableModel();
        modelo = md;
        String x;
        String c;
        int a;
        
        for (int i = 0; i < md.getRowCount(); i++) {
            x= md.getValueAt(i, 5).toString();
            c = Conexion.nombreCategoria(x);
            md.setValueAt(c, i, 5);
            
            a = (int) md.getValueAt(i, 4);
            if (a==1){
                md.setValueAt("Si", i, 4);
            } else{
                md.setValueAt("No", i, 4);
            }
        }

        return md;
    }
    
    
}
