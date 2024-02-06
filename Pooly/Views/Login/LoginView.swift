//
//  LoginView.swift
//  Pooly
//
//  Created by Jack on 6/02/24.
//

import SwiftUI

struct LoginView: View {
    
    @State private var name: String = ""
    @State private var password: String = ""
    
    func submit() {
        print("Sign me up")
    }
    
    var body: some View {
        VStack(spacing: 20){
            Text("Complete Your Profile")
            Circle()
                .stroke(Color.black,lineWidth: 0.5)
                .background(Circle().foregroundColor(Color(red: 222/255, green: 181/255, blue: 255/255)))
                .frame(width: 130, height: 130)
            HStack(){
                Circle()
                    .stroke(Color.black,lineWidth: 0.5)
                    .background(Circle().foregroundColor(Color(red: 222/255, green: 181/255, blue: 255/255)))
                    .frame(width: 22, height: 22)
                    .padding(.top, -20)
                Circle()
                    .stroke(Color.black,lineWidth: 0.5)
                    .background(Circle().foregroundColor(Color(red: 181/255, green: 242/255, blue: 255/255)))
                    .frame(width: 22, height: 22)
                Circle()
                    .stroke(Color.black,lineWidth: 0.5)
                    .background(Circle().foregroundColor(Color(red: 229/255, green: 243/255, blue: 140/255)))
                    .frame(width: 22, height: 22)
                Circle()
                    .stroke(Color.black,lineWidth: 0.5)
                    .background(Circle().foregroundColor(Color(red: 255/255, green: 197/255, blue: 144/255)))
                    .frame(width: 22, height: 22)
                    .padding(.top, -20)
            }
            .padding(.bottom, 20)
            TextField(text: $name, prompt: Text("Your Name")) {
                Text("Name")
            }
                .modifier(TextFieldModifierView())
            
            SecureField(text: $password, prompt: Text("Your Password")) {
                Text("Password")
            }
            .modifier(TextFieldModifierView())
            
            PrimaryButtonView(text: "Complete"){
                submit()
            }
        }
        .padding(.horizontal, 20)
    }
}
#Preview {
    LoginView()
}
