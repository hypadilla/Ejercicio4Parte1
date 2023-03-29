//
//  ValidacionLogin.swift
//  Ejercicio4Parte1
//
//  Created by Harold Padilla on 21/03/23.
//

import Foundation

class ValidacionLogin {
    
    private struct constantes {
        static let correoEsperado = "test@test.com"
        static let camposVacios = "Todos los campos son requeridos"
        static let claveIncorrecta = "Las contraseñas no son iguales"
        static let correoExiste = "Este correo ya existe"
        static let registroExitoso = "Registro exitoso"
    }
    
    private func validarCorreoVacio (correo: String) -> Bool {
        if (correo == String()) {
            return true
        }else{
            return false
        }
    }
    
    private func validarClaveVacio (clave: String) -> Bool {
        if (clave == String()) {
            return true
        }else{
            return false
        }
    }
    
    private func validarClaveConfirmacionVacio (claveConfirmacion: String) -> Bool {
        if (claveConfirmacion == String()) {
            return true
        }else{
            return false
        }
    }
    
    private func validarCamposVacios (correo: String, clave: String, claveConfirmacion: String) -> Bool {
        
        if (validarCorreoVacio (correo: correo) || validarClaveVacio (clave: clave) || validarClaveConfirmacionVacio(claveConfirmacion: claveConfirmacion)){
            return true
        } else {
            return false
        }
    }
    
    private func validarConfirmacionClave (clave: String, claveConfirmacion: String) -> Bool {
        if (clave == claveConfirmacion) {
            return true
        }else{
            return false
        }
    }
    
    private func correoExiste (correo: String) -> Bool {
        if (correo == constantes.correoEsperado){
            return true
        }else{
            return false
        }
    }
    
    public func procesarCredenciales (correo: String, clave: String, claveConfirmacion: String) -> String {
        if validarCamposVacios (correo: correo, clave: clave, claveConfirmacion: claveConfirmacion){
            return constantes.camposVacios
        }
        
        if !validarConfirmacionClave (clave: clave, claveConfirmacion: claveConfirmacion) {
            return constantes.claveIncorrecta
        }
        
        if correoExiste (correo: correo){
            return constantes.correoExiste
        }
        
        return constantes.registroExitoso
    }
}
