//
//  Person.swift
//  PersonsList
//
//  Created by Dmitry Shcherbakov on 04.11.2020.
//

import Foundation

struct Person {
    let lastName: String
    let firstName: String
    let phone: String
    let email: String
    
    var fullName: String {
        "\(lastName) \(firstName)"
    }
}
