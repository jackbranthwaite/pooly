//
//  TabBarItem.swift
//  Pooly
//
//  Created by Jack on 1/01/24.
//

import Foundation
import SwiftUI

//struct TabBarItem: Hashable {
//    let iconName: String
//    let title: String
//}

enum TabBarItemView: Hashable {
    case login, register
    
    var iconName: String {
        switch self {
        case .login: return "person"
        case .register: return "person.badge.plus"
        }
    }
    
    var title: String {
        switch self {
        case .login: return "Login"
        case .register: return "Register"
        }
    }
}

