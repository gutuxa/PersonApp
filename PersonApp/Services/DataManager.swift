//
//  DataManager.swift
//  PersonApp
//
//  Created by Oksana Tugusheva on 14.04.2021.
//

class DataManager {
    let firstNames = ["Chris", "Bob", "Mike", "Freddy", "Alan"]
    let lastNames = ["Kaufman", "Miles", "Cook", "Tayson", "Devines"]
    let emails = ["sir@der.com", "fon@bon.com", "cto@apple.com", "it@mall.com", "boss@mouse.com"]
    let phones = ["4325342134", "456523412", "234356753", "998234585", "678239222"]
    
    static var shared = DataManager()
    
    private init() {}
}
