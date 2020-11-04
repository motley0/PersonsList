//
//  PersonInfoViewController.swift
//  PersonsList
//
//  Created by Dmitry Shcherbakov on 04.11.2020.
//

import UIKit

class PersonInfoViewController: UIViewController {

    @IBOutlet var phoneLable: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = person.fullName
        phoneLable.text = person.phone
        emailLabel.text = person.email
    }
    
}
