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
        
        userNameTextField.returnKeyType = .next
        passwordTextField.returnKeyType = .done
    }
    
    @IBAction func ButtonsPressed(_ sender: UIButton) {
        
        switch sender.tag {
        case 0:
            if userNameTextField.text != "User" || passwordTextField.text != "12345" {
                
                showAlert(title: "Invalid login or password!", message: "Please, enter correct login and password.")
                passwordTextField.text = ""
            }
            
        case 1:
            showAlert(title: "Oops 🙃", message: "Your username is User.")
            userNameTextField.text = ""
        case 2:
            showAlert(title: "Oops 🙃", message: "Your password is 12345.")
            passwordTextField.text = ""
        default: break
        }
    }
    
    @IBAction func forgotPasswordPressed(_ sender: UIButton) {
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeScreen = segue.destination as? WelcomeViewController else { return }
        
        welcomeScreen.userName = userNameTextField.text
    }
    
    //hide keyboard
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    //alerts
    private func showAlert(title: String, message: String)
    {
        let alertController = UIAlertController(title: title,
                                                message: message,
                                                preferredStyle: .alert)
        let alertOkAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(alertOkAction)
        
        present(alertController, animated: true, completion: nil)
    }
    
}

