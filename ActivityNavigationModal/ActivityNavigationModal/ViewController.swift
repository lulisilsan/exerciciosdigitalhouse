//
//  ViewController.swift
//  ActivityNavigationModal
//
//  Created by Luciana on 22/09/20.
//  Copyright © 2020 Luciana Santana. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Main View"
    }
    
    @IBAction func actionButtonView1(_ sender: Any) {
        if let viewOne = UIStoryboard(name: "ViewOne", bundle: nil).instantiateInitialViewController() as? ViewOne {
            navigationController?.pushViewController(viewOne, animated: true)
        }
    }
    
    
    @IBAction func actionButtonView2(_ sender: Any) {
        if let viewTwo = UIStoryboard(name: "ViewTwo", bundle: nil).instantiateInitialViewController() as? ViewTwo {
            navigationController?.pushViewController(viewTwo, animated: true)
        }
    }
    
    
    @IBAction func actionButtonView3(_ sender: Any) {
        if let viewThree = UIStoryboard(name: "ViewThree", bundle: nil).instantiateInitialViewController() as? ViewThree {
            navigationController?.pushViewController(viewThree, animated: true)
        }
    }
    
    
    @IBAction func actionButtonView4(_ sender: Any) {
        if let viewFour = UIStoryboard(name: "ViewFour", bundle: nil).instantiateInitialViewController() as? ViewFour {
            navigationController?.pushViewController(viewFour, animated: true)
        }
    }
    
    
    @IBAction func actionButtonView5(_ sender: Any) {
        if let viewFive = UIStoryboard(name: "ViewFive", bundle: nil).instantiateInitialViewController() as? ViewFive {
            navigationController?.pushViewController(viewFive, animated: true)
        }
    }
    
    
    @IBAction func actionButtonView6(_ sender: Any) {
        if let viewSix = UIStoryboard(name: "ViewSix", bundle: nil).instantiateInitialViewController() as? ViewSix {
            navigationController?.pushViewController(viewSix, animated: true)
        }
    }
    
    
    @IBAction func actionButtonView7(_ sender: Any) {
        if let viewSeven = UIStoryboard(name: "ViewSeven", bundle: nil).instantiateInitialViewController() as? ViewSeven {
            navigationController?.pushViewController(viewSeven, animated: true)
        }
    }
    
    
    @IBAction func actionButtonView8(_ sender: Any) {
        if let viewEight = UIStoryboard(name: "ViewEight", bundle: nil).instantiateInitialViewController() as? ViewEight {
            navigationController?.pushViewController(viewEight, animated: true)
        }
    }
    
    
    @IBAction func actionButtonView9(_ sender: Any) {
        if let viewNine = UIStoryboard(name: "ViewNine", bundle: nil).instantiateInitialViewController() as? ViewNine {
            navigationController?.pushViewController(viewNine, animated: true)
        }
    }
}

