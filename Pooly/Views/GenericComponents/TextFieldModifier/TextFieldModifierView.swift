//
//  TextFieldModifierView.swift
//  Pooly
//
//  Created by Jack on 6/02/24.
//

import SwiftUI

struct TextFieldModifierView: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .background(Color(red: 246/255, green: 246/255, blue: 246/255))
            .cornerRadius(12)
            .overlay(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(Color(red: 229/255, green: 229/255, blue: 229/255), lineWidth: 1)
            )
            .font(.system(size: 14))
            
    }
}


