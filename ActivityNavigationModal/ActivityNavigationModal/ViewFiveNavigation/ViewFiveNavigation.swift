//
//  ViewFiveNavigation.swift
//  ActivityNavigationModal
//
//  Created by Luciana on 22/09/20.
//  Copyright © 2020 Luciana Santana. All rights reserved.
//

import UIKit

class ViewFiveNavigation: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "View Navigation Five"
       
    }
  
    @IBAction func actionButtonNavigationFive(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
}
