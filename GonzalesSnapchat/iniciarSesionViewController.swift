//
//  ViewController.swift
//  GonzalesSnapchat
//
//  Created by Antony Gonzales on 20/05/24.
//

import UIKit
import Firebase
import FirebaseAuth

class iniciarSesionViewController: UIViewController {
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    @IBAction func iniciarSesionTapped(_ sender: Any) {
        Auth.auth().signIn(withEmail: emailTextField.text!, password: passwordTextField.text!){
            (user, error) in
            print("Intentando iniciar sesion")
            if error != nil{
                print("Se presento el siguiente error:  \(error)")
            }else{
                print("inicio de sesion exitoso")
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

