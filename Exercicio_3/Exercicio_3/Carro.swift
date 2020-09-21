//
//  Carro.swift
//  Exercicio_3
//
//  Created by Luciana on 19/09/20.
//  Copyright © 2020 Luciana Santana. All rights reserved.
//

import Foundation
import UIKit

class Carro: Rental {
    var placa: String
    
    init(nameProduct: String, codeProduct: String, placa: String) {
        self.placa = placa
        super.init(nameProduct: nameProduct, codeProduct: codeProduct, giveBack: 7)
    }

    override func showMessage() -> String {
        return "O produto \(nameProduct) de código \(codeProduct) e placa \(placa) deve ser devolvido em \(giveBack) dias."
    }
}
