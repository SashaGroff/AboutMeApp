//
//  User.swift
//  AboutMeApp
//
//  Created by Александр Гончаров on 29.11.2023.
//

import Foundation

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUser() -> User {
        User(login: "User", password: "password", person: Person.getPerson())
    }
}

struct Person {
    let name: String
    let surname: String
    let age: String
    let about: String
    
    
    var fullname: String {
        name + " " + surname
    }
    
    static func getPerson() -> Person {
        Person(
            name: "Aleksandr",
            surname: "Goncharov",
            age: "26",
            about: "About"
        )
    }
    
}
