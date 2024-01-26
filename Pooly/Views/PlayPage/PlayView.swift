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
                HStack {
                    Circle()
                        .stroke(Color.black,lineWidth: 0.5)
                        .background(Circle().foregroundColor(Color.orange))
                        .padding(.vertical, 16)
                        .padding(.leading, 16)
                        .padding(.trailing, 6)
                    
                    VStack(alignment: .leading, spacing: 2, content: {
                        Text("Ryan Allen")
                            .font(.system(size: 11, weight: .bold))
                        Text("@JuniorFilms")
                            .font(.system(size: 11))
                            .foregroundStyle(.gray)
                    })
                    Spacer()
                    Text("🎱")
                        .padding(.trailing, 16)
                    
                }
                .frame(maxWidth: .infinity, maxHeight: 79)
                .overlay(RoundedRectangle(cornerRadius: 12).stroke( (Color(red: 229/255, green: 229/255, blue: 229/255)), lineWidth: 1))
                .background(Color(red: 241/255, green: 245/255, blue: 251/255).clipShape(RoundedRectangle(cornerRadius:12)))
                .padding(.top, 30)
                
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
