//
//  LoginView.swift
//  Pooly
//
//  Created by Jack on 6/02/24.
//

import SwiftUI
import Firebase

@MainActor
final class LoginUserViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    
    func login() async throws {
        guard !email.isEmpty, !password.isEmpty else {
            print("No email or password found")
            return
        }
        try await AuthenticationManager.shared.signInUser(email: email, password: password)
    }
}


struct LoginView: View {
    
    @StateObject private var viewModel = LoginUserViewModel()
    
    @Binding var userIsLoggedIn: Bool
    
    var body: some View {
        VStack(spacing: 20){
            Text("Welcome")
            TextField(text: $viewModel.email, prompt: Text("Your email")) {
                Text("Email")
            }
                .modifier(TextFieldModifierView())
            
            SecureField(text: $viewModel.password, prompt: Text("Your Password")) {
                Text("Password")
            }
            .modifier(TextFieldModifierView())
            
            PrimaryButtonView(text: "Sign In"){
                Task {
                    do {
                        try await viewModel.login()
                        userIsLoggedIn = true
                        return
                    } catch {
                        print(error)
                    }
                }
            }
        }
        .frame(maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
        .padding(.horizontal, 20)
        
    }
    
    
}
struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        
        LoginView(userIsLoggedIn: .constant(false))
    }
}
