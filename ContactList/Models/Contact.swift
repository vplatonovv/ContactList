//
//  Contact.swift
//  ContactList
//
//  Created by Слава Платонов on 07.09.2021.
//

import Foundation

struct Person {
    var name: String
    var secondName: String
    var phone: String
    var email: String
    var fullName: String {
        return "\(name) \(secondName)"
    }
    
    static func getPersons() -> [Person] {
        [
            Person(name: DataManager.getUniqueName(), secondName: DataManager.getUniqueSecondName(), phone: DataManager.getUniquePhone(), email: DataManager.getUniqueEmail()),
            Person(name: DataManager.getUniqueName(), secondName: DataManager.getUniqueSecondName(), phone: DataManager.getUniquePhone(), email: DataManager.getUniqueEmail()),
            Person(name: DataManager.getUniqueName(), secondName: DataManager.getUniqueSecondName(), phone: DataManager.getUniquePhone(), email: DataManager.getUniqueEmail()),
            Person(name: DataManager.getUniqueName(), secondName: DataManager.getUniqueSecondName(), phone: DataManager.getUniquePhone(), email: DataManager.getUniqueEmail()),
            Person(name: DataManager.getUniqueName(), secondName: DataManager.getUniqueSecondName(), phone: DataManager.getUniquePhone(), email: DataManager.getUniqueEmail()),
            Person(name: DataManager.getUniqueName(), secondName: DataManager.getUniqueSecondName(), phone: DataManager.getUniquePhone(), email: DataManager.getUniqueEmail()),
            Person(name: DataManager.getUniqueName(), secondName: DataManager.getUniqueSecondName(), phone: DataManager.getUniquePhone(), email: DataManager.getUniqueEmail()),
            Person(name: DataManager.getUniqueName(), secondName: DataManager.getUniqueSecondName(), phone: DataManager.getUniquePhone(), email: DataManager.getUniqueEmail()),
            Person(name: DataManager.getUniqueName(), secondName: DataManager.getUniqueSecondName(), phone: DataManager.getUniquePhone(), email: DataManager.getUniqueEmail()),
            Person(name: DataManager.getUniqueName(), secondName: DataManager.getUniqueSecondName(), phone: DataManager.getUniquePhone(), email: DataManager.getUniqueEmail())
        ]
    }
}

class DataManager {
        
    static var names = ["Lora", "Max", "Jack", "John", "Fill", "Kate", "Ness", "Alex", "Tony", "Klar"]
    static var secondNames = ["Smith", "Stark", "Kim", "Mactavish", "Lourens", "Fooler", "Whatson", "Holms", "Banner", "Ten"]
    static var phones = ["8900_100_2020", "8900_200_3030", "8900_300_4040", "8900_400_5050", "8900_500_6060", "8900_600_7070", "8900_700_8080", "8900_800_9090", "8900_900_1010", "8900_000_2020"]
    static var emails = ["@gm.com", "@gm.com", "@gm.com", "@gm.com", "@gm.com", "@gm.com", "@gm.com", "@gm.com", "@gm.com", "@gm.com"]
    
    static func getUniqueName() -> String {
        var uniqueName: String!
        if names.count != 0 {
        uniqueName = names.remove(at: Int.random(in: 0...names.count - 1))
        }
        return uniqueName ?? ""
    }
    
    static func getUniqueSecondName() -> String {
        var uniqueSecondName: String!
        if secondNames.count != 0 {
        uniqueSecondName = secondNames.remove(at: Int.random(in: 0...secondNames.count - 1))
        }
        return uniqueSecondName ?? ""
    }
    
    static func getUniquePhone() -> String {
        var uniquePhone: String!
        if phones.count != 0 {
        uniquePhone = phones.remove(at: Int.random(in: 0...phones.count - 1))
        }
        return uniquePhone ?? ""
    }
    
    static func getUniqueEmail() -> String {
        var uniqueEmail: String!
        if emails.count != 0 {
        uniqueEmail = emails.remove(at: Int.random(in: 0...emails.count - 1))
        }
        return uniqueEmail ?? ""
    }
}
