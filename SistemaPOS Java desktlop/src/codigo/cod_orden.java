package codigo;

import java.util.ArrayList;
import javax.swing.ComboBoxModel;
import javax.swing.DefaultListModel;
import javax.swing.JComboBox;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author Miguel
 */
public class cod_orden {
    
    private String id, idMesa, idUsuario, fecha, llevar, estado, observacion, Tprepa, Trapido, total, propina, formaPago, cliente;
    
    
    //llena la jlist
    public static DefaultListModel<String> lst_Categorias(){
        DefaultListModel<String> modelo = new DefaultListModel<>();
        
        String q= "SELECT nombre FROM categoria ";
        
        modelo.addElement("Todos los productos");
        modelo = Conexion.lista(q);
        
        return modelo;
    }
    
    
    //LLenar jcbx
    public static ComboBoxModel<String> llenar_cbx(){
        
        String q = "SELECT mesa FROM mesa";
        
        return Conexion.comboBox(q);
    }
    
    //llenar tabla de productos
    public static DefaultTableModel llenarTabla(String x){
        DefaultTableModel modelo = new DefaultTableModel();
        modelo.addColumn("Nombre");
        modelo.addColumn("Precio");
        modelo.addColumn("Preparado");
        modelo.addColumn("Inventario");
        
        String c= "SELECT id FROM categoria WHERE nombre='"+x +"'";
        int id = Conexion.id(c);
        
        String q= "SELECT nombre, precio, preparado, inventario FROM producto WHERE idCategoria='"+id+"'";
        
        modelo = Conexion.llenar_tabla(q, modelo);
        
        return llenarTabla2(modelo);
    }
    
    private static DefaultTableModel llenarTabla2(DefaultTableModel md) {

        int a;

        for (int i = 0; i < md.getRowCount(); i++) {

            a = (int) md.getValueAt(i, 2);
            if (a == 1) {
                md.setValueAt("Si", i, 2);
            } else {
                md.setValueAt("No", i, 2);
            }
        }

        return md;
    }
    
    
    
    public static DefaultTableModel detalleOrden(int x, DefaultTableModel modelo, DefaultTableModel md){
        String p = modelo.getValueAt(x, 0).toString();
        int fila = buscarProductoTabla(p, md);
        
        DefaultTableModel modeloPoducto = new DefaultTableModel();
        modeloPoducto = md;
        
        Object[] prod = new Object[4];
        
        
        if (fila == -1) {
            prod[0]=modelo.getValueAt(x, 0);
            prod[1]=modelo.getValueAt(x, 1);
            prod[2]="1";
            prod[3]=modelo.getValueAt(x, 1);
            modeloPoducto.addRow(prod);    
       
        } else {
            
            String pr = modeloPoducto.getValueAt(fila, 2).toString();
            int cantidad = Integer.parseInt(pr) + 1;
            double precioU = Double.parseDouble(modeloPoducto.getValueAt(fila, 1).toString());
            double precioT = Double.parseDouble(modeloPoducto.getValueAt(fila, 3).toString());
            precioT = precioT + precioU;
            
            
            modeloPoducto.setValueAt(precioT, fila, 3);
            modeloPoducto.setValueAt(cantidad, fila, 2);
                
        }
        
        
        
        return modeloPoducto;
    }
    
    public static int buscarProductoTabla(String q, DefaultTableModel tabla) {

        int fila = -1;
        for (int i = 0; i < tabla.getRowCount(); i++) {
            if (tabla.getValueAt(i, 0).toString().equals(q)) {
                fila = i;
            }
        }

        return fila;
    }
    
    public static DefaultTableModel cantidad (double v, int fila, DefaultTableModel tabla){
        
        
        
        double cantidad = Double.parseDouble(tabla.getValueAt(fila, 2).toString()) + v;
        
        if (cantidad<1) {
            return tabla;
        } else {
            double precioU = Double.parseDouble(tabla.getValueAt(fila, 1).toString()) * v;
            double precioT = Double.parseDouble(tabla.getValueAt(fila, 3).toString());
            precioT = precioT + precioU;
            tabla.setValueAt(precioT, fila, 3);
            tabla.setValueAt(cantidad, fila, 2);
        }
        
        return tabla;
    }
    

