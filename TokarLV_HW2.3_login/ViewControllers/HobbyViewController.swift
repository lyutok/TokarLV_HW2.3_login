//
//  HobbyViewController.swift
//  TokarLV_HW2.3_login
//
//  Created by Lyudmila Tokar on 2/8/21.
//

import UIKit

class HobbyViewController: UIViewController {

    @IBOutlet var hobbyLabel: UILabel!
    
    var user: User?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let _ = self.user {
            hobbyLabel.text = user!.hobby
        } else { return }
    }

}
