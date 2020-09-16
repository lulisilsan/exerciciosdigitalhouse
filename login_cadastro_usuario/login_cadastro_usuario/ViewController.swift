//
//  ViewController.swift
//  login_cadastro_usuario
//
//  Created by Luciana on 15/09/20.
//  Copyright © 2020 Luciana Santana. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tfEmail: UITextField!
    @IBOutlet weak var tfPassword: UITextField!
    
    var listUsers = [User]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tfEmail.delegate = self
        tfPassword.delegate = self
        
    }
    
    //BOTÃO LOGIN
    @IBAction func btLogin(_ sender: Any) {
        let isValid = validateFields()
        if isValid {
            let user = User(username: tfEmail.text!, password: tfPassword.text!)
            loginUser(newUser: user)
        }
    }
    
    //BOTÃO CADASTRAR
    @IBAction func btRegister(_ sender: Any) {
        if validateFields() {
            let user = User(username: tfEmail.text!, password: tfPassword.text!)
            insertUser(newUser: user)
        }
    }
    
    //LOGAR USUÁRIO
    func loginUser (newUser: User) {
        if listUsers.isEmpty {
            showAlerts(title: "Error", message: "Usuário inválido")
        } else {
            for user in listUsers {
                if (user.username == newUser.username) && (user.password == newUser.password) {
                   showAlerts(title: "Sucesso", message: "Login realizado com sucesso")
                } else {
                   showAlerts(title: "Error", message: "Usuário inválido")
                  }
            }
        }
        
    }
    
    //VALIDAR CAMPOS
    func validateFields() -> Bool {
        var fieldValid = true
        if tfEmail.text == nil || tfPassword.text!.isEmpty {
            fieldValid = false
            showAlerts(title:"Error", message: "Informar o e-mail")
        } else if tfPassword.text == nil || tfPassword.text!.isEmpty {
            fieldValid = false
            showAlerts(title: "Error", message: "Informar a senha")
        }
        return fieldValid
    }

    // VALIDAR USUÁRIO
    func validateUser(newUser: User) -> Bool{
        var isValid = true
        for user in listUsers {
            if user.username == newUser.username {
              isValid = false
                showAlerts(title: "Error", message: "Usuário inválido ou já existente")
            }
        }
        return isValid
    }
    
    //INSERIR USUÁRIO
    func insertUser(newUser: User) {
        let isValid = validateUser(newUser: newUser)
        if isValid {
            listUsers.append(newUser)
            showAlerts(title: "Sucesso", message: "Usuário Cadastrado")
        }
    }
    
    //CONTROLE DE ALERTAS
    func showAlerts(title: String, message: String) {
      
     let alert = UIAlertController(title: title, message: message, preferredStyle:UIAlertController.Style.alert)
         alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
         self.present(alert, animated: true, completion: nil)
    }
}

extension ViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == tfEmail {
            tfPassword.becomeFirstResponder()
        }
        return true
    }
    
}

class User {
    let username: String
    let password: String
    
    init(username: String, password: String) {
        self.username = username
        self.password = password
    }
}



