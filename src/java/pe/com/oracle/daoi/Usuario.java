/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package pe.com.oracle.daoi;

import java.util.List;
import pe.com.oracle.log.UsuarioLogin;

/**
 *
 * @author User
 */
public interface Usuario {
    
     public List<UsuarioLogin> login(String username, String clave);
        
}
