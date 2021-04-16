//
//  TabBarViewController.swift
//  PersonApp
//
//  Created by Oksana Tugusheva on 14.04.2021.
//

import UIKit

class TabBarViewController: UITabBarController {
    let persons = Person.getPersons()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
    }
    
    private func setupViewControllers() {
        guard let viewControllers = viewControllers else { return }

        for viewController in viewControllers {
            if let personVC = viewController as? PersonListTableViewController {
                personVC.persons = persons
            } else if let personWithDetailsVC = viewController as? PersonWithDetailsTableViewController {
                personWithDetailsVC.persons = persons
            }
        }
    }
}
