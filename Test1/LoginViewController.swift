//
//  LoginViewController.swift
//  Test1
//
//  Created by 66 on 11.10.22.
//

import UIKit
import Alamofire

class LoginViewController: UIViewController {

    @IBOutlet weak var loginLabel: UILabel!
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordLabel: UILabel!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButtonText: UIButton!
    @IBOutlet weak var registrationButtonText: UIButton!
    
    let authentificationService = AuthentificationService()

    override func viewDidLoad() {
        super.viewDidLoad()
      setUp()
    
    }
    
   private func setUp() {
       view.backgroundColor = .gray
       loginLabel.text = "Email/number"
       loginTextField.placeholder = "email/number"
       passwordLabel.text = "Password"
       passwordTextField.placeholder = "your password here"
       loginButtonText.setTitle("Login", for: .normal)
       registrationButtonText.setTitle("Register", for: .normal)
    }

    @IBAction func loginButton(_ sender: Any) {
        if self.loginTextField.text?.count != 0 && self.passwordTextField.text?.count != 0 {
            logIn(email: loginTextField.text!, password: passwordTextField.text!)
        }
    }

    @IBAction func registrationButton(_ sender: Any) {
        let viewController:UIViewController = RegisterViewController()
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    func logIn(email: String, password: String) {
      
        self.authentificationService.login(username: email, password: password) { [weak self] in
            print("success")
            self?.navigateToUserListVC()
        } errorHandler: { errorMessage in
            print(errorMessage)
        }

    }
    
    private func navigateToUserListVC() {
        let viewController:UIViewController = UserListTableViewController()
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
}
