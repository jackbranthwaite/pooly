//
//  GuestTabBarVie.swift
//  Pooly
//
//  Created by Jack on 11/02/24.
//

import SwiftUI

struct GuestTabBarView: View {
    @State private var tabSelection: TabBarItemView = .login
    
    var body: some View {
        GuestTabBarContainerView(selection: $tabSelection) {
                LoginView(loggedIn: .constant(false))
                    .tabBarItem(tab: .login, selection: $tabSelection)
                RegisterView(loggedIn: .constant(false))
                    .tabBarItem(tab: .register, selection: $tabSelection)
        }
    }
}

#Preview {
    GuestTabBarView()
}
