//
//  ViewController.swift
//  Exercicio_5
//
//  Created by Luciana on 20/09/20.
//  Copyright © 2020 Luciana Santana. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var labelNotify: UILabel!
    
    
    var subscribers: [Subscriber] = [
    Company(companyName: "Empresa1", cnpj: "11111-00", numberOfEmployee: 99),
    People(name: "Pessoa1", rg: "22222-08", address: "Rua Agusta, 567 - São Paulo - SP")
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func buttonSendJournal(_ sender: UIButton) {
        showNotify()
        
    }
    
    func showNotify() {
        var result: String = ""
        for subscriber in subscribers {
            result = result + "\(subscriber.notify())\n\n"
        }
        labelNotify.text! = result
    }
}

