//  LoginViewController.swift
//  TokarLV_HW2.3_login
//
//  Created by Lyudmila Tokar on 2/3/21.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
 //получение экземпляра модели
    private let user = User.myInfo()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userNameTextField.returnKeyType = .next
        userNameTextField.delegate = self
        
        passwordTextField.returnKeyType = .done
        passwordTextField.delegate = self
    }
    

    // Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let tabBarController = segue.destination as! UITabBarController
        print("!!!")
        guard let tbVC = tabBarController.viewControllers else { return }
        print(tbVC.count)
        for viewController in tbVC {
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.user = user
        } else if let emailVC = viewController as? EmailViewController {
            emailVC.user = user
        } else if let aboutVC = viewController as? MoreInfoViewController {
            print ("11")
        }
            //let navigationVC = viewController as! UINavigationController
            gationController?.topViewController as! HobbyViewController
            hobbyVC.user = user
//            let professionVC = navigationVC.viewControllers.last as! LastPageViewController
//            professionVC.user = user
            
        
        
        }        
       
        }

    //hide keyboard
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    super.touchesBegan(touches, with: event)
    view.endEditing(true)
    }
    
    @IBAction func ButtonsPressed(_ sender: UIButton) {
            
            switch sender.tag {
            case 0:
                goToWelcomeScreen()
                
            case 1:
                showAlert(title: "Oops 🙃", message: "Your username is \(User.myInfo().username).")
                userNameTextField.text = ""
            case 2:
                showAlert(title: "Oops 🙃", message: "Your password is \(User.myInfo().password).")
                passwordTextField.text = ""
            default:
                break
            }
    }
    
    @IBAction func unwindSegwayToLoginScreen(segway: UIStoryboardSegue){
//       guard let _ = segway.source as? WelcomeViewController else { return }
//            userNameTextField.text = ""
//            passwordTextField.text = ""

        if let _ = segway.source as? WelcomeViewController {
            userNameTextField.text = ""
            passwordTextField.text = ""
        } else {
        let _ = segway.source as? LastPageViewController
        userNameTextField.text = ""
            passwordTextField.text = ""}
    }
    
    //MARK: Alerts, Hide Keyboard
    private func showAlert(title: String, message: String)
    {
        let alertController = UIAlertController(title: title,
                                                message: message,
                                                preferredStyle: .alert)
        let alertOkAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(alertOkAction)
        
        present(alertController, animated: true, completion: nil)
    }
  
    
    //переход по кнопкам клавиатуры
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == userNameTextField { // Switch focus to other text field
            passwordTextField.becomeFirstResponder()
        } else {
             goToWelcomeScreen()
        }
        return true
    }
    
    //переход к Велкам экрану
    func goToWelcomeScreen() {
        if userNameTextField.text != User.myInfo().username || passwordTextField.text != User.myInfo().password {
            
            showAlert(title: "Invalid login or password!", message: "Please, enter correct login and password.")
            passwordTextField.text = ""
        } else {
            performSegue(withIdentifier: "welcomeSegue", sender: nil)
        }
    }
    
}


