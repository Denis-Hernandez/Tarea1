/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

public class csUsuario {
    private String Nombre, Password;

    public csUsuario(String Nombre, String Password) {
        this.Nombre = Nombre;
        this.Password = Password;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public String getPassord() {
        return Password;
    }

    public void setPassord(String Password) {
        this.Password = Password;
    }
    
    public boolean validarPassword(){
        return "UMG2022".equals(Nombre) && "2022".equals(Password);
    }
    
}
