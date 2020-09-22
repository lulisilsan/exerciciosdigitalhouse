//
//  ViewEightNavigation.swift
//  ActivityNavigationModal
//
//  Created by Luciana on 22/09/20.
//  Copyright © 2020 Luciana Santana. All rights reserved.
//

import UIKit

class ViewEightNavigation: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "View Navigation Eight"
       
    }
    

    @IBAction func actionButtonNavigationEight(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    

}
