//
//  RootView.swift
//  Pooly
//
//  Created by Jack on 30/12/23.
//

import SwiftUI



struct RootView: View {
    
    @State var selectedTab: Tabs = .account
    
    var body: some View {
        VStack {
            Text("Pooly")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            
            Spacer()
            
            CustomTabBar(selectedTab: $selectedTab)
        }
        .background(Color(red: 206/255, green: 204/255, blue: 245/255, opacity: 1))
   
    }
        
}

#Preview {
    RootView()
}
