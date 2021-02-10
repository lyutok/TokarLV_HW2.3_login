//
//  MoreInfoViewController.swift
//  TokarLV_HW2.3_login
//
//  Created by Lyudmila Tokar on 2/8/21.
//

import UIKit

class MoreInfoViewController: UIViewController {
    
    private let user = User.myInfo()

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
   //  MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let navigationVC = segue.destination as! UINavigationController
        let hobbyVC = navigationVC.topViewController as! HobbyViewController
        hobbyVC.user_from_moreInfo = user
    }
}
