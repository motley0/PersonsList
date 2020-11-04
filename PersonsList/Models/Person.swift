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

extension Person {
    
    static func getPersons() -> [Person] {
        let manager = DataManager()
        manager.shuffleData()

        return manager.lastNames.enumerated().map() {
            Person(lastName: $1,
                   firstName: manager.firstNames[$0],
                   phone: manager.phones[$0],
                   email: manager.emails[$0])
        }
    }
    
}
