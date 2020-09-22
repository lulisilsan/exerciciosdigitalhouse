//
//  ViewSeven.swift
//  ActivityNavigationModal
//
//  Created by Luciana on 22/09/20.
//  Copyright © 2020 Luciana Santana. All rights reserved.
//

import UIKit

class ViewSeven: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "View Seven"
        
    }
    
    
    @IBAction func actionButtonModalSeven(_ sender: Any) {
        if let viewSevenModal = UIStoryboard(name: "ViewSevenModal", bundle: nil).instantiateInitialViewController() as? ViewSevenModal {
            present(viewSevenModal, animated: true, completion: nil)
        }
    }
    
    
    @IBAction func actionButtonNavigationSeven(_ sender: Any) {
        if let viewSevenNavigation = UIStoryboard(name: "ViewSevenNavigation", bundle: nil).instantiateInitialViewController() as? ViewSevenNavigation {
            navigationController?.pushViewController(viewSevenNavigation, animated: true)
        }
    }
    
    
}
