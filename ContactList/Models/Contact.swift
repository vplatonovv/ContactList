//
//  Contact.swift
//  ContactList
//
//  Created by Слава Платонов on 07.09.2021.
//

import Foundation

struct Person {
    let name: String
    let secondName: String
    let phone: String
    let email: String
    
    var fullName: String {
        return "\(name) \(secondName)"
    }
    
    static func getPersons() -> [Person] {
        var persons: [Person] = []
        
        let names = DataManager.shared.names.shuffled()
        let secondNames = DataManager.shared.secondNames.shuffled()
        let phones = DataManager.shared.phones.shuffled()
        let emails = DataManager.shared.emails.shuffled()
        
        let iteractionCount = min(names.count, secondNames.count, phones.count, emails.count)
        
        for index in 0..<iteractionCount {
            let person = Person(
                name: names[index],
                secondName: secondNames[index],
                phone: phones[index],
                email: emails[index]
            )
            persons.append(person)
        }
        return persons
    }
}
