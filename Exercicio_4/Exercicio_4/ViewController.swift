//
//  ViewController.swift
//  Exercicio_4
//
//  Created by Luciana on 20/09/20.
//  Copyright © 2020 Luciana Santana. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var labelNotification: UILabel!
    var subscribers: [ReceiveNotification] = [
    Punter(),
    KronikaTv(),
    HouseOfBets()
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func buttonRace(_ sender: UIButton) {
        showNotify()
    }
    
    private func showNotify () {
        var result: String = ""
        for subscriber in subscribers {
            result = result + "\(subscriber.notify())\n"
        }
        labelNotification.text = result
        print(result)
    }
    
}

