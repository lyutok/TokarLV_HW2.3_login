//
//  LoginViewController.swift
//  TokarLV_HW2.3_login
//
//  Created by Lyudmila Tokar on 2/3/21.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField! 
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    
    @IBAction func forgotUserNamePressed(_ sender: UIButton) {
    }
    
    @IBAction func forgotPasswordPressed(_ sender: UIButton) {
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeScreen = segue.destination as? WelcomeViewController else { return }

        welcomeScreen.userName = userNameTextField.text
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
}
    

