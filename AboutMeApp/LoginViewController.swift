//
//  ViewController.swift
//  AboutMeApp
//
//  Created by Александр Гончаров on 23.11.2023.
//

import UIKit

final class LoginViewController: UIViewController {
    
   private let userName = "Student"
   private let userPassword = "pass1234"
    
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    @IBAction func logInAction() {
    }
    

    @IBAction func remaindAuthorizationDataActiont(_ sender: UIButton) {
    }
    
    private func showAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        present(alert, animated: true)
    }
}

