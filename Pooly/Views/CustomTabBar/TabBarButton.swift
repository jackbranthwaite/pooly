//
//  TabBarButton.swift
//  Pooly
//
//  Created by Jack on 1/01/24.
//

import SwiftUI

struct TabBarButton: View {
    
    var buttonText: String
    var imageName: String
    var isActive: Bool
    
    var body: some View {
        GeometryReader { geo in
            HStack (alignment: .center, spacing: 6){
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 12, height: 18)
                Text(buttonText)
                    .font(.custom("buttonFont", fixedSize: 13))
            }.frame(width: geo.size.width, height: geo.size.height)
        }
    }
}

#Preview {
    TabBarButton(buttonText: "Account", imageName: "person", isActive: true)
}
