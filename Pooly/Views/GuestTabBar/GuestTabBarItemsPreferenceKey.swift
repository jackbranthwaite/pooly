//
//  GuestTabBarItemsPreferenceKey.swift
//  Pooly
//
//  Created by Jack on 11/02/24.
//

import SwiftUI
import Foundation

struct GuestTabBarItemsPreferenceKey: PreferenceKey {
    static var defaultValue: [TabBarItemView] = []
    
    static func reduce(value: inout [TabBarItemView], nextValue: () -> [TabBarItemView]) {
        value += nextValue()
    }
}


struct GuestTabBarItemViewModifier: ViewModifier {
    
    let tab: TabBarItemView
    @Binding var selection: TabBarItemView
    
    func body(content: Content) -> some View {
        content
            .opacity(selection == tab ? 1.0 : 0.0)
            .preference(key: GuestTabBarItemsPreferenceKey.self, value: [tab])
    }
}

extension View {
    
    func tabBarItem(tab:TabBarItemView, selection: Binding<TabBarItemView>) -> some View {
        modifier(GuestTabBarItemViewModifier(tab: tab, selection: selection))
    }
    
}
