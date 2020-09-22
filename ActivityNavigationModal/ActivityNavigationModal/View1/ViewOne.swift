//
//  ViewOne.swift
//  ActivityNavigationModal
//
//  Created by Luciana on 22/09/20.
//  Copyright © 2020 Luciana Santana. All rights reserved.
//

import UIKit

class ViewOne: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "View One"
    }
    
    @IBAction func actionButtonModal1(_ sender: Any) {
        if let viewOneModal = UIStoryboard(name: "ViewOneModal", bundle: nil).instantiateInitialViewController() as? ViewOneModal {
            present(viewOneModal, animated: true, completion: nil)
        }
    }
    
    
    @IBAction func actionButtonNavigation1(_ sender: Any) {
        if let viewOneNavigation = UIStoryboard(name: "ViewOneNavigation", bundle: nil).instantiateInitialViewController() as? ViewOneNavigation {
            navigationController?.pushViewController(viewOneNavigation, animated: true)
        }
    }
    

}
