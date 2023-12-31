//
//  CustomTabView.swift
//  Pooly
//
//  Created by Jack on 30/12/23.
//

import SwiftUI

enum Tabs: Int {
    case account = 0
    case play = 1
    case leaderboard = 2
}

struct CustomTabBar: View {
    
    @Binding var selectedTab: Tabs
    
    var body: some View {
        HStack {
            
            Button {
                selectedTab = .account
            } label: {
                TabBarButton(buttonText: "Account", imageName: "person", isActive: selectedTab == .account)
            }.tint(Color.black)
            
            
            Button {
                
            } label: {
                TabBarButton(buttonText: "Play", imageName: "play", isActive: selectedTab == .play)
            }.tint(Color.black)
            Button {
                selectedTab = .leaderboard
            } label: {
                TabBarButton(buttonText: "Leaderboard", imageName: "trophy", isActive: selectedTab == .leaderboard)
            }.tint(Color.black)
            
        }
        .frame(height: 50)
        .overlay(RoundedRectangle(cornerRadius: 12).stroke( (Color(red: 229/255, green: 229/255, blue: 229/255)), lineWidth: 1))
        .background(Color(red: 241/255, green: 245/255, blue: 251/255).clipShape(RoundedRectangle(cornerRadius:12)))
        .padding(.vertical, 20)
        .padding(.horizontal, 20)
        
        
        
    }
}

#Preview {
    CustomTabBar(selectedTab: .constant(.account))
}
