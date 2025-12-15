//
//  RegisterView.swift
//  SocialMediaApp
//
//  Created by Alexandre Samson on 14.12.25.
//

import Foundation
import SwiftUI
import FirebaseAuth

struct RegisterView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var errorMessage = ""
    @State private var showAlert = false
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
            
            Button(action: register) {
                Text("Registrieren")
                    .frame(maxWidth: .infinity)
                    .padding()
                    //.background(content: Color.green)
            }
        }
    }
    private func register() {
        Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
            if let error = error {
                errorMessage = error.localizedDescription
            } else {
                print("User Created")
            }
        }
    }
}
