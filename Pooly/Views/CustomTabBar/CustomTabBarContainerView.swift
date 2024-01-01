//
//  CustomTabBarContainerView.swift
//  Pooly
//
//  Created by Jack on 1/01/24.
//

import SwiftUI

struct CustomTabBarContainerView<Content: View>: View {
    
    @Binding var selection: TabBarItem
    @State private var tabs: [TabBarItem] = []
    
    let content: Content
    
    init(selection: Binding<TabBarItem>, @ViewBuilder content: () -> Content) {
        self._selection = selection
        self.content = content()
    }
    
    var body: some View {
        ZStack(alignment: .bottom) {
            
            content
                .ignoresSafeArea()
            CustomTabBarView(tabs: tabs, selection: $selection, localSelection: selection)
        }
       
        .onPreferenceChange(TabBarItemsPreferenceKey.self, perform: { value in
            self.tabs = value
        })
    }
}

struct CustomTabBarContainerView_Preview: PreviewProvider {
    static let tabs: [TabBarItem] = [
        .account,
        .play,
        .leaderboard
    ]
    
    static var previews: some View {
        CustomTabBarContainerView(selection: .constant(tabs.first!)) {
            Color.red
        }
    }
}

