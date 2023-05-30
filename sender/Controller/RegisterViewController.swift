//
//  RegisterViewController.swift
//  sender
//
//  Created by Тимур on 23.03.2023.
//

import UIKit
import FirebaseCore
import FirebaseFirestore
import FirebaseAuth

class RegisterViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var noteLabel: UILabel!
    
    
    @IBAction func registerPressed(_ sender: UIButton) {
        
        if let email = emailTextField.text, let password = passwordTextField.text {
            Auth.auth().createUser(withEmail: email, password: password) { [self] authResult, error in
                if let e = error {
                    self.noteLabel.text = "Пароль должен состоять из 6 символов или более."
                    self.noteLabel.alpha = 0
                    view.addSubview(noteLabel)
                    
                    UIView.animate(withDuration: 2.0, delay: 0.0, options: .curveEaseInOut, animations: { [self] in
                        self.noteLabel.alpha = 1.0
                    }, completion: nil)
                } else {
                    self.performSegue(withIdentifier: K.registerSegue, sender: self)
                }
            }
        }
    }
    
    
    
}
