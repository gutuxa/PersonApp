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

extension Person {
    static func getPersons() -> [Person] {
        var persons: [Person] = []
                
        let firstNames = DataManager.shared.firstNames.shuffled()
        let lastNames = DataManager.shared.lastNames.shuffled()
        let emails = DataManager.shared.emails.shuffled()
        let phones = DataManager.shared.phones.shuffled()
                
        let iterationCount = min(firstNames.count, lastNames.count, emails.count, phones.count)
        
        for iteration in 0..<iterationCount {
            let person = Person(
                firstName: firstNames[iteration],
                lastName: lastNames[iteration],
                email: emails[iteration],
                phone: phones[iteration])
            
            persons.append(person)
        }
        
        return persons
    }
}
