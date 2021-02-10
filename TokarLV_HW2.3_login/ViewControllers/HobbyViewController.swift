//
//  HobbyViewController.swift
//  TokarLV_HW2.3_login
//
//  Created by Lyudmila Tokar on 2/8/21.
//

import UIKit

class HobbyViewController: UIViewController {
    
    @IBOutlet var hobbyLabel: UILabel!
    private let user = User.myInfo()
    
    var user_from_moreInfo: User?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let _ = self.user_from_moreInfo {
            hobbyLabel.text = user_from_moreInfo!.hobby
        } else { return }
    }
    
    //MARK: Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let endVC = segue.destination as! LastPageViewController
        endVC.user = user
    }
}
