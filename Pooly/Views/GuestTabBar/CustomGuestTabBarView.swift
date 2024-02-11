//
//  CustomGuestTabBarView.swift
//  Pooly
//
//  Created by Jack on 11/02/24.
//

import SwiftUI

struct CustomGuestTabBarView: View {
    let tabs: [TabBarItemView]
    
    @Binding var selection: TabBarItemView
    @Namespace private var namespace
    @State var localSelection: TabBarItemView
    
    var body: some View {
       tabBar
            .onChange(of: selection) {
                withAnimation(.easeInOut){
                    localSelection = selection
                }
            }
    }
}

struct CustomGuestTabBarView_Previews: PreviewProvider {
    
    static let tabs: [TabBarItemView] = [
        .login,
        .register,
    ]
    
    static var previews: some View {
        VStack {
            Spacer()
            CustomGuestTabBarView(tabs: tabs, selection: .constant(tabs.first!), localSelection: tabs.first!)
        }
        
    }
    
    
}



extension CustomGuestTabBarView {
    private func tabView(tab: TabBarItemView)-> some View {
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
                        .fill(Color(red:241/255, green:241/255, blue:241/255))
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
        .background(Color(red: 255/255, green: 255/255, blue: 255/255).clipShape(RoundedRectangle(cornerRadius:12)))
        .padding(.vertical, 10)
        .padding(.horizontal, 24)
//        .shadow(color: Color.black.opacity(0.1), radius:5, x: 0, y: 5)
    }
    
    private func switchToTab(tab: TabBarItemView){
            selection = tab
    }
}
