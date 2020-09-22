//
//  ViewEight.swift
//  ActivityNavigationModal
//
//  Created by Luciana on 22/09/20.
//  Copyright © 2020 Luciana Santana. All rights reserved.
//

import UIKit

class ViewEight: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "View Eight"
        
    }
    

    @IBAction func actionButtonModalEight(_ sender: Any) {
        if let viewEightModal = UIStoryboard(name: "ViewEightModal", bundle: nil).instantiateInitialViewController() as? ViewEightModal {
            present(viewEightModal, animated: true, completion: nil)
        }
    }
    
    
    @IBAction func actionButtonNavigationEight(_ sender: Any) {
        if let viewEightNavigation = UIStoryboard(name: "ViewEightNavigation", bundle: nil).instantiateInitialViewController() as? ViewEightNavigation {
            navigationController?.pushViewController(viewEightNavigation, animated: true)
        }
    }
    
 

}
