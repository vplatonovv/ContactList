//
//  FullContactListViewController.swift
//  ContactList
//
//  Created by Слава Платонов on 07.09.2021.
//

import UIKit

class FullContactListViewController: UITableViewController {
    
    private var persons = Person.getPersons()

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let section = persons[section]
        return section.fullName
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let phoneСell = tableView.dequeueReusableCell(withIdentifier: "infoCell", for: indexPath)
        var contentPhone = phoneСell.defaultContentConfiguration()
        let person = persons[indexPath.row]
        contentPhone.text = person.phone
        contentPhone.secondaryText = person.email
        phoneСell.contentConfiguration = contentPhone
        return phoneСell
    }
}



