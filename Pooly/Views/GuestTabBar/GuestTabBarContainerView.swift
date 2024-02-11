//
//  GuestTabBarContainerView.swift
//  Pooly
//
//  Created by Jack on 11/02/24.
//

import SwiftUI

struct GuestTabBarContainerView<Content: View>: View {
    
    @Binding var selection: TabBarItemView
    @State private var tabs: [TabBarItemView] = []
    
    let content: Content
    
    init(selection: Binding<TabBarItemView>, @ViewBuilder content: () -> Content) {
        self._selection = selection
        self.content = content()
    }
    
    var body: some View {
        ZStack(alignment: .bottom) {
            
            content
                .ignoresSafeArea()
            
            CustomGuestTabBarView(tabs: tabs, selection: $selection, localSelection: selection)
        }
       
        .onPreferenceChange(GuestTabBarItemsPreferenceKey.self, perform: { value in
            self.tabs = value
        })
    }
}

struct GuestTabBarContainerView_Preview: PreviewProvider {
    static let tabs: [TabBarItemView] = [
        .login,
        .register,
    ]
    
    static var previews: some View {
        GuestTabBarContainerView(selection: .constant(tabs.first!)) {
            Color.red
        }
    }
}
