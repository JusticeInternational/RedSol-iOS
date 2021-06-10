//
//  LoginScreen.swift
//  RedSolApp
//
//  Created by Ashley Raigosa on 2/21/21.
//  Copyright © 2021 Ashley Raigosa. All rights reserved.
//

import SwiftUI
import Apollo

struct LoginScreen: View {
    @State private var isActive: Bool = false

    @State var displayName: String = ""
    @State var email: String = ""
    @State var password: String = ""
    @State var loading = false
    @State var error = false
    
    // GraphQL
    @State var category = ""
    
    func signUp() {
        print("signed up")
    }
    
    func registrate() {
        print ("registrate")
    }
    
    func facebookLogIn() {
        print("Log in w/ facebook")
    }
    func googleLogIn() {
        print("Log in w/ google")
    }
    

    var body: some View {
            //MARK: - UITextFields
                VStack(spacing: 110) {
                    
//                    Text(category).onAppear(perform: {
//                        Network.shared.apollo.fetch(query: LoadUsedCategoriesQuery()) { result in
//                            switch result {
//                            case .success(let graphQLResult):
//                                DispatchQueue.main.async {
//                                    if let category = graphQLResult.data?.usedCategories?[0]?.name {
//                                        self.category = category
//                                    }
//                                }
//                            case .failure(let error):
//                                print("Error: \(error)")
//                            }
//                        }
//
//
//                    })
                    VStack(spacing:10) {
                        Image("RedSolidariaLogo")
                            .resizable()
                            .frame(width: 225, height: 225)
                            .padding(30)
                
                    
                    
                        TextField("Correo o ID", text: $displayName) .padding()
                            .overlay(RoundedRectangle(cornerRadius: 30).stroke(Color.gray, lineWidth: 1.0))
                            .scaleEffect(0.85)
    //                        .autocapitalization(.none)
    //                        .disableAutocorrection(.none)
    //
                        TextField("Contraseña", text: $email) .padding()
                            .overlay(RoundedRectangle(cornerRadius: 30).stroke(Color.gray, lineWidth: 1.0))
                            .scaleEffect(0.85)
    //                        .autocapitalization(.none)
    //
                        
    //                        .environmentObject(self.session)
                        
                        
            //MARK: - Sign up Handling
                        
                        if (error) {
                            Text("unable to sign up")
                        }
                        
            //MARK: - Sign up Options
                VStack(spacing: 20) {
                    
                    Button(action: signUp) {
                        
                        
                        Text("Iniciar Sesion")
                            .frame(width: 335, height: 50)
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(15.0)
                        
                        NavigationLink(destination: LoginScreen(), isActive: $isActive) {
                            EmptyView()
                        }
                            
                    }
                    Button(action: { registrate() }) {
                        
                        
                        Text("Registrate")
                            .frame(width: 335, height: 50)
                            .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.blue, lineWidth: 1.0))
                            .autocapitalization(.none)
                        
                        NavigationLink(destination: LoginScreen(), isActive: $isActive) {
                            EmptyView()
                        }
                            
                    }
                
                    Text("Recuperar Contraseña").foregroundColor(Color.blue).fontWeight(.light)
                    .underline()
                    .padding()
                    .font(.system(.subheadline))
                                
                    }
                        
                        
                    Button(action: facebookLogIn) {
                        
                        
                        Text("Ingresa con Facebook")
                            .frame(width: 335, height: 50)
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(15.0)
                        
                        NavigationLink(destination: LoginScreen(), isActive: $isActive) {
                            EmptyView()
                        }
                                
                    }
                            
                    Button(action: googleLogIn) {
                        
                        
                        Text("Ingresa con Google")
                            .frame(width: 335, height: 50)
                            .background(Color.red.opacity(0.75))
                            .foregroundColor(.white)
                            .cornerRadius(15.0)
                        
                        NavigationLink(destination: LoginScreen(), isActive: $isActive) {
                            EmptyView()
                        }
                                    
                    }
                }

                
            }
        }
    
}

struct LoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreen()
    }
}
