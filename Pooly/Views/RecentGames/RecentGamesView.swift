//
//  RecentGamesView.swift
//  Pooly
//
//  Created by Jack on 6/01/24.
//

import SwiftUI

struct RecentGamesView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Recent Games")
                    .font(.system(size: 14, weight: .bold))
                Spacer()
                Image(systemName: "arrow.down.left.arrow.up.right")
                    .font(.system(size: 14))
            }
            .padding()
            RecentGameView()
        }
            .frame(maxWidth: .infinity)
            .overlay(RoundedRectangle(cornerRadius: 12).stroke( (Color(red: 229/255, green: 229/255, blue: 229/255)), lineWidth: 1))
            .background(Color(red: 241/255, green: 245/255, blue: 251/255).clipShape(RoundedRectangle(cornerRadius:12)))
            .padding(.vertical, 24)
            .padding(.horizontal, 24)
        Spacer()
    }
}

#Preview {
    RecentGamesView()
}
