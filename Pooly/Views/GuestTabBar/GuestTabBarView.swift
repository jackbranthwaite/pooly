//
//  GuestTabBarVie.swift
//  Pooly
//
//  Created by Jack on 11/02/24.
//

import SwiftUI

struct GuestTabBarView: View {
    
    @Binding var userIsLoggedIn: Bool
    
    @State private var tabSelection: TabBarItemView = .login
    
    
    
    var body: some View {
        GuestTabBarContainerView(selection: $tabSelection) {
                LoginView(userIsLoggedIn: $userIsLoggedIn)
                    .tabBarItem(tab: .login, selection: $tabSelection)
                RegisterView(userIsLoggedIn: $userIsLoggedIn)
                    .tabBarItem(tab: .register, selection: $tabSelection)
        }
    }
}

struct GuestTabBarView_Previwes: PreviewProvider {
    static var previews: some View {
        GuestTabBarView(userIsLoggedIn: .constant(false))
    }
}
