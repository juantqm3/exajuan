/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package pe.com.oracle.enti;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 *
 * @author User
 */

@Data
@AllArgsConstructor
@NoArgsConstructor

public class empleado {
    private int idempleado;
    private String monbre; 
    private String apellido; 
    private String correo; 
    private String telefono; 
}
