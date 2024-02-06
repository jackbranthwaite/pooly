//
//  RootView.swift
//  Pooly
//
//  Created by Jack on 30/12/23.
//

import SwiftUI



struct RootView: View {
    
    var body: some View {
        VStack() {
            Header()
            Spacer()
//            AppTabBarView()
            LoginView()
            Spacer()
            
        }
        .background(LinearGradient(gradient: Gradient(colors: [Color(red: 207/255, green: 225/255, blue: 241/255), Color(red: 206/255, green: 204/255, blue: 245/255)]), startPoint: .top, endPoint: .bottom))
        
   
    }
        
}

#Preview { 
    RootView()
}
