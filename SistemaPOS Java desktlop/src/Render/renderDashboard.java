package Render;

import codigo.Conexion;
import java.awt.Color;
import java.awt.Component;
import javax.swing.JTable;
import javax.swing.SwingConstants;
import javax.swing.table.DefaultTableCellRenderer;

/**
 *
 * @author Miguel
 */
public class renderDashboard extends DefaultTableCellRenderer{
    double rapido = Double.parseDouble(Conexion.valorId("10"));
    double preparado = Double.parseDouble(Conexion.valorId("11"));
    
    @Override
    public Component getTableCellRendererComponent(JTable jtable, Object o, boolean bln, boolean bln1, int row, int col) {
        
        
        
        super.getTableCellRendererComponent(jtable, o, bln, bln1, row, col);

        this.setBackground(Color.white);
        this.setForeground(Color.black);
        this.setHorizontalAlignment(SwingConstants.LEFT);
        
        switch (col) {

            case 4:
                this.setHorizontalAlignment(SwingConstants.RIGHT);
                break;

            case 5:
                this.setHorizontalAlignment(SwingConstants.CENTER);
                break;
            
            case 6:
                if (o instanceof Long) {
                    long valorP = (Long) o;
                    this.setHorizontalAlignment(SwingConstants.RIGHT);
                    if (valorP > preparado) {
                        this.setBackground(Color.red);
                        this.setForeground(Color.white);

                    } else {
                        this.setBackground(Color.green);
                        this.setForeground(Color.black);
                    }
                    return this;
                }

                break;

            case 7:
                if (o instanceof Long) {
                    long valorR = (Long) o;
                    this.setHorizontalAlignment(SwingConstants.RIGHT);
                    if (valorR > rapido) {
                        this.setBackground(Color.red);
                        this.setForeground(Color.white);
                    } else {
                        this.setBackground(Color.green);
                        this.setForeground(Color.black);
                    }
                    return this;
                }

                break;
                
            case 8:
                this.setHorizontalAlignment(SwingConstants.CENTER);
                break;

        }
        
        if (bln==true) {
            this.setBackground(new Color(0, 120, 215, 255));
            this.setForeground(Color.white);
        }else{
            this.setBackground(Color.white);
        }
        

        
        return this;
    }
    
    
    
    
}
