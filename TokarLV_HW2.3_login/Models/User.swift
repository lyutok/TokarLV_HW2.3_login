//
//  User.swift
//  TokarLV_HW2.3_login
//
//  Created by Lyudmila Tokar on 2/7/21.
//

struct User{
    let username: String
    let password: String
    let name: String
    let surname: String
    let hobby: String
    let email: String
    let profession: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
}

extension User {
    static func myInfo() -> User {
        User(username: "User",
             password: "12345",
             name: "Lyudmila",
             surname: "Tokar",
             hobby: "Travelling, learning languages, reading",
             email: "tokarlyudmila@gmail.com",
             profession: "QA")
    }
}

