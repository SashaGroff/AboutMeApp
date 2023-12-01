//
//  ViewController.swift
//  AboutMeApp
//
//  Created by Александр Гончаров on 23.11.2023.
//

import UIKit

final class LoginViewController: UIViewController {
    
     // MARK: - IB Outlets
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var userPasswordTF: UITextField!
    
     // MARK: - Private Properties
    private var user = User.getUser()
    
     // MARK: - View life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameTF?.text = user.login
        userPasswordTF?.text = user.password
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
     // MARK: - Novigation
    override func shouldPerformSegue(
        withIdentifier identifier: String,
        sender: Any?
    ) -> Bool {
        guard userNameTF.text == user.login, userPasswordTF.text == user.password else {
            showAlert(
                withTitle: "Invalid login or password",
                andMessage: "Please, enter correct login and password"
            )
            return false
        }
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else {return}
        guard let viewControllers = tabBarController.viewControllers else {return}
        
        for viewController in viewControllers {
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.user = user
            } else if let navigationVC = viewController as? UINavigationController {
                guard let aboutVC = navigationVC.topViewController as? ResumeViewController else {
                    return
                }
                aboutVC.user = user
            }
        }
    }
    
     // MARK: - IB Actions
    @IBAction func remaindUserNameAction() {
        showAlert(withTitle: "Oops!", andMessage: "Your name is \(user.login) 😉")
    }
    
    @IBAction func remaindPasswordAction() {
        showAlert(withTitle: "Oops!", andMessage: "Your password is \(user.password) 😉")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        userPasswordTF.text = ""
    }
    
}


    // MARK: - UIAlertController

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
