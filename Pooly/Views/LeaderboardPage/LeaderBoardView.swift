//
//  LeaderBoardView.swift
//  Pooly
//
//  Created by Jack on 1/01/24.
//

import SwiftUI

struct LeaderBoardView: View {
    
    // TODO: Hardcoded test data
    
    let users: [UserPooly]
    
    init() {
        let url = Bundle.main.url(forResource: "users", withExtension: "json")!
        let data = try! Data(contentsOf: url)
        users = try! JSONDecoder().decode([UserPooly].self, from: data).sorted { $0.current_position < $1.current_position }
    }

    
    var body: some View {
        ScrollView {
           AccountTileView()
            VStack() {
                ForEach(users, id: \.self) { user in
                    UserImageNameView(user: user, users: users)
                                         .padding(.bottom, 20)
                }
            }
            .padding(.horizontal, 24)
            .padding(.top, 20)
        }
    }
}

#Preview {
    LeaderBoardView()
}
