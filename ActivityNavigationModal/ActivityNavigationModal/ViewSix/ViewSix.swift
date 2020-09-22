//
//  ViewSix.swift
//  ActivityNavigationModal
//
//  Created by Luciana on 22/09/20.
//  Copyright © 2020 Luciana Santana. All rights reserved.
//

import UIKit

class ViewSix: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "View Six"
     
    }
    

    @IBAction func actionButtonModalSix(_ sender: Any) {
        if let viewSixModal = UIStoryboard(name: "ViewSixModal", bundle: nil).instantiateInitialViewController() as? ViewSixModal {
            present(viewSixModal, animated: true, completion: nil)
        }
    }
    
    
    @IBAction func actionButtonNavigationSix(_ sender: Any) {
        if let viewSixNavigation = UIStoryboard(name: "ViewSixNavigation", bundle: nil).instantiateInitialViewController() as? ViewSixNavigation {
            navigationController?.pushViewController(viewSixNavigation, animated: true)
        }
    }
    

}
