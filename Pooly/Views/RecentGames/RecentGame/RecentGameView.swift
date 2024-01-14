//
//  RecentGameView.swift
//  Pooly
//
//  Created by Jack on 6/01/24.
//

import SwiftUI

struct RecentGameView: View {
    var body: some View {
        HStack(alignment: .center) {
            HStack(spacing: -15) {
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
            VStack(alignment: .center, spacing: -25, content: {
                
                Circle()
                    .foregroundStyle(Color.green)
                    .frame(width: 12, height: 12)
                    .overlay( content: {
                        Text("W")
                            .foregroundStyle(Color.white)
                            .font(.system(size: 8))
                    })
                    .padding(.leading, 18)
                    .zIndex(1.0)
                Circle()
                    .stroke(Color.black,lineWidth: 0.5)
                    .background(Circle().foregroundColor(Color.blue))
                    .frame(width: 25, height: 25, alignment: .leading)
                    .padding()
            })
        
            
        }
        .frame(maxWidth: .infinity)
        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: 8.0))
        .padding(.horizontal, 15)
        .padding(.bottom, 15)
            
        
    }
}

#Preview {
    RecentGameView()
}
