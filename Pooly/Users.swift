//
//  Users.swift
//  Pooly
//
//  Created by Jack on 14/01/24.
//

import Foundation

// Additional way of creating custom data structures:
// a class is designed to be shared - throughout application.
// Load the JSON once and share throughout.
// Observeable object watches for changes in the data and updates when required

class Users: ObservableObject {
    let people: [User]
    
    var primary: User {
        people[0]
    }
    
    init() {
//  The exclamation mark is unsafe - you're guaranteeing the file will be there with that but that's not true - app will crash if the file is not there
        let url = Bundle.main.url(forResource: "users", withExtension: "json")!
        let data = try! Data(contentsOf: url)
        people = try! JSONDecoder().decode([User].self, from: data)
    }
}

