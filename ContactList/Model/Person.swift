//
//  Person.swift
//  ContactList
//
//  Created by Armen Madoyan on 19.10.2022.
//

struct Person {
    var name: String
    var surname: String
    var phoneNumber: String
    var email: String
    
    var fullname: String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> [Person] {
        var name = DataStore().names.shuffled()
        var surname = DataStore().surnames.shuffled()
        var phoneNumber = DataStore().phoneNumbers.shuffled()
        var email = DataStore().emails.shuffled()
        
        return [
            Person(name: name.remove(at: 0), surname: surname.remove(at: 0), phoneNumber: phoneNumber.remove(at: 0), email: email.remove(at: 0)),
            Person(name: name.remove(at: 0), surname: surname.remove(at: 0), phoneNumber: phoneNumber.remove(at: 0), email: email.remove(at: 0)),
            Person(name: name.remove(at: 0), surname: surname.remove(at: 0), phoneNumber: phoneNumber.remove(at: 0), email: email.remove(at: 0)),
            Person(name: name.remove(at: 0), surname: surname.remove(at: 0), phoneNumber: phoneNumber.remove(at: 0), email: email.remove(at: 0)),
            Person(name: name.remove(at: 0), surname: surname.remove(at: 0), phoneNumber: phoneNumber.remove(at: 0), email: email.remove(at: 0)),
            Person(name: name.remove(at: 0), surname: surname.remove(at: 0), phoneNumber: phoneNumber.remove(at: 0), email: email.remove(at: 0)),
            Person(name: name.remove(at: 0), surname: surname.remove(at: 0), phoneNumber: phoneNumber.remove(at: 0), email: email.remove(at: 0)),
            Person(name: name.remove(at: 0), surname: surname.remove(at: 0), phoneNumber: phoneNumber.remove(at: 0), email: email.remove(at: 0))
        ]
    }
}
