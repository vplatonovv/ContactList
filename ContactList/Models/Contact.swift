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
            Person(name: DataManager.getUniqueName(), secondName: DataManager.getUniqueSecondName(), phone: DataManager.getUniquePhone(), email: DataManager.getUniqueEmail()),
            Person(name: DataManager.getUniqueName(), secondName: DataManager.getUniqueSecondName(), phone: DataManager.getUniquePhone(), email: DataManager.getUniqueEmail()),
            Person(name: DataManager.getUniqueName(), secondName: DataManager.getUniqueSecondName(), phone: DataManager.getUniquePhone(), email: DataManager.getUniqueEmail()),
            Person(name: DataManager.getUniqueName(), secondName: DataManager.getUniqueSecondName(), phone: DataManager.getUniquePhone(), email: DataManager.getUniqueEmail())
        ]
    }
}

class DataManager {
        
    static var names = ["Lora", "Max", "Jack", "John", "Fill", "Kate", "Ness", "Alex", "Tony", "Klar", "Kira", "Anton", "Klark"]
    static var secondNames = ["Smith", "Stark", "Kim", "Mactavish", "Lourens", "Fooler", "Whatson", "Holms", "Banner", "Ten", "Kent", "Heller", "Foilen"]
    static var phones = ["89011002020", "89022003030", "89033004040", "89044005050", "89055006060", "89066007070", "89077008080", "89088009090", "89099001010", "89100002020", "89201112222", "89302223344", "89401112220"]
    static var emails = ["22@gm.com", "11@gm.com", "33@gm.com", "55@gm.com", "44@gm.com", "66@gm.com", "77@gm.com", "99@gm.com", "88@gm.com", "10@gm.com", "20@gm.com", "30@gm.com", "40@gm.com"]
    
    static func getUniqueName() -> String {
        var uniqueName = ""
        if names.count != 0 {
        uniqueName = names.remove(at: Int.random(in: 0...names.count - 1))
        }
        return uniqueName
    }
    
    static func getUniqueSecondName() -> String {
        var uniqueSecondName = ""
        if secondNames.count != 0 {
        uniqueSecondName = secondNames.remove(at: Int.random(in: 0...secondNames.count - 1))
        }
        return uniqueSecondName
    }
    
    static func getUniquePhone() -> String {
        var uniquePhone = ""
        if phones.count != 0 {
        uniquePhone = phones.remove(at: Int.random(in: 0...phones.count - 1))
        }
        return uniquePhone
    }
    
    static func getUniqueEmail() -> String {
        var uniqueEmail = ""
        if emails.count != 0 {
        uniqueEmail = emails.remove(at: Int.random(in: 0...emails.count - 1))
        }
        return uniqueEmail
    }
}
