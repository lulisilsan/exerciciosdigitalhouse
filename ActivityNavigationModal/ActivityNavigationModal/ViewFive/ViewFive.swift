//
//  ViewFive.swift
//  ActivityNavigationModal
//
//  Created by Luciana on 22/09/20.
//  Copyright © 2020 Luciana Santana. All rights reserved.
//

import UIKit

class ViewFive: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "View Five"
       
    }
    

    @IBAction func actionButtonModalFive(_ sender: Any) {
        if let viewFiveModal = UIStoryboard(name: "ViewFiveModal", bundle: nil).instantiateInitialViewController() as? ViewFiveModal {
            present(viewFiveModal, animated: true, completion: nil)
        }
    }
    
    
    @IBAction func actionButtonNavigationFive(_ sender: Any) {
        if let viewFiveNavigation = UIStoryboard(name: "ViewFiveNavigation", bundle: nil).instantiateInitialViewController() as? ViewFiveNavigation {
            navigationController?.pushViewController(viewFiveNavigation, animated: true)
        }
    }
    
    
}
