//
//  ViewController.swift
//  desafiodelegatecadastro
//
//  Created by Luciana on 14/09/20.
//  Copyright © 2020 Luciana Santana. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    @IBOutlet weak var textFieldEmail: UITextField!
    @IBOutlet weak var textFieldPassword: UITextField!
    
    var listUsers = [User]()
    
 
    override func viewDidLoad() {
        super.viewDidLoad()
        textFieldEmail.delegate = self
        textFieldPassword.delegate = self
    }
    //Esconde o teclado quando o usuário toca na view
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    
    @IBAction func buttonInsert(_ sender: UIButton) {
        if textFieldEmail.text == nil || textFieldEmail.text!.isEmpty {
            let alert = UIAlertController(title: "Error", message: "Informe o e-mail", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        if textFieldPassword.text == nil || textFieldPassword.text!.isEmpty {
            let alert = UIAlertController(title: "Error", message: "Informe a senha", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        else {
            let user = User (username: textFieldEmail.text!, password: textFieldPassword.text!)
            validateUsers(newUser: user) // implementar a funcao usando o protocolo user
            clearFields() // implementar a funcao de limpar campos
            
        }
    }
    
    //Valida se o usuário já consta na lista
    func validateUsers(newUser: User) {
        if listUsers.isEmpty {
            insertUser(validUser: newUser)
        } else {
        for user in listUsers {
            if user.username == newUser.username {
                view.backgroundColor = UIColor.red
                let alert = UIAlertController(title: "Error", message: "Usuário já existe", preferredStyle: UIAlertController.Style.alert)
                alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
                self.present(alert, animated: true, completion: nil)
                
            } else {
                insertUser(validUser: newUser)
            }
        }
        }
    }
    
    // Insere o novo usuário na lista
    func insertUser(validUser: User) {
        listUsers.append(validUser)
        view.backgroundColor = UIColor.green
        let alert = UIAlertController(title: "Sucesso", message: "Usuário cadastrado com sucesso", preferredStyle:
            UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    //Limpa o conteúdo das TextFields
    func clearFields() {
        textFieldEmail.text = ""
        textFieldPassword.text = ""
    }
}

//Delegate das TextField
extension ViewController: UITextFieldDelegate {
    //muda o foco dos textFields
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == textFieldEmail {
            textFieldPassword.becomeFirstResponder()
        }
        return true
    }
    
    //Não deixa o usuário sair do campo se ele estiver vazio
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        return !textField.text!.isEmpty
    }
}

//Classe de usuário
class User {
    let username: String
    let password: String
    
    init(username: String, password: String) {
        self.username = username
        self.password = password
    }
    
}
    
    





