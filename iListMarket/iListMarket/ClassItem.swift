//
//  ClassItem.swift
//  iListMarket
//
//  Created by Luciana on 17/09/20.
//  Copyright © 2020 Luciana Santana. All rights reserved.
//

import Foundation
import UIKit

class Item {
    var nameProduct: String
    var quantityProduct: Int
    
    init(nameProduct: String, quantityProduct: Int) {
        self.nameProduct = nameProduct
        self.quantityProduct = quantityProduct
    }
}
