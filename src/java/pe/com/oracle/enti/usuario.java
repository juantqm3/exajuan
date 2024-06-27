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

public class usuario {
    private int idusuario; 
    private String username; 
    private String clave;
    private String estado;
    private int idempleado; 
    private int idrol; 
} 