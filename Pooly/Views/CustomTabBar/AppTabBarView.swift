//
//  AppTabBar.swift
//  Pooly
//
//  Created by Jack on 1/01/24.
//

import SwiftUI

struct AppTabBarView: View {
    
    @State private var tabSelection: TabBarItem = .account
    
    var body: some View {
        CustomTabBarContainerView(selection: $tabSelection) {
            AccountView()
                .tabBarItem(tab: .account, selection: $tabSelection)
            PlayView()
                .tabBarItem(tab: .play, selection: $tabSelection)
            LeaderBoardView()
                .tabBarItem(tab: .leaderboard, selection: $tabSelection)
        }
            .ignoresSafeArea(.keyboard)
    }
}

struct AppTabBarView_Preview: PreviewProvider {
    
    static var previews: some View {
        AppTabBarView()
    }
}