    public static DefaultTableModel detalleOrden(){
        DefaultTableModel modelo = new DefaultTableModel();
        modelo.addColumn("Producto");
        modelo.addColumn("Precio");
        modelo.addColumn("Cantidad");
        modelo.addColumn("Sub Total");
        return modelo;
    }
    
    public static String Total(DefaultTableModel modelo){

        double numero;
        double suma = 0;
        for (int i = 0; i < modelo.getRowCount(); i++) {
            numero = Double.parseDouble(modelo.getValueAt(i, 3).toString());
            suma = numero+suma;    
        }
        
        return Double.toString(suma);
    }
    
    public static String ordenId(){
        int a = Conexion.id("SELECT max(id) FROM orden");
        a =a+1;
        return Integer.toString(a);
    }
    
    public static void guardar(cod_orden x, DefaultTableModel md){
        x.setIdMesa(Integer.toString(Conexion.id("SELECT id FROM mesa WHERE mesa='"+x.getIdMesa() +"'")));
        
        
        String q1 = "INSERT INTO orden  (id, idMesa, idUsuario, cliente, estado, total, llevar) VALUES ('";
        String q2 = x.getId() +"', '"+ x.getIdMesa() +"', '"+ x.getIdUsuario() +"', '"+ x.getCliente() +"', '"+ x.getEstado() +"', '"+x.getTotal() +"', '"+x.llevar +"') ";
        //System.out.println(q1+q2);
        Conexion.ejecutar(q1+q2);
        guardarDetalle(md, x.getId());
    }
    
    public static void guardar2(cod_orden x, DefaultTableModel md){

        String q1 = "INSERT INTO orden  (id, idUsuario, cliente, estado, total, llevar) VALUES ('";
        String q2 = x.getId() +"', '"+ x.getIdUsuario() +"', '"+ x.getCliente() +"', '"+ x.getEstado() +"', '"+x.getTotal() +"', '"+x.llevar +"') ";
        //System.out.println(q1+q2);
        Conexion.ejecutar(q1+q2);
        guardarDetalle(md, x.getId());
    }
    
    
    private static void guardarDetalle(DefaultTableModel md, String orden){
        DefaultTableModel modelo = new DefaultTableModel();
        modelo = md;
        cod_detalleOrden x = new cod_detalleOrden();
        String q;
        String q2;
        for (int i = 0; i < modelo.getRowCount(); i++) {

            q = modelo.getValueAt(i, 0).toString();
            String c= "SELECT id FROM producto WHERE nombre='"+q +"'";
            int id = Conexion.id(c);
            
            x.setCantidad(modelo.getValueAt(i, 2).toString() );
            x.setIdOrden(orden);
            x.setIdProducto(Integer.toString(id));
            x.setPu(modelo.getValueAt(i, 1).toString());
            
            //x.semodelo.getValueAt(i, 3).toString();
            q = "INSERT INTO detalleorden (idOrden, idProducto, cantidad, precioUnitario) VALUES (' ";
            q2 = x.getIdOrden()+"', '"+ x.getIdProducto()+"', '"+ x.getCantidad() +"', '"+ x.getPu()+ "')";
            
            //System.out.println(q+q2);
            Conexion.ejecutar(q+q2);
        }
    }
    
    /************************************************************************
                        llenar tabla detalle orden
     * @return 
    */
    public static  DefaultTableModel tabla_detalleOrden( String orden){
        DefaultTableModel modelo = new DefaultTableModel();
        modelo.addColumn("Producto");
        modelo.addColumn("Precio");
        modelo.addColumn("Cantidad");
        
        String q= "SELECT idProducto,  precioUnitario, cantidad FROM detalleorden WHERE idOrden='"+orden+"'";
        
        modelo = Conexion.llenar_tabla(q, modelo);
        modelo = tabla_dO2(modelo);
        modelo = calcularTotalfila(modelo);
        
        return modelo;
    }
    
