//
//  ViewFour.swift
//  ActivityNavigationModal
//
//  Created by Luciana on 22/09/20.
//  Copyright © 2020 Luciana Santana. All rights reserved.
//

import UIKit

class ViewFour: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "View Four"
        
    }
    
    @IBAction func actionButtonModalFour(_ sender: Any) {
        if let viewFourModal = UIStoryboard(name: "ViewFourModal", bundle: nil).instantiateInitialViewController() as? ViewFourModal {
            present(viewFourModal, animated: true, completion: nil)
            
        }
    }
    
    
    @IBAction func actionButtonNavigationFour(_ sender: Any) {
        if let viewFourNavigation = UIStoryboard(name: "ViewFourNavigation", bundle: nil).instantiateInitialViewController() as? ViewFourNavigation {
            navigationController?.pushViewController(viewFourNavigation, animated: true)
        }
    }
    
    

}
