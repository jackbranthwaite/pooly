//
//  User.swift
//  Pooly
//
//  Created by Jack on 14/01/24.
//

import Foundation

struct UserPooly: Decodable, Identifiable, Hashable {
    
    let id: Int
    let first_name: String
    let last_name: String
    let email: String
    let colour: String
    let memoji: Int
    let company: String
    let current_position: Int
    let win_percentage: Int

    static let example = UserPooly(id: 1, first_name: "Harold", last_name: "Test", email: "harold.test@gmail.com", colour: ".pink", memoji: 1, company: "ClickSuite", current_position: 1, win_percentage: 10)
}