    public static DefaultTableModel tabla_dO2(DefaultTableModel md){
        DefaultTableModel modelo = new DefaultTableModel();
        modelo = md;
        String x;
        String c;
        
        for (int i = 0; i < md.getRowCount(); i++) {
            x= md.getValueAt(i, 0).toString();
            c = Conexion.nombreProducto(x);            
            md.setValueAt(c, i, 0);
        }

        return md;
    }
    public static DefaultTableModel calcularTotalfila(DefaultTableModel md){
        DefaultTableModel modelo = new DefaultTableModel();
        modelo = md;
        md.addColumn("Sub Total");
        double suma = 0;
        double precio;
        double cantidad;
        String x;
        String c;
        
        for (int i = 0; i < md.getRowCount(); i++) {
            precio = Double.parseDouble(md.getValueAt(i, 1).toString() );
            cantidad= Double.parseDouble(md.getValueAt(i, 2).toString());
            suma= precio * cantidad;
            
            
            md.setValueAt(suma, i, 3);
        }

        return md;
    }
    
    
    /*
            Cobrar orden
    */
    public static void cobrar(String orden){
        String q = "UPDATE orden SET estado = 'CC' WHERE id='"+orden+"'";
        Conexion.ejecutar(q);
    }
    
    
    
    /*
                Guardar detalle a orden existente
    */
    public static void DetalleOrdenExistente(DefaultTableModel md, String orden, double tt, boolean agregarP){
        DefaultTableModel modelo = new DefaultTableModel();
        modelo = md;
        cod_detalleOrden x = new cod_detalleOrden();
        String q;
        String q2;
        
        if (agregarP==true) {
            String ttAnterior="SELECT total FROM orden WHERE id='" + orden + "'";
            ttAnterior = Conexion.obtnerRegitro(ttAnterior);
            tt = Double.parseDouble(ttAnterior) + tt;

            Conexion.ejecutar("UPDATE orden SET total='"+ tt +"' WHERE id= '"+ orden +"' ");
        }
        
        
        for (int i = 0; i < modelo.getRowCount(); i++) {

            q = modelo.getValueAt(i, 0).toString();
            String c= "SELECT id FROM producto WHERE nombre='"+q +"'";
            int id = Conexion.id(c);
            
            x.setCantidad(modelo.getValueAt(i, 2).toString() );
            x.setIdOrden(orden);
            x.setIdProducto(Integer.toString(id));
            x.setPu(modelo.getValueAt(i, 1).toString());
            
            String reg = "SELECT cantidad FROM detalleorden WHERE idOrden='"+ orden +"' && idProducto ='" +id + "' ";
            
            if (Conexion.comprobarExiste(reg) == true) {
                double cAnterior = Double.parseDouble(Conexion.obtnerRegitro(reg) );
                double cMas= Double.parseDouble( x.getCantidad() );
                
                cMas = cAnterior + cMas;
                
                q = "UPDATE detalleorden SET cantidad=('";
                q2 = cMas+"') WHERE idOrden='"+ orden +"' && idProducto ='" +id + "' " ;

                Conexion.ejecutar(q+q2);
                
            } else {
                //x.semodelo.getValueAt(i, 3).toString();
                q = "INSERT INTO detalleorden (idOrden, idProducto, cantidad, precioUnitario) VALUES (' ";
                q2 = x.getIdOrden()+"', '"+ x.getIdProducto()+"', '"+ x.getCantidad() +"', '"+ x.getPu()+ "')";

                //System.out.println(q+q2);
                Conexion.ejecutar(q+q2);
            }     
            
        }
    }
    
    
    
