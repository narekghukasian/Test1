//
//  RegisterViewController.swift
//  Test1
//
//  Created by 66 on 12.10.22.
//

import UIKit

class RegisterViewController: UIViewController {

    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var registerButtontext: UIButton!
    
    let authentificationService = AuthentificationService()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUp()
    }

   private func setUp() {
        view.backgroundColor = .systemTeal
        firstNameTextField.placeholder = "Enter your name"
        lastNameTextField.placeholder = "Enter your last name here"
        ageTextField.placeholder = "How old are you"
        passwordTextField.placeholder = "Crate password"
        registerButtontext.setTitle("Register", for: .normal)
    }
    
    func register(firstname: String, lastname: String, password: String, age: String) {
        self.authentificationService.registration(firstname: firstname, lastname: lastname, password: password, age: age) { [weak self] in
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

    @IBAction func registerButton(_ sender: Any) {
        if firstNameTextField.text?.count != 0 && lastNameTextField.text?.count != 0 &&  passwordTextField.text?.count != 0 && ageTextField.text?.count != 0 {

            register(firstname: firstNameTextField.text!, lastname: lastNameTextField.text!, password: passwordTextField.text!, age: ageTextField.text!)
        } else {
            let alertController = UIAlertController(
                   title: "Worning", message: "Fill all the fields", preferredStyle: .alert)
            let defaultAction = UIAlertAction(
                   title: "OK", style: .default, handler: nil)
            alertController.addAction(defaultAction)
            present(alertController, animated: true, completion: nil)
        }
    }
    
    
    
}
