////
////  SessionStore.swift
////  RedSolApp
////
////  Created by Ashley Raigosa on 2/21/21.
////  Copyright © 2021 Ashley Raigosa. All rights reserved.
////
//
//import SwiftUI
////import Firebase
//import Combine
//
//class SessionStore : ObservableObject {
//    var didChange = PassthroughSubject<SessionStore, Never>()
//    var session: User? { didSet { self.didChange.send(self) }}
//    var handle: AuthStateDidChangeListenerHandle?
//    
//    func listen () {
//        // monitor authentication changes using firebase
//        handle = Firebase.Auth.auth().addStateDidChangeListener { (auth, user) in
//            if let user = user {
//                // if we have a user, create a new user model
//                print("Got user: \(user)")
//                self.session = User(
//                    uid: user.uid,
//                    displayName: user.displayName,
//                    email: user.email
//                )
//            } else {
//                // if we don't have a user, set our session to nil
//                self.session = nil
//            }
//        }
//    }
//        func signUp(
//            email: String,
//            password: String,
//            handler: @escaping AuthDataResultCallback
//            ) {
//            Firebase.Auth.auth().createUser(withEmail: email, password: password, completion: handler)
//    }
//
//        func signIn(
//            email: String,
//            password: String,
//            handler: @escaping AuthDataResultCallback
//            ) {
//            Firebase.Auth.auth().signIn(withEmail: email, password: password, completion: handler)
//        }
//
//        func signOut () -> Bool {
//            do {
//                try Firebase.Auth.auth().signOut()
//                self.session = nil
//                return true
//            } catch {
//                return false
//            }
//        }
//
//        func unbind () {
//            if let handle = handle {
//                Firebase.Auth.auth().removeStateDidChangeListener(handle)
//            }
//        }
//}
