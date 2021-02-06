//  LoginViewController.swift
//  TokarLV_HW2.3_login
//
//  Created by Lyudmila Tokar on 2/3/21.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    private let username = "User"
    private let password = "12345"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userNameTextField.returnKeyType = .next
        passwordTextField.returnKeyType = .done
    }
    
    @IBAction func ButtonsPressed(_ sender: UIButton) {
        
        switch sender.tag {
        case 0:
            if userNameTextField.text != username || passwordTextField.text != password {
                
                showAlert(title: "Invalid login or password!", message: "Please, enter correct login and password.")
                passwordTextField.text = ""
            } else {
                performSegue(withIdentifier: "welcomeSegue", sender: nil)
            }
            
        case 1:
            showAlert(title: "Oops 🙃", message: "Your username is \(username).")
            userNameTextField.text = ""
        case 2:
            showAlert(title: "Oops 🙃", message: "Your password is \(password).")
            passwordTextField.text = ""
        default: break
        }
    }
    
    @IBAction func unwindSegwayToLoginScreen(segway: UIStoryboardSegue){
        guard let _ = segway.source as? WelcomeViewController else { return }
        
        userNameTextField.text = ""
        passwordTextField.text = ""
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

