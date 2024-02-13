//
//  PlayCardView.swift
//  Pooly
//
//  Created by Jack Branthwaite on 26/01/24.
//

import SwiftUI

struct PlayCardView: View {
    
    @State private var showSheet: Bool = false
    
    var body: some View {
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
        .onTapGesture {
            showSheet.toggle()
        }
        .sheetPresentation(isPresented: $showSheet, sheetView: {
            VStack(alignment: .leading){
                ScrollView() {
                    AccountTileView()
                }
                .padding(.top, 20)
                HStack {
                    PrimaryButtonView(text: "Play Now" ) {
                        print("Play time")
                    }
                    .padding()
                }
                .background(Color.white)
                .overlay(Rectangle().frame(width: nil, height: 0.25, alignment: .top).foregroundColor(Color.gray), alignment: .top)
            }
                .frame(maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                .background(Color.white)
                
        }, onDismiss: {
           
        })
    }
    
   
}

#Preview {
    PlayCardView()
}
