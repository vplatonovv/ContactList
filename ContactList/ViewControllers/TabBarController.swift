//
//  TabBarController.swift
//  ContactList
//
//  Created by Слава Платонов on 09.09.2021.
//

import UIKit

class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        postDataToFullContactView()
    }
    
    private func postDataToFullContactView() {
        let persons = Person.getPersons()
        let contactListView = viewControllers?.first as! ContactListViewController
        let fullContactListView = viewControllers?.last as! FullContactListViewController
        
        contactListView.persons = persons
        fullContactListView.persons = persons
    }
    
    
}
