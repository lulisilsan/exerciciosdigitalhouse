//
//  Caneta.swift
//  Exercicio1
//
//  Created by Luciana on 18/09/20.
//  Copyright © 2020 Luciana Santana. All rights reserved.
//

import Foundation

class Caneta {
    var marca: String
    
    init(marca: String) {
        self.marca = marca
    }
}
extension Caneta: Formated {
    func getFormated() -> String {
        return ("\(marca)")
    }
    
}
