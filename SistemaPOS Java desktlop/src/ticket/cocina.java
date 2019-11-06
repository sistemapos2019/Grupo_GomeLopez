package ticket;
/**
 *
 * @author Miguel
 */

import com.itextpdf.text.BaseColor;
import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.FontFactory;
import com.itextpdf.text.Image;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.Barcode128;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;
import com.itextpdf.text.pdf.PdfPCell;
import java.awt.Font;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;

import javax.swing.table.DefaultTableModel;

public class cocina {
    
    public static void pdf_coc(DefaultTableModel md, String orden) throws DocumentException, FileNotFoundException{
        
        // Se crea el documento
        Document documento = new Document();
        
        // El OutPutStream para el fichero donde crearemos el PDF
        FileOutputStream ficheroPDF = new FileOutputStream("cocina.pdf");
        
        // Se asocia el documento de OutPutStream
        PdfWriter ticket = PdfWriter.getInstance(documento, ficheroPDF);
        
        // Se abre el documento
        documento.open();
        
        // Parrafo
        Paragraph titulo = new Paragraph("Ticket cocina \n\n",
                FontFactory.getFont("arial",
                        22,
                        Font.BOLD,
                        BaseColor.BLUE
                        )
        );
        
        // Añadimos el titulo al documento
        documento.add(titulo);
        
        // Creamos una tabla
        PdfPTable tabla = new PdfPTable(2);
        tabla.getDefaultCell().setBorder(0);
        tabla.setWidths(new int[]{5, 2});
        PdfPCell cell1 = new PdfPCell();
        PdfPCell cell2 = new PdfPCell();
        cell1.addElement(new Paragraph("Producto", FontFactory.getFont("arial", 18,Font.PLAIN, BaseColor.BLACK)));
        tabla.addCell(cell1);
        
        cell2.addElement(new Paragraph("Cantidad", FontFactory.getFont("arial", 18,Font.PLAIN, BaseColor.BLACK)));
        tabla.addCell(cell2);
        
        for (int i = 0; i < md.getRowCount(); i++) {
            if (md.getValueAt(i, 4).toString().equals("Si")) {
                
                //cell.addElement(new Paragraph(md.getValueAt(i, 0).toString(), FontFactory.getFont("arial", 22,Font.PLAIN, BaseColor.BLACK)));
                //tabla.addCell(cell);
                
                //cell.addElement(new Paragraph(md.getValueAt(i, 2).toString(), FontFactory.getFont("arial", 22,Font.PLAIN, BaseColor.BLACK)));
                //tabla.addCell(cell);
                
                
                
                tabla.addCell(md.getValueAt(i, 0).toString());
                
                tabla.addCell(md.getValueAt(i, 2).toString());
            }
   
        }

        
        
        // Añadimos la tabla al documento
        documento.add(tabla);
        
        
        //
        Barcode128 code = new Barcode128();
        code.setCode("C"+orden);
        Image img128 = code.createImageWithBarcode(ticket.getDirectContent(), BaseColor.BLACK, BaseColor.BLACK);
        img128.scalePercent(200);
        documento.add(img128);
        // Se cierra el documento
        documento.close();
    
        
    }
    
  
        public static void pdf_prep(DefaultTableModel md, String orden) throws DocumentException, FileNotFoundException{
        
        // Se crea el documento
        Document documento = new Document();
        
        // El OutPutStream para el fichero donde crearemos el PDF
        FileOutputStream ficheroPDF = new FileOutputStream("preparacion.pdf");
        
        // Se asocia el documento de OutPutStream
        PdfWriter ticket = PdfWriter.getInstance(documento, ficheroPDF);
        
        // Se abre el documento
        documento.open();
        
        // Parrafo
        Paragraph titulo = new Paragraph("Ticket preparacion \n\n",
                FontFactory.getFont("arial",
                        22,
                        Font.BOLD,
                        BaseColor.BLUE
                        )
        );
        
        // Añadimos el titulo al documento
        documento.add(titulo);
        
        // Creamos una tabla
        PdfPTable tabla = new PdfPTable(2);
        tabla.getDefaultCell().setBorder(0);
        tabla.setWidths(new int[]{5, 2});
        PdfPCell cell1 = new PdfPCell();
        PdfPCell cell2 = new PdfPCell();
        cell1.addElement(new Paragraph("Producto", FontFactory.getFont("arial", 18,Font.PLAIN, BaseColor.BLACK)));
        tabla.addCell(cell1);
        
        cell2.addElement(new Paragraph("Cantidad", FontFactory.getFont("arial", 18,Font.PLAIN, BaseColor.BLACK)));
        tabla.addCell(cell2);
        
        for (int i = 0; i < md.getRowCount(); i++) {
            if (md.getValueAt(i, 4).toString().equals("No")) {
                
                //cell.addElement(new Paragraph(md.getValueAt(i, 0).toString(), FontFactory.getFont("arial", 22,Font.PLAIN, BaseColor.BLACK)));
                //tabla.addCell(cell);
                
                //cell.addElement(new Paragraph(md.getValueAt(i, 2).toString(), FontFactory.getFont("arial", 22,Font.PLAIN, BaseColor.BLACK)));
                //tabla.addCell(cell);
                
                
                
                tabla.addCell(md.getValueAt(i, 0).toString());
                
                tabla.addCell(md.getValueAt(i, 2).toString());
            }
   
        }

        
        
        // Añadimos la tabla al documento
        documento.add(tabla);
        
        
        //
        Barcode128 code = new Barcode128();
        code.setCode("P"+orden);
        Image img128 = code.createImageWithBarcode(ticket.getDirectContent(), BaseColor.BLACK, BaseColor.BLACK);
        img128.scalePercent(200);
        documento.add(img128);
        // Se cierra el documento
        documento.close();
    
        
    }
    
    
}
