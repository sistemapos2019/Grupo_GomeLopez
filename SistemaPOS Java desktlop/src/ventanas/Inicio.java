package ventanas;

import codigo.cod_usuario;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;
import javax.swing.UIManager;
import popup.Login;

/**
 *
 * @author Miguel
 */
//private cod_usuario usuario = new cod_usuario();

public class Inicio {
    
    cod_usuario usuario = new cod_usuario();
    
    /*
    private  void login (){
        Login a = new Login(null, true);
        
            a.jl_titulo.setText("Identificarse");
            a.setLocationRelativeTo(null);
            a.modoPin(false);
            a.setVisible(true);
        
            a.addWindowListener(new WindowAdapter(){
                @Override

                public void windowClosed(WindowEvent e){
                    usuario = a.Comprobar();
                    if (usuario.isEstado()==true) {
                        Dashboard v = new Dashboard();
                        v.setVisible(true);
                    }

                }
            }
            );
        
    }*/
    
    
    
    
    
        /**
     * @param args the command line arguments
     */
    //cod_usuario usuario = new cod_usuario();
    public static void main(String[] args) {
        // TODO code application logic here
        
        cod_usuario usuario = new cod_usuario();
        try {
                    UIManager.setLookAndFeel("com.sun.java.swing.plaf.windows.WindowsLookAndFeel");
                } catch (Exception e){
                    
                }
        
        Login a =  new Login(null, false);

        
            a.jl_titulo.setText("Identificarse");
            a.setLocationRelativeTo(null);
            a.modoPin(false);
            a.dash=3;
            a.setVisible(true);

  
    }
    
    
    
    
}
