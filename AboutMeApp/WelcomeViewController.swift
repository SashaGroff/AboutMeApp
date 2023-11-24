//
//  WelcomeViewController.swift
//  AboutMeApp
//
//  Created by Александр Гончаров on 24.11.2023.
//

import UIKit

final class WelcomeViewController: UIViewController {

    @IBOutlet var greetingLabel: UILabel!
    
    var greetingName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addBackgroundWithGradient()
        greetingLabel.text = "Welcome, \(greetingName ?? "")"
    }
    
    private func addBackgroundWithGradient() {
        
        let gradientBackground = CAGradientLayer()
        gradientBackground.colors = [UIColor.systemPink.cgColor, UIColor.systemBlue.cgColor]
        gradientBackground.frame = view.bounds
        
        gradientBackground.startPoint = CGPoint(x: 0, y: 0)
        gradientBackground.endPoint = CGPoint(x: 0, y: 1)
        
        view.layer.insertSublayer(gradientBackground, at: 0)
    }
}
