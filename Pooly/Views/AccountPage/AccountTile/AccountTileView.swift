//
//  AccountTileView.swift
//  Pooly
//
//  Created by Jack on 5/01/24.
//

import SwiftUI

struct AccountTileView: View {
    
    
    var body: some View {
        
        VStack() {
            HStack {
                Circle()
                    .stroke(Color.black,lineWidth: 0.5)
                    .background(Circle().foregroundColor(Color.orange))
                    .frame(width: 58, height: 58, alignment: .leading)
                    .padding(.vertical, 15)
                    .padding(.leading, 15)
                VStack(alignment: .leading, spacing: 5, content: {
                    Text("Jack Branthwaite")
                        .font(.system(size: 12, weight: .bold))
                    Text("@ClickSuite")
                        .font(.system(size: 12))
                        .foregroundStyle(.gray)
                })
                Spacer()
                
                Spacer()
                VStack(spacing: 5,content: {
                    Text("69")
                        .font(.system(size: 12, weight: .bold))
                    Text("WIN %")
                        .font(.system(size: 8))
                        .foregroundStyle(.gray)
                })
                Spacer()
                
                
                Spacer()
                VStack(spacing: 5, content: {
                    Text("🥇")
                        .font(.system(size: 14))
                    Text("RANK")
                        .font(.system(size: 8))
                        .foregroundStyle(.gray)
                })
                .padding(.trailing, 15)
            }
            HStack() {
                Text("LAST 5 GAMES" )
                    .font(.system(size: 10))
                    .foregroundStyle(.gray)
                Spacer()
                HStack {
                    
                    Image(uiImage: UIImage(named: "W")!)
                    
                    Image(uiImage: UIImage(named: "L")!)
                    Image(uiImage: UIImage(named: "W")!)
                    Image(uiImage: UIImage(named: "W")!)
                    Image(uiImage: UIImage(named: "W")!)
                    
                }
                
            }
            .padding(.leading, 15)
            .padding(.trailing, 15)
            .padding(.bottom, 15)
            
        }
        .frame(maxWidth: .infinity, maxHeight: 120)
        .overlay(RoundedRectangle(cornerRadius: 12).stroke( (Color(red: 229/255, green: 229/255, blue: 229/255)), lineWidth: 1))
        .background(Color(red: 241/255, green: 245/255, blue: 251/255).clipShape(RoundedRectangle(cornerRadius:12)))
        .padding(.top, 10)
        .padding(.horizontal, 24)
    }
}

struct AccountTileView_Previews: PreviewProvider {
    static var previews: some View {
        AccountTileView()
    }
}
