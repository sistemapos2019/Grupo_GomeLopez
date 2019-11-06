package ventanas;

import javax.swing.UIManager;
import popup.Login;

/**
 *
 * @author Miguel
 */
//private cod_usuario usuario = new cod_usuario();

public class Inicio {
    

        /**
     * @param args the command line arguments
     */
    //cod_usuario usuario = new cod_usuario();
    public static void main(String[] args) {
        // TODO code application logic here

        try {
                    UIManager.setLookAndFeel("com.sun.java.swing.plaf.windows.WindowsLookAndFeel");
                } catch (Exception e){
                    
                }
        
        Login a =  new Login(null, false);

        
            //a.jl_titulo.setText("Identificarse");
            a.setLocationRelativeTo(null);
            a.modoPin(false);
            a.dash=3;
            a.setVisible(true);

  
    }
    
    public void iniciar(){
        Login a =  new Login(null, false);

        
            //a.jl_titulo.setText("Identificarse");
            a.setLocationRelativeTo(null);
            a.modoPin(false);
            a.dash=3;
            a.setVisible(true);
    }
    
    
}
