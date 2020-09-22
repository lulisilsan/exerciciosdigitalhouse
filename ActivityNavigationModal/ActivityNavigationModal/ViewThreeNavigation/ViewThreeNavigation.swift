//
//  ViewThreeNavigation.swift
//  ActivityNavigationModal
//
//  Created by Luciana on 22/09/20.
//  Copyright © 2020 Luciana Santana. All rights reserved.
//

import UIKit

class ViewThreeNavigation: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "View Navigation Three"
        
    }

    @IBAction func actionButtonNavigationThree(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
}
