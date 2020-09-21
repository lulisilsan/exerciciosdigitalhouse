//
//  HouseOfBets.swift
//  Exercicio_4
//
//  Created by Luciana on 20/09/20.
//  Copyright © 2020 Luciana Santana. All rights reserved.
//

import Foundation

class HouseOfBets: ReceiveNotification {
    
    var patrimony: Double = 500.00
    

    func notify() -> String {
       updatePatrimony()
       return "Ganhando grana!"
    }
    
    private func updatePatrimony() {
        patrimony = patrimony + 1000.00
    }
}
