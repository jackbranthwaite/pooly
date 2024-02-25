//
//  LeaderboardTileView.swift
//  Pooly
//
//  Created by Jack on 6/01/24.
//

import SwiftUI

struct LeaderboardTileView: View {
    
    // TODO: Hardcoded test data
    
    let users: [UserPooly]
    
    init() {
        let url = Bundle.main.url(forResource: "users", withExtension: "json")!
        let data = try! Data(contentsOf: url)
        users = try! JSONDecoder().decode([UserPooly].self, from: data).sorted { $0.current_position < $1.current_position }
    }
    
    var body: some View {
        VStack {
            HStack {
                Text("Leaderboard")
                    .font(.system(size: 14, weight: .bold))
                Spacer()
                Image(systemName: "arrow.down.left.arrow.up.right")
                    .font(.system(size: 14))
            }
                .padding(.horizontal, 16)
                .padding(.top, 16)
                .padding(.bottom, 10)
            VStack {
                
                ForEach(users.prefix(3)) { user in
                    UserImageNameView(user: user, users: users)
                }
                
            }
                .padding(.horizontal, 16)
           
        }
        .frame(maxWidth: .infinity)
        .overlay(RoundedRectangle(cornerRadius: 12).stroke( (Color(red: 229/255, green: 229/255, blue: 229/255)), lineWidth: 1))
        .background(Color(red: 241/255, green: 245/255, blue: 251/255).clipShape(RoundedRectangle(cornerRadius:12)))
        .padding(.top, 10)
        .padding(.horizontal, 24)
    }
}

#Preview {
    LeaderboardTileView()
}
