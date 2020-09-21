//
//  Rental.swift
//  Exercicio_3
//
//  Created by Luciana on 19/09/20.
//  Copyright © 2020 Luciana Santana. All rights reserved.
//

import Foundation

class Rental {
    var nameProduct: String
    var codeProduct: String
    var giveBack: Int

    
    init(nameProduct: String, codeProduct: String, giveBack: Int) {
        self.nameProduct = nameProduct
        self.codeProduct = codeProduct
        self.giveBack = giveBack
    }
    
    func showMessage() -> String {
        return "O produto \(nameProduct) de código \(codeProduct) deve ser devolvido em \(giveBack) dias."
    }
}
