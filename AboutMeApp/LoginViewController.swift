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
    @IBOutlet var userPasswordTF: UITextField!
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func shouldPerformSegue(
        withIdentifier identifier: String,
        sender: Any?
    ) -> Bool {
        guard userNameTF.text == userName, userPasswordTF.text == userPassword else {
            showAlert(
                withTitle: "Invalid login or password",
                andMessage: "Please, enter correct login and password"
            )
            return false
        }
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let greetingScreen = segue.destination as? WelcomeViewController
        
        greetingScreen?.greetingName = userName
    }
   
//MARK: IBActions
    @IBAction func remaindUserNameAction() {
        showAlert(withTitle: "Oops!", andMessage: "Your name is \(userName) 😉")
    }
    
    @IBAction func remaindPasswordAction() {
        showAlert(withTitle: "Oops!", andMessage: "Your password is \(userPassword) 😉")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        userPasswordTF.text = ""
    }
    
}


// MARK: UIAlertController
extension LoginViewController{
    private func showAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.userPasswordTF?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
