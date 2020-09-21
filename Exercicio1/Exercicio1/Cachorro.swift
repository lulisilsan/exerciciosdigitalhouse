//
//  Cachorro.swift
//  Exercicio1
//
//  Created by Luciana on 18/09/20.
//  Copyright © 2020 Luciana Santana. All rights reserved.
//

import Foundation
import UIKit

class Cachorro {
    var nome: String
    var raca: String
    
    init(nome: String, raca: String) {
        self.nome = nome
        self.raca = raca
    }
}

extension Cachorro: Formated {
    func getFormated() -> String {
        return("\(nome) \(raca)")
    }
}
