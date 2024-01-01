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
    @Namespace private var namespace
    @State var localSelection: TabBarItem
    
    var body: some View {
       tabBar
            .onChange(of: selection) {
                withAnimation(.easeInOut){
                    localSelection = selection
                }
            }
    }
}

struct CustomTabBarView_Previews: PreviewProvider {
    
    static let tabs: [TabBarItem] = [
        .account,
        .play,
        .leaderboard
    ]
    
    static var previews: some View {
        VStack {
            Spacer()
            CustomTabBarView(tabs: tabs, selection: .constant(tabs.first!), localSelection: tabs.first!)
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
        .background(
            ZStack {
                if localSelection == tab {
                    RoundedRectangle(cornerRadius: 12)
                        .fill(Color.white)
                        .matchedGeometryEffect(id: "background_rectangle", in: namespace)
                }
            }
        )
        .padding(6)

    }
    
    private var tabBar: some View {
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
        .padding(.horizontal, 24)
//        .shadow(color: Color.black.opacity(0.1), radius:5, x: 0, y: 5)
    }
    
    private func switchToTab(tab: TabBarItem){
            selection = tab
    }
}
