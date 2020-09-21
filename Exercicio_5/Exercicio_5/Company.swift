//
//  Company.swift
//  Exercicio_5
//
//  Created by Luciana on 20/09/20.
//  Copyright © 2020 Luciana Santana. All rights reserved.
//

import Foundation


class Company: Subscriber {
    var companyName: String
    var cnpj: String
    var numberOfEmployee: Int
    
    init(companyName: String, cnpj: String, numberOfEmployee: Int) {
        self.companyName = companyName
        self.cnpj = cnpj
        self.numberOfEmployee = numberOfEmployee
    }
    
    func notify() -> String {
        return "Agradecemos cordialmente o MonroeStreetJournal pela excelência dos serviços prestados."
    }
    
}
