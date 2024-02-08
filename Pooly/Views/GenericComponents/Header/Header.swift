//
//  Header.swift
//  Pooly
//
//  Created by Jack on 1/01/24.
//

import SwiftUI
import Firebase

struct Header: View {
    
    @State private var modal: Bool = false
    
    var body: some View {
        HStack{
            Text("🎱 Pooly")
                .font(.system(size: 14))
                .bold()
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
        .padding(.horizontal, 24)
        .onTapGesture {
            modal = true
        }
        .alert(isPresented: $modal, content: {
            Alert(title: Text( "Are you sure you want to sign out?"), primaryButton: .destructive(Text("Sign Out")) {
                do {
                    try Auth.auth().signOut()
                } catch{
                    print("Sign out could not be completed")
                }

            }, secondaryButton: .cancel())
        })
        
            
        
    }
}

#Preview {
    Header()
}
