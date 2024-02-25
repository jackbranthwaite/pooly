//
//  RegisterView.swift
//  Pooly
//
//  Created by Jack on 11/02/24.
//

import SwiftUI
import Firebase

@MainActor
final class RegisterUserViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    
    func register() async throws {
        guard !email.isEmpty, !password.isEmpty else {
            print("No email or password found")
            return
        }
        try await AuthenticationManager.shared.createUser(email: email, password: password)
    }
}

struct RegisterView: View {
    
    @StateObject var viewModel = RegisterUserViewModel()
    
    @Binding var userIsLoggedIn: Bool
    
    @State private var name: String = ""
    @State var chosenColor: Color = Color(red: 222/255, green:181/255, blue: 255/255)
    

    var body: some View {
        VStack(alignment: .center, spacing: 20){
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
            TextField(text: $name, prompt: Text("Your first name")) {
                Text("First Name")
            }
                .modifier(TextFieldModifierView())
            TextField(text: $viewModel.email, prompt: Text("Your email")) {
                Text("Email")
            }
                .modifier(TextFieldModifierView())
            
            SecureField(text: $viewModel.password, prompt: Text("Your Password")) {
                Text("Password")
            }
            .modifier(TextFieldModifierView())
            
            PrimaryButtonView(text: "Sign Up"){
                Task {
                    do {
                        try await viewModel.register()
                        userIsLoggedIn = true
                        print ("Success")
                        
                    } catch {
                        print("Error: \(error)")
                    }
                }
            }
        }
        .padding(.horizontal, 20)
        .frame(maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
        .onAppear() {
            Auth.auth().addStateDidChangeListener { auth, user in
                if(user != nil) {
                    self.userIsLoggedIn.toggle()
                }
            }
        }
    }
    
    func setColour(colour: Color) {
        chosenColor = colour
    }
    
}

struct RegisterView_Previwes: PreviewProvider {
    static var previews: some View {
        
        RegisterView(userIsLoggedIn: .constant(false))
    }
}
