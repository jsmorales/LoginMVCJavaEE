/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Login_mvc.modelos;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;



/**
 *
 * @author Administrator
 */
public class Consultas extends Conexion{
    
    /*se extiende de la conexion*/
    
    /*Este modelo ejecutara todas las consultas*/

    /**
     *
     * @param user
     * @param pass
     * @return
     * @throws SQLException
     */

    public boolean Autenticacion( String user, String pass) throws SQLException{
      ResultSet rs = null;
      Statement st = connecta.createStatement();
      String consulta = "SELECT * FROM `usuarios`";
      rs = st.executeQuery(consulta);
      
      while(rs.next()){
          /*System.out.println(rs.getString("nombre"));
          System.out.println(rs.getString("pass"));*/
          if(user.equals(rs.getString("nombre")) && pass.equals(rs.getString("pass"))){
              return true;
          };
              
      };
      
      return false;  
    };
    
    /**
     *
     * @param args
     * @throws SQLException
     
    public static void main(String[] args) throws SQLException{
        Consultas con = new Consultas();
        System.out.println(con.Autenticacion("test1", "123"));
    };*/
}
