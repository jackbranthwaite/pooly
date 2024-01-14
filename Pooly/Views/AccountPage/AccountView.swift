//
//  SwiftUIView.swift
//  Pooly
//
//  Created by Jack on 1/01/24.
//

import SwiftUI

struct AccountView: View {
    var body: some View {
        ScrollView {
            AccountTileView()
            LeaderboardTileView()
            RecentGamesView()
        }
        .frame(maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    AccountView()
}
