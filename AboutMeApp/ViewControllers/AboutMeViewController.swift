//
//  AboutMeViewController.swift
//  AboutMeApp
//
//  Created by Александр Гончаров on 30.11.2023.
//

import UIKit

final class AboutMeViewController: UIViewController {
    
     // MARK: - IB Outlets
    @IBOutlet var bioLabel: UILabel!
    
     // MARK: - Public Propeties
    var user: User!
    
     // MARK: - View Life Cycles
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addBackgroundWithGradient()
        
        bioLabel.text = user.person.bio
    }
}
