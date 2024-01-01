//
//  Header.swift
//  Pooly
//
//  Created by Jack on 1/01/24.
//

import SwiftUI

struct Header: View {
    var body: some View {
        HStack{
            Text("🎱 Pooly")
                .font(.system(size: 14))
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
        .padding(.horizontal, 24)
    }
}

#Preview {
    Header()
}
