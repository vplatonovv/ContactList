//
//  DataManager.swift
//  ContactList
//
//  Created by Слава Платонов on 09.09.2021.
//

import Foundation

class DataManager {
    
    static var shared = DataManager()
    
    let names =
        ["Lora", "Max", "Jack", "John", "Fill", "Kate", "Ness", "Alex", "Tony",
         "Klar", "Kira", "Anton", "Klark"
        ]
    let secondNames =
        ["Smith", "Stark", "Kim", "Mactavish", "Lourens", "Fooler", "Whatson",
         "Holms", "Banner", "Ten", "Kent", "Heller", "Foilen"
        ]
    let phones =
        ["89011002020", "89022003030", "89033004040", "89044005050",
         "89055006060", "89066007070", "89077008080", "89088009090", "89099001010",
         "89100002020", "89201112222", "89302223344", "89401112220"
        ]
    let emails = ["22@gm.com", "11@gm.com", "33@gm.com", "55@gm.com",
                  "44@gm.com", "66@gm.com", "77@gm.com", "99@gm.com",
                  "88@gm.com", "10@gm.com", "20@gm.com", "30@gm.com", "40@gm.com"]
    
    private init() {}
    
}

