//
//  ViewSixNavigation.swift
//  ActivityNavigationModal
//
//  Created by Luciana on 22/09/20.
//  Copyright © 2020 Luciana Santana. All rights reserved.
//

import UIKit

class ViewSixNavigation: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "View Six Navigation"

    }
    

    @IBAction func actionButtonNavigationSix(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    
}
