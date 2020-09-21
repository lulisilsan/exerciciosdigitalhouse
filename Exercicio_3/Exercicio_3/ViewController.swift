//
//  ViewController.swift
//  Exercicio_3
//
//  Created by Luciana on 19/09/20.
//  Copyright © 2020 Luciana Santana. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textFieldName: UITextField!
    @IBOutlet weak var textFieldCode: UITextField!
    
    //OBJETO LISTA DE PRODUTOS INSTANCIADO PARA TESTE
    var productsRental: [Rental] =
        [
        Dvd(nameProduct: "Dvd1", codeProduct: "1111BR", formatVideo: "BlueRay"),
        Cd(nameProduct: "Cd1", codeProduct: "222US", cantor: "Slipknot"),
        Livro(nameProduct: "Livro1", codeProduct: "00001", quantityPages: 200),
        Carro(nameProduct: "Carro1", codeProduct: "999999UE", placa: "LA-3113")
        ]

    override func viewDidLoad() {
        super.viewDidLoad()
        textFieldName.delegate = self
        textFieldCode.delegate = self
    }
    
// BOTÃO FAZER LOCAÇÃO
    @IBAction func buttonLocation(_ sender: Any) {
        if validateFields() {
            let name = textFieldName.text!
            let searchResult = searchRental(nameProduct: name)
            showProduct(product: searchResult)
        } else {
            showAlerts(title: "Erro", message: "Informar o produto")
        }
        
    }
    
    //EXIBE O PRODUTO
    func showProduct(product: Rental?) {
        guard let item = product else {
            showAlerts(title: "Erro", message: "Produto inválido")
            return
        }
        textFieldCode.text = item.codeProduct
        showAlerts(title: "Sucesso", message: item.showMessage())
    }
    
    func searchRental (nameProduct: String) -> Rental? {
        return productsRental.first() {$0.nameProduct.lowercased() == nameProduct.lowercased()}
    }
    
    //FUNCÃO PARA VALIDAR O CONTEUDO DOS TEXTFIELDS
    func validateFields() -> Bool {
        var isValid = true
        
        if textFieldName.text == nil || textFieldName.text!.isEmpty {
            isValid = false
            showAlerts(title: "Erro", message: "Informe o nome do produto")
        }
        return isValid
    }
    
    //CONTROLE DE ALERTAS
    func showAlerts(title: String, message: String) {
          
         let alert = UIAlertController(title: title, message: message, preferredStyle:UIAlertController.Style.alert)
             alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
             self.present(alert, animated: true, completion: nil)
        }
}
// MUDA O FOCO DOS TEXTFIELDS
extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == textFieldName {
            textFieldCode.becomeFirstResponder()
        }
        return true
    }
}






