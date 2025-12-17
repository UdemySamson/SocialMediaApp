//
//  UserSession.swift
//  SocialMediaApp
//
//  Created by Alexandre Samson on 15.12.25.
//

import Foundation
import FirebaseAuth
import Combine

class UserSession: ObservableObject {
    @Published var isLoggedIn: Bool = Auth.auth().currentUser != nil
}
