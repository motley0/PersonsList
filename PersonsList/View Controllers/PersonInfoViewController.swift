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
        
        phoneLable.text = person.phone
        emailLabel.text = person.email
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
