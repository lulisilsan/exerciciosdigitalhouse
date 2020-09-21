//
//  People.swift
//  Exercicio_5
//
//  Created by Luciana on 20/09/20.
//  Copyright © 2020 Luciana Santana. All rights reserved.
//

import Foundation

class People: Subscriber {
    var name: String
    var rg: String
    var address: String
    
    init(name: String, rg: String, address: String) {
        self.name = name
        self.rg = rg
        self.address = address
    }
    
    func notify() -> String {
        return "Muito obrigado, MonroeStreetJournal. Vocês são demais!"
    }
    
}
