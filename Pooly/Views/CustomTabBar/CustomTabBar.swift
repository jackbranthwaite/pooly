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
                GeometryReader { geo in
                    HStack (alignment: .center, spacing: 6){
                        Image(systemName: "person")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 15, height: 18)
                        Text("Account")
                            .font(.custom( "buttonFont", fixedSize: 13))
                    }.frame(width: geo.size.width, height: geo.size.height)
                }
            }.tint(Color.black)
            
            
            Button {
                selectedTab = .play
            } label: {
                GeometryReader { geo in
                    HStack (alignment: .center, spacing: 6){
                        Image(systemName: "play")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 12, height: 18)
                        Text("Play")
                            .font(.custom("buttonFont", fixedSize: 13))
                    }.frame(width: geo.size.width, height: geo.size.height)
                }
            }.tint(Color.black)
            Button {
                selectedTab = .leaderboard
            } label: {
                GeometryReader { geo in
                    HStack (alignment: .center, spacing: 6) {
                        Image(systemName: "trophy")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 16, height: 18)
                        Text("Leaderboard")
                            .font(.custom("buttonFont", fixedSize: 13))
                    }.frame(width: geo.size.width, height: geo.size.height)
                }
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
    CustomTabBar(selectedTab: .constant(.play))
}
