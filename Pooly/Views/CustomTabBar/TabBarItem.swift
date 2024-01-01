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

enum TabBarItem: Hashable {
    case account, play, leaderboard
    
    var iconName: String {
        switch self {
        case .account: return "person"
        case .play: return "play"
        case .leaderboard: return "trophy"
        }
    }
    
    var title: String {
        switch self {
        case .account: return "Account"
        case .play: return "Play"
        case .leaderboard: return "Leaderboard"
            
        }
    }
}

