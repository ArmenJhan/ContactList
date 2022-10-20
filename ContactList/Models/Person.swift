//
//  Person.swift
//  ContactList
//
//  Created by Armen Madoyan on 19.10.2022.
//

struct Person {
    let name: String
    let surname: String
    let phoneNumber: String
    let email: String
    
    var fullname: String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> [Person] {
        var persons: [Person] = []
        let dataStore = DataStore()
        
        for (index, _) in dataStore.phoneNumbers.enumerated() {
            let person = Person(
                name: dataStore.names[index],
                surname: dataStore.surnames[index],
                phoneNumber: dataStore.phoneNumbers[index],
                email: dataStore.emails[index]
            )
            persons.append(person)
        }
        return persons
    }
}
//
//    static func getPerson() -> [Person] {
//        var persons: [Person] = []
//        var name = DataStore().names.shuffled()
//        var surname = DataStore().surnames.shuffled()
//        var phoneNumber = DataStore().phoneNumbers.shuffled()
//        var email = DataStore().emails.shuffled()
//
//        for _ in 0..<DataStore().phoneNumbers.count{
//            let person = Person(
//                name: name.removeFirst(),
//                surname: surname.removeFirst(),
//                phoneNumber: phoneNumber.removeFirst(),
//                email: email.removeFirst()
//            )
//            persons.append(person)
//        }
//        return persons
//    }

