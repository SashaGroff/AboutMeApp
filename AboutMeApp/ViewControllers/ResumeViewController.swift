//
//  ResumeViewController.swift
//  AboutMeApp
//
//  Created by Александр Гончаров on 30.11.2023.
//

import UIKit

final class ResumeViewController: UIViewController {
    
     // MARK: - IB Outlets
    @IBOutlet var photoImage: UIImageView! 
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var secondNameLabel: UILabel!
    @IBOutlet var ageLabel: UILabel!
    @IBOutlet var addressLabel: UILabel!
    
     // MARK: - Public Properties
    var user: User!
    
     // MARK: - View Life Cycles
    override func viewDidLoad() {
        super.viewDidLoad()
        
        photoImage.layer.cornerRadius = photoImage.frame.width / 2
        photoImage.image = UIImage(named: user.person.photo)
        
        title = user.person.fullname
        nameLabel.text = "Имя: \(user.person.name)"
        secondNameLabel.text = "Фамилия: \(user.person.surname)"
        ageLabel.text = "Возраст: \(user.person.age)"
        addressLabel.text = "Место жительства: \(user.person.address)"
        
        addBackgroundWithGradient()
    }
    
     // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let aboutMeVC = segue.destination as? AboutMeViewController else {return}
        aboutMeVC.user = user
    }
}
