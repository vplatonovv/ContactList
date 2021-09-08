//
//  DetailViewController.swift
//  ContactList
//
//  Created by Слава Платонов on 07.09.2021.
//

import UIKit

class DetailViewController: UIViewController {
    
    var person: Person!
    
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        phoneLabel.text = person.phone
        emailLabel.text = "\(person.name)\(person.email)"
        navigationItem.title = person.fullName
    }
}
