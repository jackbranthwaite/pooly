//
//  RootView.swift
//  Pooly
//
//  Created by Jack on 30/12/23.
//

import SwiftUI
import Firebase


struct RootView: View {
    
    @State private var userIsLoggedIn: Bool = false
    
    var body: some View {
        VStack() {
            Header()
            Spacer()
            if(Auth.auth().currentUser != nil){
                AppTabBarView()
            } else {
                LoginView(loggedIn: userIsLoggedIn)
            }
        }
        .background(LinearGradient(gradient: Gradient(colors: [Color(red: 207/255, green: 225/255, blue: 241/255), Color(red: 206/255, green: 204/255, blue: 245/255)]), startPoint: .top, endPoint: .bottom))
        
   
    }
        
}

#Preview { 
    RootView()
}
