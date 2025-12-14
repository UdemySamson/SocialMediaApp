//
//  ContentView.swift
//  SocialMediaApp
//
//  Created by Alexandre Samson on 14.12.25.
//

import SwiftUI
import Firebase

struct ContentView: View {
    @State private var isLoggedIn = Auth.auth().currentUser != nil
    var body: some View {
        if isLoggedIn {
            //MainView()
        } else {
            NavigationView {
                VStack {
                    NavigationLink(destination: LoginView()) {
                        Text("Login")
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(Color.white)
                            .cornerRadius(8)
                    }
                    .padding()
                    NavigationLink(destination: RegisterView()) {
                        Text("Registrieren")
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(Color.white)
                            .cornerRadius(8)
                    }
                    .padding()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
