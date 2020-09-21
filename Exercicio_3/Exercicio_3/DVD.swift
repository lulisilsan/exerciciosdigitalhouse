//
//  DVD.swift
//  Exercicio_3
//
//  Created by Luciana on 19/09/20.
//  Copyright © 2020 Luciana Santana. All rights reserved.
//

import Foundation
import UIKit

class Dvd : Rental {
    var formatVideo: String
    
    init(nameProduct: String, codeProduct: String, formatVideo: String) {
        self.formatVideo = formatVideo
        super.init(nameProduct: nameProduct, codeProduct: codeProduct, giveBack: 5)
    }
    override func showMessage() -> String {
        return "O produto \(nameProduct) de código \(codeProduct) formato de video \(formatVideo) deve ser devolvido em \(giveBack) dias."
    }
    
}
