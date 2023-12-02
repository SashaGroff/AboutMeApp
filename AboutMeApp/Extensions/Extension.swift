
//
//  extencion.swift
//  AboutMeApp
//
//  Created by Александр Гончаров on 01.12.2023.
//

import UIKit

extension UIViewController {
    
    func addBackgroundWithGradient() {
        
        let gradientBackground = CAGradientLayer()
        gradientBackground.colors = [UIColor.systemPink.cgColor, UIColor.systemBlue.cgColor]
        gradientBackground.frame = view.bounds
        
        gradientBackground.startPoint = CGPoint(x: 0, y: 0)
        gradientBackground.endPoint = CGPoint(x: 0, y: 1)
        
        view.layer.insertSublayer(gradientBackground, at: 0)
    }
    
    func showAlert (
        withTitle title: String,
        andMessage message: String,
        completion: (() -> Void)? = nil
    ) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        let okAction = UIAlertAction(title: "OK", style: .cancel) {_ in
            completion?()
        }
        alert.addAction(okAction)
        
        present(alert, animated: true)
    }
}
