//
//  ViewController.swift
//  Exercicio1
//
//  Created by Luciana on 18/09/20.
//  Copyright © 2020 Luciana Santana. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var searchAll: UISearchBar!
    
    @IBOutlet weak var labelResult: UILabel!
    
    var listObjects = [Formated]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchAll.delegate = self
        
        listObjects.append(Caneta(marca: "Bic"))
        listObjects.append(PessoaFisica(nome: "Jorge", cpf: "111111"))
        listObjects.append(PessoaJuridica(nome: "School", cnpj: "0001111"))
        listObjects.append(Cachorro(nome: "Totó", raca: "Pastor Alemão"))
        listObjects.append(Aviao(modelo: "Boing", cidade: "São Paulo"))
    }
    
    func filter(searchText: String) {
        var arrayNew = [Formated]()
        
        for item in listObjects {
            if item.getFormated().lowercased().contains(searchText.lowercased()) {
                arrayNew.append(item)
            }
        }
        labelResult.text = formatedUser(arrayNew: arrayNew)
    }
    
    func formatedUser (arrayNew: [Formated]) -> String{
        var formated = ""
        
        for item in arrayNew {
            formated = "\(formated)\n\(item.getFormated())"
        }
        return formated
    }
}

extension ViewController : UISearchBarDelegate {
   func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        if let text = searchBar.text {
            filter(searchText: text)
        }
    }
    
}


