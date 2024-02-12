//
//  LoginView.swift
//  Pooly
//
//  Created by Jack on 6/02/24.
//

import SwiftUI
import Firebase


struct LoginView: View {
    
    @Binding var userIsLoggedIn: Bool
    
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        VStack(spacing: 20){
            Text("Welcome")
            TextField(text: $email, prompt: Text("Your email")) {
                Text("Email")
            }
                .modifier(TextFieldModifierView())
            
            SecureField(text: $password, prompt: Text("Your Password")) {
                Text("Password")
            }
            .modifier(TextFieldModifierView())
            
            PrimaryButtonView(text: "Sign In"){
                login()
            }
        }
        .frame(maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
        .padding(.horizontal, 20)
        .onAppear() {
            Auth.auth().addStateDidChangeListener { auth, user in
                if(user != nil) {
                    self.userIsLoggedIn.toggle()
                }
            }
        }
    }
    
    func login() {
        Auth.auth().signIn(withEmail: email, password: password) { result, error in
            if(error != nil){
                print(error!.localizedDescription)
            }
        }
    }
}
struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        
        LoginView(userIsLoggedIn: .constant(false))
    }
}
