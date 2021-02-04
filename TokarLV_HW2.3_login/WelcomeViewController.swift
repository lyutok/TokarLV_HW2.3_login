//  WelcomeViewController.swift
//  TokarLV_HW2.3_login
//
//  Created by Lyudmila Tokar on 2/3/21.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet var welcomeLabel: UILabel!
    
    var userName: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        welcomeLabel.text = "Welcome, \(userName!)!"
    
    }
    
    @IBAction func logOutButtonPressed(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
}
