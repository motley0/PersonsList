//
//  DataManager.swift
//  PersonsList
//
//  Created by Dmitry Shcherbakov on 04.11.2020.
//

import Foundation


class DataManager {
    
    private var lastNames = [
        "Иван",
        "Иосиф",
        "Богдан",
        "Артем",
        "Варфоломей",
        "Сергей",
        "Руслан",
        "Леонид",
        "Алексей",
        "Бронислав"
    ]
    private var firstNames = [
        "Якимов",
        "Пищальников",
        "Холодов",
        "Меледин",
        "Веточкин",
        "Дёгтин",
        "Аршавин",
        "Степашин",
        "Ивкин",
        "Мосяков"
    ]
    private var phones = [
        "+7(495)803-92-04",
        "+7(495)715-25-07",
        "+7(495)782-04-16",
        "+7(495)819-69-58",
        "+7(495)627-83-15",
        "+7(495)202-81-01",
        "+7(495)939-35-67",
        "+7(495)860-72-95",
        "+7(495)138-44-35",
        "+7(495)485-68-75"
    ]
    private var emails = [
        "44dc1ffm@yandex.ru",
        "5ybwi@mail.ru",
        "pvvxl@gmail.com",
        "kc29hc0e@yandex.ru",
        "myrfqpb@mail.ru",
        "copaa6@gmail.com",
        "n4zc9kz@yandex.ru",
        "q4aptu@mail.ru",
        "xl9bc5@gmail.com",
        "ahbg@yandex.ru"
    ]
    
    func getPersons() -> [Person] {
        shufflePersonData()

        return lastNames.enumerated().map() {
            Person(lastName: $1,
                   firstName: firstNames[$0],
                   phone: phones[$0],
                   email: emails[$0])
        }
    }
    
    private func shufflePersonData() {
        lastNames.shuffle()
        firstNames.shuffle()
        phones.shuffle()
        emails.shuffle()
    }
}
