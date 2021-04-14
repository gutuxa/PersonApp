//
//  DataManager.swift
//  PersonApp
//
//  Created by Oksana Tugusheva on 14.04.2021.
//

class DataManager {
    private var firstNames = ["Chris", "Bob", "Mike", "Freddy", "Alan"]
    private var lastNames = ["Kaufman", "Miles", "Cook", "Tayson", "Devines"]
    private var emails = ["sir@der.com", "fon@bon.com", "cto@apple.com", "it@mall.com", "boss@mouse.com"]
    private var phones = ["4325342134", "456523412", "234356753", "998234585", "678239222"]
    
    func getPersons() -> [Person] {
        var persons: [Person] = []
        
        while !firstNames.isEmpty || !lastNames.isEmpty || !emails.isEmpty || !phones.isEmpty {
            let person = Person(
                firstName: firstNames.remove(at: Int.random(in: 0..<firstNames.count)),
                lastName: lastNames.remove(at: Int.random(in: 0..<lastNames.count)),
                email: emails.remove(at: Int.random(in: 0..<emails.count)),
                phone: phones.remove(at: Int.random(in: 0..<phones.count))
            )
            
            persons.append(person)
        }
        
        return persons
    }
}
