//
//  LoginViewController.swift
//  Ejercicio3Parte1
//
//  Created by Harold Padilla on 21/03/23.
//

import UIKit

class LoginViewController: UIViewController {
    
    var validacionLogin: ValidacionLogin!
    
    @IBOutlet weak var correoTextView: UITextField!
    @IBOutlet weak var claveTextView: UITextField!
    @IBOutlet weak var confirmarClaveTextView: UITextField!
    
    @IBOutlet weak var resultadoLabel: UILabel!
    
    override func viewDidLoad() {
        validacionLogin = ValidacionLogin()
    }
    
    @IBAction func crearButtonPressed(_ sender: UIButton) {
        let correo = correoTextView.text ?? String()
        let clave = claveTextView.text ?? String()
        let confirmarClave = confirmarClaveTextView.text ?? String()

        let mensaje = validacionLogin.procesarCredenciales(correo: correo, clave: clave, claveConfirmacion: confirmarClave)

        resultadoLabel.text = mensaje
        resultadoLabel.isHidden = false
    }
}
