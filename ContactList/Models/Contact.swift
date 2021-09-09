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
        
        let names = DataManager.names.shuffled()
        let secondNames = DataManager.secondNames.shuffled()
        let phones = DataManager.phones.shuffled()
        let emails = DataManager.emails.shuffled()
        
        for index in 0...names.count - 1 {
            let person = Person(name: names[index], secondName: secondNames[index], phone: phones[index], email: emails[index])
            persons.append(person)
        }
        return persons
    }
}

class DataManager {
        
    static var names = ["Lora", "Max", "Jack", "John", "Fill", "Kate", "Ness", "Alex", "Tony", "Klar", "Kira", "Anton", "Klark"]
    static var secondNames = ["Smith", "Stark", "Kim", "Mactavish", "Lourens", "Fooler", "Whatson", "Holms", "Banner", "Ten", "Kent", "Heller", "Foilen"]
    static var phones = ["89011002020", "89022003030", "89033004040", "89044005050", "89055006060", "89066007070", "89077008080", "89088009090", "89099001010", "89100002020", "89201112222", "89302223344", "89401112220"]
    static var emails = ["22@gm.com", "11@gm.com", "33@gm.com", "55@gm.com", "44@gm.com", "66@gm.com", "77@gm.com", "99@gm.com", "88@gm.com", "10@gm.com", "20@gm.com", "30@gm.com", "40@gm.com"]
}
