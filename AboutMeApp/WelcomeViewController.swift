//
//  WelcomeViewController.swift
//  AboutMeApp
//
//  Created by Александр Гончаров on 24.11.2023.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
     // MARK: - IB Actions
    @IBOutlet var greetingLabel: UILabel!
    @IBOutlet var presentLabel: UILabel!
    
     // MARK: - Public methods
    var user: User!
    
     // MARK: - View Life Cycles
    override func viewDidLoad() {
        super.viewDidLoad()
        addBackgroundWithGradient()
        
        greetingLabel.text = "Добро пожаловать, \(user.login)"
        presentLabel.text = "Меня зовут \(user.person.fullname)"
    }
}
