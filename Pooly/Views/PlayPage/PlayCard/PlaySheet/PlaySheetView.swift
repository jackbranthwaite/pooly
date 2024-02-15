//
//  PlaySheetView.swift
//  Pooly
//
//  Created by Jack on 15/02/24.
//

import SwiftUI

struct PlaySheetView: View {
    var body: some View {
        VStack(alignment: .leading){
            AccountTileView()
                .padding(.top, 60)
            LeaderboardTileView()
            HStack {
                PrimaryButtonView(text: "Play Now" ) {
                    print("Play time")
            }
                .padding()
                
            }
        }
            .frame(maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
            .background(Color.white)
    }
}

#Preview {
    PlaySheetView()
}
