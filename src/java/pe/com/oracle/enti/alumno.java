/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package pe.com.oracle.enti;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;

/**
 *
 * @author User
 */
@Data
@AllArgsConstructor
@NoArgsConstructor

public class alumno {
    private int idnombre; 
    private String nombre;
    private String apellido;
    private String correo; 
    private String  telefono; 
    private int idescuela; 
    
    
}
