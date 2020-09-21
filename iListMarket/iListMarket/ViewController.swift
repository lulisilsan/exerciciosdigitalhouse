//
//  ViewController.swift
//  iListMarket
//
//  Created by Luciana on 16/09/20.
//  Copyright © 2020 Luciana Santana. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tfNameProduct: UITextField!
    @IBOutlet weak var tfQuantityProduct: UITextField!
    @IBOutlet weak var lbStatusProduct: UILabel!
    @IBOutlet weak var lbTitleList: UILabel!
    @IBOutlet weak var tvProducts: UITableView!
    @IBOutlet weak var btSave: UIButton!
    @IBOutlet weak var btDelete: UIButton!
    @IBOutlet weak var btClear: UIButton!
    
    
    
    
    var products: [Item] = [Item(nameProduct: "Amaciante", quantityProduct: 1), Item(nameProduct: "sabonete", quantityProduct: 3)]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tfNameProduct.delegate = self
        tfQuantityProduct.delegate = self
        tvProducts.delegate = self
        btDelete.isHidden = true
        
    }
    
    //BOTÃO SALVAR
    @IBAction func btSave(_ sender: Any) {

        insertProduct(item: getItemFromField())
        clearField()
        view.endEditing(true)
    }
    
    //BOTÃO EXCLUIR PRODUTO DA LISTA
    @IBAction func btDelete(_ sender: Any) {
        
        view.endEditing(true)
        
        deleteProduct(item: getItemFromField())
        clearField()
        }
        
    
        
    //BOTÃO LIMPAR CAMPOS
    @IBAction func btClear(_ sender: Any) {
        view.endEditing(true)
        clearField()
    }
    
    //VERIFICA SE O PRODUTO JA EXISTE NA LISTA
    func validProduct (itemtf: Item) -> Bool {
        var isValid = false
        for item in products {
            if item.nameProduct == itemtf.nameProduct {
                isValid = true
                showProduct(item: item)
            }
        }
        return isValid
    }
    
    //POPULA O PRODUTO NOS CAMPOS PERTINENTES E ALTERA O BOTÃO SALVAR E STATUS DO PRODUTO
    func showProduct(item: Item?) {
        
        guard let product = item else {
            btSave.setTitle("Salvar", for: .normal)
            lbStatusProduct.text = "Produto Novo"
            btDelete.isHidden = true
            return
        }
        tfNameProduct.text! = product.nameProduct
        tfQuantityProduct.text! = String(product.quantityProduct)
        lbStatusProduct.text! = "Produto já existe"
        btSave.setTitle("Editar", for: .normal)
        btDelete.isHidden = false
    }
    
    //ISERE O NOVO PRODUTO NA LISTAGEM
    func insertProduct(item: Item) {
        if !validProduct(itemtf: item) {
            products.append(item)
            tvProducts.reloadData()
        } else {
            updateProducts(item: item)
        }
    }
    
    //DELETA O ITEM DA LISTA SOLICITADO PELO USUÁRIO
    func deleteProduct(item: Item) {
        if !products.isEmpty {
            if validProduct(itemtf: item) {
                products.removeAll() { $0.nameProduct.lowercased() == item.nameProduct.lowercased() }
                tvProducts.reloadData()
            }
        }        
    }
    
    //RECUPERA O PRODUTO
    func getProduct(productName: String) -> Item? {
        return products.first() { $0.nameProduct.lowercased() == productName.lowercased() }
        
    }
    
    // LIMPA OS DADOS DA TELA
    func clearField() {
        tfNameProduct.text! = ""
        tfQuantityProduct.text! = ""
        tfNameProduct.becomeFirstResponder()
        btSave.setTitle("Salvar", for: .normal)
        lbStatusProduct.text = "Produto Novo"
        btDelete.isHidden = true
    }
    
    func getItemFromField() -> Item {
        let product = tfNameProduct.text!
        let qtt = tfQuantityProduct.text!
        
        return Item(nameProduct: product, quantityProduct: Int(qtt)!)
    }
    
    //ATUALIZA A QUANTIDADE DE UM PRODUTO JA EXISTENTE
    func updateProducts(item: Item) {
        let product = products.first() { $0.nameProduct.lowercased() == item.nameProduct.lowercased()}
        product!.quantityProduct = item.quantityProduct
            tvProducts.reloadData()
    }
    
}

extension ViewController : UITextFieldDelegate {
    
    //NÃO PERMITE QUE O USUÁRIO SAI DO PRIMEIRO TEXTFIELD SEM PREENCHE-LO
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        if textField == tfNameProduct {
            
            return !textField.text!.isEmpty
        } else {
            return true
        }
    }
    
    
    //MUDA O FOCO DAS TEXTFIELDS
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == tfNameProduct {
            tfQuantityProduct.becomeFirstResponder()
            
        }
        return true
    }
    
    //VERIFICA SE O PRIMEIRO TEXTFIELD ESTA PREENCHIDO E JÁ POPULA ELE
    func textFieldDidEndEditing(_ textField: UITextField) {
        if textField == tfNameProduct {
            showProduct(item: getProduct(productName: tfNameProduct.text!))
        }
    }
}

extension ViewController: UITableViewDataSource {
    
    //APONTA QUAL É MINHA DATASOURCE
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return products.count
    }
    
    //POPULA AS CELULAS DA MINHA TABLE VIEW
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        let product = products[indexPath.row]

        cell.textLabel?.text = product.nameProduct
        cell.detailTextLabel?.text = "\(product.quantityProduct)"


        return cell
    }


}
extension ViewController: UITableViewDelegate {


}






