//  WelcomeViewController.swift
//  TokarLV_HW2.3_login
//
//  Created by Lyudmila Tokar on 2/3/21.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet var welcomeLabel: UILabel!
    
    var user: User?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let _ = self.user {
            welcomeLabel.text = "Welcome, \(user!.fullName)!"
        } else { return }
   }
    
//
//    @IBAction func logOutButtonPressed(_ sender: UIButton) {
//        dismiss(animated: true)
//    }
    
}
