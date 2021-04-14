//
//  PersonDelailsViewController.swift
//  PersonApp
//
//  Created by Oksana Tugusheva on 14.04.2021.
//

import UIKit

class PersonDelailsViewController: UIViewController {

    @IBOutlet var emailLabel: UILabel!
    @IBOutlet var phoneLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = person.fullName
        emailLabel.text = "Email: \(person.email)"
        phoneLabel.text = "Phone: \(person.phone)"
    }
}

