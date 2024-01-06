//
//  UserImageNameView.swift
//  Pooly
//
//  Created by Jack on 6/01/24.
//

import SwiftUI

struct UserImageNameView: View {
    var body: some View {
        HStack {
            Text("1")
                .font(.system(size: 12))
                .background(Rectangle().fill(Color.white).cornerRadius(4.0).frame(width: 20, height: 20))
                .multilineTextAlignment(.center)
                .padding(10)
            Circle()
                .stroke(Color.black,lineWidth: 0.5)
                .background(Circle().foregroundColor(Color.orange))
                .frame(width: 40, height: 40, alignment: .leading)
                
            VStack(alignment: .leading, spacing: 2, content: {
                Text("Jack Branthwaite")
                    .font(.system(size: 11, weight: .bold))
                Text("@ClickSuite")
                    .font(.system(size: 11))
                    .foregroundStyle(.gray)
            })
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
        .padding(.bottom, 10)
    
        
    }
        
}

#Preview {
    UserImageNameView()
}
