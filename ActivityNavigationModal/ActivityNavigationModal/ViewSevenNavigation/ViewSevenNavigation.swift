//
//  ViewSevenNavigation.swift
//  ActivityNavigationModal
//
//  Created by Luciana on 22/09/20.
//  Copyright © 2020 Luciana Santana. All rights reserved.
//

import UIKit

class ViewSevenNavigation: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "View Seven Navigation"
        
    }
    

    @IBAction func actionButtonNavigationSeven(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    

}
