//
//  ViewTwoNavigation.swift
//  ActivityNavigationModal
//
//  Created by Luciana on 22/09/20.
//  Copyright © 2020 Luciana Santana. All rights reserved.
//

import UIKit

class ViewTwoNavigation: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "View Navigation Two"
     
    }
    

    @IBAction func actionButtonNavigationTwo(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
}
