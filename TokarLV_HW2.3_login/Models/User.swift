//
//  User.swift
//  TokarLV_HW2.3_login
//
//  Created by Lyudmila Tokar on 2/7/21.
//

struct User{
    let name: String
    let surname: String
    let hobby: String
    let email: String
    let profession: String
}

extension User {
    static func getInfo() -> User {
        User(name: "Lyudmila", surname: "Tokar", hobby: "Travelling, learning languages, reading", email: "tokarlyudmila@gmail.com", profession: "QA")
    }
}
