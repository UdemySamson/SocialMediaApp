//
//  LoginView.swift
//  SocialMediaApp
//
//  Created by Alexandre Samson on 14.12.25.
//

import Foundation
import SwiftUI
import FirebaseAuth

struct LoginView: View {
    @EnvironmentObject var session: UserSession
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var errorMessage = ""
    @State var showAlert = false
    @State private var alertMessage = ""
    
    var body: some View {
        VStack {
            TextField("E-mail Adresse", text: $email)
                .autocorrectionDisabled()
                .autocapitalization(.none)
                .padding()
                .background(Color(.secondarySystemBackground))
            
            SecureField("Passwort", text: $password)
                .autocorrectionDisabled()
                .autocapitalization(.none)
                .padding()
                .background(Color(.secondarySystemBackground))
            
            Button(action: login) {
                Text("Login")
                    .frame(maxWidth: .infinity)
                    .padding()
                    //.background(content: Color.green)
            }
        }
    }
    private func login() {
        Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
            if let error = error {
                errorMessage = error.localizedDescription
            } else {
                alertMessage = "Du bist nun eingeloggt!"
                showAlert = true
                errorMessage = ""
            }
            
        }
    }
}
