//
//  PrimaryButtonView.swift
//  Pooly
//
//  Created by Jack Branthwaite on 26/01/24.
//

import SwiftUI

struct PrimaryButtonView: View {
    
    let text: String
    let clicked: (() -> Void)
    
    
    var body: some View {
        Button(action: clicked) {
            Rectangle()
                .overlay(content: {
                    HStack(content: {
                        Text(text)
                            .font(.system(size: 14))
                            .foregroundStyle(Color(red: 238/255, green: 238/255, blue: 238/255))
                            .padding(.leading)
                    })
                })
                .frame(maxWidth: .infinity, minHeight: 50, maxHeight: 50)
                .cornerRadius(12)
                .foregroundStyle(Color(red: 69/255, green: 4/255, blue: 115/255, opacity: 1))
        }
           
        
    }
}

struct PrimaryButtonView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            PrimaryButtonView(text: "Click Here") {
                print("Help Me")
            }
        }
    }
}
