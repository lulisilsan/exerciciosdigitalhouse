//
//  ViewOneNavigation.swift
//  ActivityNavigationModal
//
//  Created by Luciana on 22/09/20.
//  Copyright © 2020 Luciana Santana. All rights reserved.
//

import UIKit

class ViewOneNavigation: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "View One Navigation"
  
    }
    

    @IBAction func actionButtonCloseNavigationOne(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
}
