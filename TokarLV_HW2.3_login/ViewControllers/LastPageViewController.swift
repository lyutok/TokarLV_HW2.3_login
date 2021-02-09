//
//  LastPageViewController.swift
//  TokarLV_HW2.3_login
//
//  Created by Lyudmila Tokar on 2/8/21.
//

import UIKit

class LastPageViewController: UIViewController {

    @IBOutlet var profession: UILabel!
    
    var user: User?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let _ = self.user {
            profession.text = user!.profession
        } else { return }
    }
    
}
