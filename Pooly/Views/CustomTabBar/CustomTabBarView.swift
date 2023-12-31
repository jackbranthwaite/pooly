//
//  CustomTabBarView.swift
//  Pooly
//
//  Created by Jack on 1/01/24.
//

import SwiftUI

struct CustomTabBarView: View {
    
    let tabs: [TabBarItem]
    
    @Binding var selection: TabBarItem
    
    var body: some View {
        HStack {
            ForEach(tabs, id: \.self) { tab in
                tabView(tab: tab)
                    .onTapGesture {
                        switchToTab(tab: tab)
                    }
            }
        }
        .frame(height: 50)
        .overlay(RoundedRectangle(cornerRadius: 12).stroke( (Color(red: 229/255, green: 229/255, blue: 229/255)), lineWidth: 1))
        .background(Color(red: 241/255, green: 245/255, blue: 251/255).clipShape(RoundedRectangle(cornerRadius:12)))
        .padding(.vertical, 10)
        .padding(.horizontal, 10)
    }
}

struct CustomTabBarView_Previews: PreviewProvider {
    
    static let tabs: [TabBarItem] = [
        TabBarItem(iconName: "person", title: "Account"),
        TabBarItem(iconName: "play", title: "Play"),
        TabBarItem(iconName: "trophy", title: "Leaderboard")
    ]
    
    static var previews: some View {
        VStack {
            Spacer()
            CustomTabBarView(tabs: tabs, selection: .constant(tabs.first!))
        }
        
    }
    
    
}

extension CustomTabBarView {
    private func tabView(tab: TabBarItem)-> some View {
        VStack {
            Image(systemName: tab.iconName)
                .font(.subheadline)
            Text(tab.title)
                .font(.system(size: 10))
        }
        .foregroundColor(Color.black)
        .padding(.vertical, 5)
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
        .background(selection == tab ? Color.white : Color.clear)
        .cornerRadius(12)
        .padding(6)
    }
    
    private func switchToTab(tab: TabBarItem){
        withAnimation(.easeInOut) {
            selection = tab
        }
    }
}

struct TabBarItem: Hashable {
    let iconName: String
    let title: String
}