    /******************************************************************************************************************
     *                                Guardar orden modificada
    *******************************************************************************************************************/
    public static void guardaOrdenModif(cod_orden x, ArrayList<String> prodEli, String orden, DefaultTableModel modelo){
        double t = Double.parseDouble(x.getTotal());
        
        eliminarProductos(prodEli, orden);
        String q1;
        if (x.getLlevar().equals("1")) {
            q1 = "UPDATE orden SET llevar='1', idMesa=NULL, cliente='"+ x.getCliente() +"', total='"+ t +"' WHERE id='"+ orden +"'" ;
            Conexion.ejecutar(q1);
        }else{
            x.setIdMesa(Integer.toString(Conexion.id("SELECT id FROM mesa WHERE mesa='"+x.getIdMesa() +"'")));
            q1 = "UPDATE orden SET llevar='0', idMesa='"+ x.getIdMesa() +"', cliente='"+ x.getCliente() +"', total='"+ t +"' WHERE id='"+ orden +"'" ;
            Conexion.ejecutar(q1);
        }
        
        modifDetalleOrden(modelo, orden);
    }
    
    
    
    private static void eliminarProductos(ArrayList<String> prodEli, String orden){
        
        for (int i = 0; i < prodEli.size(); i++) {

            String q = prodEli.get(i);
            //System.out.println(q);
            String c= "SELECT id FROM producto WHERE nombre='"+q +"'";
            int id = Conexion.id(c);
            
            q= "DELETE FROM detalleorden WHERE idOrden='"+ orden+ "' and idProducto='"+ id+ "'";

            Conexion.ejecutar(q);
            
        }
        
    }
    
    //desde la ventana de modificar
    private static void modifDetalleOrden(DefaultTableModel md, String orden){
        
        DefaultTableModel modelo = new DefaultTableModel();
        modelo = md;
        cod_detalleOrden x = new cod_detalleOrden();
        String q;
        String q2;
        

        for (int i = 0; i < modelo.getRowCount(); i++) {

            q = modelo.getValueAt(i, 0).toString();
            String c= "SELECT id FROM producto WHERE nombre='"+q +"'";
            int id = Conexion.id(c);
            
            x.setCantidad(modelo.getValueAt(i, 2).toString() );
            
            q = "UPDATE detalleorden SET cantidad=('";
            q2 = x.getCantidad()+"') WHERE idOrden='"+ orden +"' && idProducto ='" +id + "' " ;

            Conexion.ejecutar(q+q2);
   
        }
        
    }
    
    
    //cerrar orden
    public static void cerrarOrden(String orden){
        String q = "UPDATE orden SET estado ='CC' WHERE id='" + orden +"'" ;
        Conexion.ejecutar(q);
    }
    
    
    
    //constructor  -- set & get
    

    public cod_orden() {
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getIdMesa() {
        return idMesa;
    }

    public void setIdMesa(String idMesa) {
        this.idMesa = idMesa;
    }

    public String getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(String idUsuario) {
        this.idUsuario = idUsuario;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public String getLlevar() {
        return llevar;
    }

    public void setLlevar(String llevar) {
        this.llevar = llevar;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public String getObservacion() {
        return observacion;
    }

    public void setObservacion(String observacion) {
        this.observacion = observacion;
    }

    public String getTprepa() {
        return Tprepa;
    }

    public void setTprepa(String Tprepa) {
        this.Tprepa = Tprepa;
    }

    public String getTrapido() {
        return Trapido;
    }

    public void setTrapido(String Trapido) {
        this.Trapido = Trapido;
    }

    public String getTotal() {
        return total;
    }

    public void setTotal(String total) {
        this.total = total;
    }

    public String getPropina() {
        return propina;
    }

    public void setPropina(String propina) {
        this.propina = propina;
    }

    public String getFormaPago() {
        return formaPago;
    }

    public void setFormaPago(String formaPago) {
        this.formaPago = formaPago;
    }

    public String getCliente() {
        return cliente;
    }

    public void setCliente(String cliente) {
        this.cliente = cliente;
    }

   
    
    
    
}
