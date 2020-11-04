//
//  DetailedPersonsListViewController.swift
//  PersonsList
//
//  Created by Dmitry Shcherbakov on 04.11.2020.
//

import UIKit

class DetailedPersonsListViewController: UITableViewController {
    
    var persons: [Person]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        persons = (tabBarController as! MainContactsViewController).persons
    }
    
}

extension DetailedPersonsListViewController {
    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView,
                            titleForHeaderInSection section: Int) -> String? {
        persons[section].fullName
    }

    override func tableView(_ tableView: UITableView,
                            cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let personCell = tableView.dequeueReusableCell(withIdentifier: "person",
                                                       for: indexPath)
        let person = persons[indexPath.section]
        
        if indexPath.row == 0 {
            personCell.textLabel?.text = person.phone
            personCell.imageView?.image = UIImage(systemName: "phone")
        } else {
            personCell.textLabel?.text = person.email
            personCell.imageView?.image = UIImage(systemName: "envelope")
        }
        
        return personCell
    }
    
    override func tableView(_ tableView: UITableView,
                            numberOfRowsInSection section: Int) -> Int {
        2
    }
}
