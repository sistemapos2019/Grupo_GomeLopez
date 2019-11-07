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
import com.qoppa.pdf.PDFException;
import com.qoppa.pdf.PDFPermissionException;

import java.awt.Font;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;

import java.awt.print.PrinterException;
import java.awt.print.PrinterJob;
import java.io.File;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;

import org.apache.pdfbox.printing.PDFPageable;

import javax.swing.table.DefaultTableModel;
import org.apache.pdfbox.pdmodel.PDDocument;

public class tickets {

    public static void pdf_coc(DefaultTableModel md, String orden) throws DocumentException, FileNotFoundException {

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
        cell1.addElement(new Paragraph("Producto", FontFactory.getFont("arial", 18, Font.PLAIN, BaseColor.BLACK)));
        tabla.addCell(cell1);

        cell2.addElement(new Paragraph("Cantidad", FontFactory.getFont("arial", 18, Font.PLAIN, BaseColor.BLACK)));
        tabla.addCell(cell2);

        for (int i = 0; i < md.getRowCount(); i++) {
            if (md.getValueAt(i, 4).toString().equals("Si")) {

                tabla.addCell(md.getValueAt(i, 0).toString());

                tabla.addCell(md.getValueAt(i, 2).toString());
            }

        }

        // Añadimos la tabla al documento
        documento.add(tabla);

        //
        Barcode128 code = new Barcode128();
        code.setCode("C" + orden);
        Image img128 = code.createImageWithBarcode(ticket.getDirectContent(), BaseColor.BLACK, BaseColor.BLACK);
        img128.scalePercent(200);
        documento.add(img128);
        // Se cierra el documento
        documento.close();
        
        /*try {
            printPDF("cocina.pdf");
        } catch (IOException | PrinterException ex) {
            Logger.getLogger(tickets.class.getName()).log(Level.SEVERE, null, ex);
        }*/

    }

    
    //
    //  pdf de preparacion
    //
    public static void pdf_Nprep(DefaultTableModel md, String orden) throws DocumentException, FileNotFoundException {

        // Se crea el documento
        Document documento = new Document();

        // El OutPutStream para el fichero donde crearemos el PDF
        FileOutputStream ficheroPDF = new FileOutputStream("NoPreparacion.pdf");

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
        cell1.addElement(new Paragraph("Producto", FontFactory.getFont("arial", 18, Font.PLAIN, BaseColor.BLACK)));
        tabla.addCell(cell1);

        cell2.addElement(new Paragraph("Cantidad", FontFactory.getFont("arial", 18, Font.PLAIN, BaseColor.BLACK)));
        tabla.addCell(cell2);

        for (int i = 0; i < md.getRowCount(); i++) {
            if (md.getValueAt(i, 4).toString().equals("No")) {

                //cell.addElement(new Paragraph(md.getValueAt(i, 0).toString(), FontFactory.getFont("arial", 22,Font.PLAIN, BaseColor.BLACK)));
                //tabla.addCell(cell);
                tabla.addCell(md.getValueAt(i, 0).toString());

                tabla.addCell(md.getValueAt(i, 2).toString());
            }

        }

        // Añadimos la tabla al documento
        documento.add(tabla);

        //
        Barcode128 code = new Barcode128();
        code.setCode("P" + orden);
        Image img128 = code.createImageWithBarcode(ticket.getDirectContent(), BaseColor.BLACK, BaseColor.BLACK);
        img128.scalePercent(200);
        documento.add(img128);
        // Se cierra el documento
        documento.close();

        //imprimir();
        /*try {
            printPDF("preparacion.pdf");
        } catch (IOException | PrinterException ex) {
            Logger.getLogger(tickets.class.getName()).log(Level.SEVERE, null, ex);
        }*/

    }

    public static void imprimir() throws PrinterException, IOException {
        // Indicamos el nombre del archivo Pdf que deseamos imprimir
        PDDocument document = PDDocument.load(new File("./preparacion.pdf"));

        PrinterJob job = PrinterJob.getPrinterJob();

        if (job.printDialog() == true) {
            job.setPageable(new PDFPageable(document));

            job.print();
        }
    }

    
    
    public static void printPDF(String filename) throws FileNotFoundException, IOException, PrinterException {

        //String filename;
        //filename = "tickets.pdf";

        try {
            PDDocument pdf = PDDocument.load(new File(filename));
            PrinterJob job = PrinterJob.getPrinterJob();
            job.setPageable(new PDFPageable(pdf));
            job.print();
            pdf.close();
        } catch (PrinterException | IOException | NullPointerException e) {
            System.out.println(e);
        }

    }

}
