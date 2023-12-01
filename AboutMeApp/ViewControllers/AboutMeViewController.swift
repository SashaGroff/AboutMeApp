//
//  AboutMeViewController.swift
//  AboutMeApp
//
//  Created by Александр Гончаров on 30.11.2023.
//

import UIKit

class AboutMeViewController: UIViewController {
    
    @IBOutlet var bioLabel: UILabel!
    
    var user: User!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        bioLabel.text = user.person.bio
    }
}
