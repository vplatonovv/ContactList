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

        return [
            Person(name: dataManager.names.randomElement() ?? "", secondName: dataManager.secondNames.randomElement() ?? "", phone: dataManager.phones.randomElement() ?? "", email: dataManager.emails.randomElement() ?? ""),
            Person(name: dataManager.names.randomElement() ?? "", secondName: dataManager.secondNames.randomElement() ?? "", phone: dataManager.phones.randomElement() ?? "", email: dataManager.emails.randomElement() ?? ""),
            Person(name: dataManager.names.randomElement() ?? "", secondName: dataManager.secondNames.randomElement() ?? "", phone: dataManager.phones.randomElement() ?? "", email: dataManager.emails.randomElement() ?? ""),
            Person(name: dataManager.names.randomElement() ?? "", secondName: dataManager.secondNames.randomElement() ?? "", phone: dataManager.phones.randomElement() ?? "", email: dataManager.emails.randomElement() ?? ""),
            Person(name: dataManager.names.randomElement() ?? "", secondName: dataManager.secondNames.randomElement() ?? "", phone: dataManager.phones.randomElement() ?? "", email: dataManager.emails.randomElement() ?? ""),
            Person(name: dataManager.names.randomElement() ?? "", secondName: dataManager.secondNames.randomElement() ?? "", phone: dataManager.phones.randomElement() ?? "", email: dataManager.emails.randomElement() ?? ""),
            Person(name: dataManager.names.randomElement() ?? "", secondName: dataManager.secondNames.randomElement() ?? "", phone: dataManager.phones.randomElement() ?? "", email: dataManager.emails.randomElement() ?? ""),
            Person(name: dataManager.names.randomElement() ?? "", secondName: dataManager.secondNames.randomElement() ?? "", phone: dataManager.phones.randomElement() ?? "", email: dataManager.emails.randomElement() ?? ""),
            Person(name: dataManager.names.randomElement() ?? "", secondName: dataManager.secondNames.randomElement() ?? "", phone: dataManager.phones.randomElement() ?? "", email: dataManager.emails.randomElement() ?? ""),
            Person(name: dataManager.names.randomElement() ?? "", secondName: dataManager.secondNames.randomElement() ?? "", phone: dataManager.phones.randomElement() ?? "", email: dataManager.emails.randomElement() ?? "")
        ]
    }
}

class DataManager {
    
    var names = [
        "Stephan",
        "Jack",
        "Lola",
        "Sebastian",
        "Kate",
        "Lusi",
        "Anna",
        "John",
        "Fill",
        "Jaden"
    ]
    var secondNames = [
        "Makalen",
        "Smith",
        "Osponse",
        "Klarens",
        "Nil",
        "Spenser",
        "Oldridge",
        "Kim",
        "Lourens",
        "Heets"
    ]
    var phones = [
        "8-900-235-22-44",
        "8-955-534-10-60",
        "8-990-190-90-00",
        "8-920-822-42-24",
        "8-910-657-10-64",
        "8-930-490-47-84",
        "8-960-876-29-04",
        "8-950-675-61-41",
        "8-999-135-45-22",
        "8-980-935-20-56"
    ]
    var emails = [
        "www@gm.com",
        "qqq@gm.com",
        "eee@gm.com",
        "sss@gm.com",
        "xxx@gm.com",
        "hhh@gm.com",
        "ttt@gm.com",
        "jjj@gm.com",
        "aaa@gm.com",
        "mmm@gm.com"
    ]
}

let dataManager = DataManager()
