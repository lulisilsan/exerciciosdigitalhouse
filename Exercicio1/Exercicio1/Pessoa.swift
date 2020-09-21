//
//  Pessoa.swift
//  Exercicio1
//
//  Created by Luciana on 18/09/20.
//  Copyright © 2020 Luciana Santana. All rights reserved.
//

import Foundation

class Pessoa {
    var nome: String
    
    init(nome: String) {
        self.nome = nome
    }
}

class PessoaJuridica: Pessoa {
    var cnpj: String
    
    init(nome: String, cnpj: String) {
        self.cnpj = cnpj
        super.init(nome: nome)
    }
}
class PessoaFisica: Pessoa {
    var cpf: String
    
    init(nome: String, cpf: String) {
        self.cpf = cpf
        super.init(nome: nome)
    }
}

extension PessoaJuridica: Formated {
    func getFormated() -> String {
        return("\(nome) \(cnpj)")
    }
}

extension PessoaFisica: Formated {
    func getFormated() -> String {
        return("\(nome) \(cpf)")
    }
}
