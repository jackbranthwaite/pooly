//
//  PlayView.swift
//  Pooly
//
//  Created by Jack on 1/01/24.
//

import SwiftUI

struct PlayView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, content: {
                Text("Who do you want to play?")
                    .bold()
                PlayCardView()
                Spacer()
                
                PrimaryButtonView(text: "Father I would like a game") {
                    print("Click Me")
                }
            })
            .frame(maxWidth: .infinity, alignment: .leading) 
            .padding(.horizontal, 24)
            .padding(.top, 40)
            
                
        }
    }
}

#Preview {
    PlayView()
}
