//
//  Livro.swift
//  Exercicio_3
//
//  Created by Luciana on 19/09/20.
//  Copyright © 2020 Luciana Santana. All rights reserved.
//

import Foundation
import UIKit

class Livro: Rental {
    var quantityPages: Int
    
    init(nameProduct: String, codeProduct: String, quantityPages: Int) {
        self.quantityPages = quantityPages
        super.init(nameProduct: nameProduct, codeProduct: codeProduct, giveBack: 15)
    }

    override func showMessage() -> String {
        return "O produto \(nameProduct) de código \(codeProduct), quantidade de paginas \(quantityPages) deve ser devolvido em \(giveBack) dias."
    }
}
