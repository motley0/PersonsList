//
//  PersonsListViewController.swift
//  PersonsList
//
//  Created by Dmitry Shcherbakov on 04.11.2020.
//

import UIKit

class PersonsListViewController: UITableViewController {
    
    let persons = DataManager().getPersons()

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        
        let personInfoVC = segue.destination as! PersonInfoViewController
        personInfoVC.person = persons[indexPath.row]
    }


}

extension PersonsListViewController {
    
    override func tableView(_ tableView: UITableView,
                            numberOfRowsInSection section: Int) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView,
                            cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "person",
                                                 for: indexPath)
        cell.textLabel?.text = persons[indexPath.row].fullName
        
        return cell
    }
    
}
