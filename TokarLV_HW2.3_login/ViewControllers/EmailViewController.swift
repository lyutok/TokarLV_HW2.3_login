//
//  EmailViewController.swift
//  TokarLV_HW2.3_login
//
//  Created by Lyudmila Tokar on 2/8/21.
//

import UIKit

class EmailViewController: UIViewController {

    @IBOutlet var emailLabel: UILabel!
    
    var user: User?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let _ = self.user {
            emailLabel.text = user!.email
        } else { return }
        
    }
}
