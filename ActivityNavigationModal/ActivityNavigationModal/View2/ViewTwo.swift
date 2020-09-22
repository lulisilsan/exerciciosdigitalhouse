//
//  ViewTwo.swift
//  ActivityNavigationModal
//
//  Created by Luciana on 22/09/20.
//  Copyright © 2020 Luciana Santana. All rights reserved.
//

import UIKit

class ViewTwo: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "View Two"
   
    }
    
    @IBAction func actionButtonModalTwo(_ sender: Any) {
        if let viewTwoModal = UIStoryboard(name: "ViewTwoModal", bundle: nil).instantiateInitialViewController() as? ViewTwoModal {
            present(viewTwoModal, animated: true, completion: nil)
        }
    }
    
    @IBAction func actionButtonNavigationTwo(_ sender: Any) {
        if let viewTwoNavigation = UIStoryboard(name: "ViewTwoNavigation", bundle: nil).instantiateInitialViewController() as? ViewTwoNavigation {
            navigationController?.pushViewController(viewTwoNavigation, animated: true)
        }
    }
    
}
