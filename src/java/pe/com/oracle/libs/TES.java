/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package pe.com.oracle.libs;

import com.google.gson.Gson;
import pe.com.oracle.config.Conexion;

/**
 *
 * @author User
 */
public class TES {
    
   
static Gson g = new Gson();
    
    
    public static void main(String[] args) {
        // TODO code application logic here
        if(Conexion.getConexion()!=null){
            System.out.println("Conectado");
        }else{
            System.out.println("no conectado");
        }
        
       
    }
    
}
