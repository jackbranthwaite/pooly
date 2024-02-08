//
//  LoginView.swift
//  Pooly
//
//  Created by Jack on 6/02/24.
//

import SwiftUI
import Firebase


struct LoginView: View {
    
    @State private var email: String = ""
    @State private var password: String = ""
//    TODO: THis needs to be taken up to the root view for Auth
    @State private var userIsLoggedIn: Bool = false
    
    @State var chosenColor: Color = Color(red: 222/255, green:181/255, blue: 255/255)
    
   
    
    var body: some View {
        VStack(spacing: 20){
            Text("Complete Your Profile")
            Circle()
                .stroke(Color.black,lineWidth: 0.5)
                .background(Circle().foregroundColor(chosenColor))
                .frame(width: 130, height: 130)
            HStack(){
                Circle()
                    .stroke(Color.black,lineWidth: 0.5)
                    .background(Circle().foregroundColor(Color(red: 222/255, green: 181/255, blue: 255/255)))
                    .frame(width: 22, height: 22)
                    .padding(.top, -20)
                    .onTapGesture {
                        setColour(colour: Color(red: 222/255, green: 181/255, blue: 255/255))
                    }
                Circle()
                    .stroke(Color.black,lineWidth: 0.5)
                    .background(Circle().foregroundColor(Color(red: 181/255, green: 242/255, blue: 255/255)))
                    .frame(width: 22, height: 22)
                    .onTapGesture {
                        setColour(colour: Color(red: 181/255, green: 242/255, blue: 255/255))
                    }
                Circle()
                    .stroke(Color.black,lineWidth: 0.5)
                    .background(Circle().foregroundColor(Color(red: 229/255, green: 243/255, blue: 140/255)))
                    .frame(width: 22, height: 22)
                    .onTapGesture {
                        setColour(colour: Color(red: 229/255, green: 243/255, blue: 140/255))
                    }
                Circle()
                    .stroke(Color.black,lineWidth: 0.5)
                    .background(Circle().foregroundColor(Color(red: 255/255, green: 197/255, blue: 144/255)))
                    .frame(width: 22, height: 22)
                    .padding(.top, -20)
                    .onTapGesture {
                        setColour(colour: Color(red: 255/255, green: 197/255, blue: 144/255))
                    }
            }
            .padding(.bottom, 20)
            TextField(text: $email, prompt: Text("Your email")) {
                Text("Email")
            }
                .modifier(TextFieldModifierView())
            
            SecureField(text: $password, prompt: Text("Your Password")) {
                Text("Password")
            }
            .modifier(TextFieldModifierView())
            
            PrimaryButtonView(text: "Sign Up"){
                register()
            }
            PrimaryButtonView(text: "Sign In"){
                login()
            }
        }
        .padding(.horizontal, 20)
        .onAppear() {
            Auth.auth().addStateDidChangeListener { auth, user in
                if(user != nil) {
                    userIsLoggedIn.toggle()
                }
            }
        }
    }
    
    func setColour(colour: Color) {
        chosenColor = colour
    }
    
    func register() {
        Auth.auth().createUser(withEmail: email, password: password) { result, error in
            if(error != nil){
                print(error!.localizedDescription)
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
#Preview {
    LoginView()
}
