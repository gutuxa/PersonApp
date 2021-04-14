//
//  TabBarViewController.swift
//  PersonApp
//
//  Created by Oksana Tugusheva on 14.04.2021.
//

import UIKit

class TabBarViewController: UITabBarController {

    let persons = DataManager().getPersons()
    
    override func viewDidLoad() {
        super.viewDidLoad()
                
        if let controllers = viewControllers {
            for viewController in controllers {
                if let navigationVC = viewController as? UINavigationController {
                    if let personVC = navigationVC.topViewController as? PersonListTableViewController {
                        personVC.persons = persons
                    }
                    
                    if let personWithDetailsVC = navigationVC.topViewController as? PersonWithDetailsTableViewController {
                        personWithDetailsVC.persons = persons
                    }
                }
            }
        }
    }
}
