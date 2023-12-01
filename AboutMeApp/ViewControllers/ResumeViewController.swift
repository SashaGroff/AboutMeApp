//
//  ResumeViewController.swift
//  AboutMeApp
//
//  Created by Александр Гончаров on 30.11.2023.
//

import UIKit

final class ResumeViewController: UIViewController {
     // MARK: - IB Outlets
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var secondNameLabel: UILabel!
    @IBOutlet var ageLabel: UILabel!
    @IBOutlet var addressLabel: UILabel!
    
     // MARK: - Public Properties
    var user: User!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = "Имя: \(user.person.name)"
        secondNameLabel.text = "Фамилия: \(user.person.surname)"
        ageLabel.text = "Возраст: \(user.person.age)"
        addressLabel.text = "Место жительства: \(user.person.address)"

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let bioVC = segue.destination as? AboutMeViewController else {return}
        bioVC.user = user
    }
}
