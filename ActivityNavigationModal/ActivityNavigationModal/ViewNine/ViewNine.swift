//
//  ViewNine.swift
//  ActivityNavigationModal
//
//  Created by Luciana on 22/09/20.
//  Copyright © 2020 Luciana Santana. All rights reserved.
//

import UIKit

class ViewNine: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "View Nine"
        
    }
    

    @IBAction func actionButtonNineModal(_ sender: Any) {
        if let viewNineModal = UIStoryboard(name: "ViewNineModal", bundle: nil).instantiateInitialViewController() as? ViewNineModal {
            present(viewNineModal, animated: true, completion: nil)
        }
    }
    
    
    @IBAction func actionButtonNineNavigation(_ sender: Any) {
        if let viewNineNavigation = UIStoryboard(name: "ViewNineNavigation", bundle: nil).instantiateInitialViewController() as? ViewNineNavigation {
            navigationController?.pushViewController(viewNineNavigation, animated: true)
        }
    }
    
    
}
