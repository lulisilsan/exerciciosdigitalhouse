//
//  Aviao.swift
//  Exercicio1
//
//  Created by Luciana on 18/09/20.
//  Copyright © 2020 Luciana Santana. All rights reserved.
//

import Foundation

class Aviao {
    var modelo: String
    var cidade: String
    
    init(modelo: String, cidade: String) {
        self.modelo = modelo
        self.cidade = cidade
    }
}
extension Aviao: Formated {
    func getFormated() -> String {
        return("\(modelo) \(cidade)")
    }
}
