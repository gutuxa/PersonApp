//
//  Person.swift
//  PersonApp
//
//  Created by Oksana Tugusheva on 14.04.2021.
//

struct Person {
    let firstName: String
    let lastName: String
    let email: String
    let phone: String
    
    var fullName: String {
        "\(firstName) \(lastName)"
    }
}
