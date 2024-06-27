/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package pe.com.oracle.daoimpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import pe.com.oracle.config.Conexion;
import pe.com.oracle.daoi.Usuario;
import pe.com.oracle.log.UsuarioLogin;



public class UsuarioDaoimpl implements Usuario{
    Conexion cn= new Conexion(); 
    
    Connection con= null; 
    PreparedStatement ps= null;
    ResultSet rs= null; 
    @Override
    
    public List<UsuarioLogin> login(String username, String clave) {
        
        List<UsuarioLogin> lista= new ArrayList<>(); 
        
        String SQL= "SELECT username, clave " + 
                     "FROM usuario " + 
                     "WHERE username = ? AND clave = ?;"; 
         
         try {
            con = cn.getConnection();
            ps = con.prepareStatement(SQL); 
            ps.setString(1, username);
            ps.setString(2, clave);
            rs = ps.executeQuery();
             
             while (rs.next()) {    
                 
                 UsuarioLogin log= new UsuarioLogin(); 
                 
                 log.setClave(rs.getString("username"));
                 log.setClave(rs.getString("clave"));
                 log.setRol(rs.getString("rol"));
                 lista.add(log); 
             }
            
        } catch (Exception e) {
             System.out.println("Error " + e.getClass().getName() + " : " + e.getMessage() );
        }
        
        
        return lista; 
        
    }
    
    
    
}
