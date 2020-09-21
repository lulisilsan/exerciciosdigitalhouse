//
//  CD.swift
//  Exercicio_3
//
//  Created by Luciana on 19/09/20.
//  Copyright © 2020 Luciana Santana. All rights reserved.
//

import Foundation
import UIKit

class Cd : Rental {
    var cantor: String
    
    init(nameProduct: String, codeProduct: String, cantor: String) {
        self.cantor = cantor
        super.init(nameProduct: nameProduct, codeProduct: codeProduct, giveBack: 3)
    }
    
    override func showMessage() -> String {
        return "O produto \(nameProduct) de código \(codeProduct), cantor \(cantor) deve ser devolvido em \(giveBack) dias."
    }
}
