//
//  RecentGameView.swift
//  Pooly
//
//  Created by Jack on 6/01/24.
//

import SwiftUI

struct RecentGameView: View {
    var body: some View {
        HStack {
            HStack(spacing: -40) {
                Circle()
                    .stroke(Color.black,lineWidth: 0.5)
                        .background(Circle().foregroundColor(Color.orange))
                    .frame(width: 38, height: 38, alignment: .leading)
                    
                Circle()
                    .stroke(Color.black,lineWidth: 0.5)
                        .background(Circle().foregroundColor(Color.blue))
                    .frame(width: 38, height: 38, alignment: .leading)
                    
            }
                .padding()
            VStack(alignment: .leading, content: {
                Text("Jack vs Ryan")
                    .font(.system(size: 14))
                Text("Ryan won by sinking the black")
                    .font(.system(size: 9))
                    .foregroundStyle(Color.gray)
                
            })
            Spacer()
        }
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
            .background(Color.pink)
            .clipShape(RoundedRectangle(cornerRadius: 8.0))
            .padding()
        
    }
}

#Preview {
    RecentGameView()
}
