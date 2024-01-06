//
//  ButtonView.swift
//  Pooly
//
//  Created by Jack on 6/01/24.
//

import SwiftUI

struct ButtonView: View {
    var body: some View {
        Rectangle()
            .overlay(content: {
                HStack(content: {
                    Text("View More")
                        .font(.system(size: 11))
                        .foregroundStyle(.black)
                        .padding(.leading)
                    Spacer()
                    Image(systemName: "chevron.right")
                        .foregroundStyle(.black)
                        .font(.system(size: 11))
                        .padding(.trailing)
                })
            })
            .frame(maxWidth: .infinity, maxHeight: 42)
            .cornerRadius(8)
            .foregroundStyle(Color(red: 207/255, green: 214/255, blue: 244/255, opacity: 0.4))
            
    }
}

#Preview {
    ButtonView()
}
