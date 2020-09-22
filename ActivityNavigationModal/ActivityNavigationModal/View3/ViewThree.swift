//
//  ViewThree.swift
//  ActivityNavigationModal
//
//  Created by Luciana on 22/09/20.
//  Copyright © 2020 Luciana Santana. All rights reserved.
//

import UIKit

class ViewThree: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "View Three"
        
    }
    
    
    @IBAction func actionButtonModalThree(_ sender: Any) {
        if let viewThreeModal = UIStoryboard(name: "ViewThreeModal", bundle: nil).instantiateInitialViewController() as? ViewThreeModal {
            present(viewThreeModal, animated: true, completion: nil)
        }
        
    }
    
    
    @IBAction func actionButtonNavigationThree(_ sender: Any) {
        if let viewThreeNavigation = UIStoryboard(name: "ViewThreeNavigation", bundle: nil).instantiateInitialViewController() as? ViewThreeNavigation {
            navigationController?.pushViewController(viewThreeNavigation, animated: true)
        }
        
        
        
    }
    
    
    
    
}
