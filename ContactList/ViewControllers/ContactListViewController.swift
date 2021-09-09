//
//  ContactListViewController.swift
//  ContactList
//
//  Created by Слава Платонов on 07.09.2021.
//

import UIKit

class ContactListViewController: UITableViewController {
    
    private var persons = Person.getPersons()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        postDataToFullContactView()
    }
    
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "smallListCell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let person = persons[indexPath.row]
        content.text = person.fullName
        cell.contentConfiguration = content
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailVC = segue.destination as? DetailViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let person = persons[indexPath.row]
        detailVC.person = person
    }

}

extension ContactListViewController {
    private func postDataToFullContactView() {
        guard let tabBarViewControllers = tabBarController?.viewControllers else { return }
        for viewControlles in tabBarViewControllers {
            if let fullContactView = viewControlles as? FullContactListViewController {
                fullContactView.persons = persons
            }
        }
    }
}
