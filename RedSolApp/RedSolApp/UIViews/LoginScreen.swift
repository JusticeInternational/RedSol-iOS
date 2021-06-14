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
    @State private var isRegisterViewActive: Bool = false
    @State private var isHomeViewActive: Bool = false
    
//    @State var selectedItem

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
    
    func register() {
//        self.isRegisterScreenActive.toggle()
        print ("registrate")
    }
    
    func facebookLogIn() {
        print("Log in w/ facebook")
    }
    func googleLogIn() {
        print("Log in w/ google")
    }
    
    func resetPassword() {
        print("Recuperar Contreseña")
    }
    
    func continueWithoutRegistering() {
        print("Continuar sin registrarse")
    }
    

    var body: some View {
        NavigationView {
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
                    
                    // MARK: - logo, title, Textfields
                    VStack() {
                        Image("RedSolidariaLogo_Title")
                            .resizable()
                            .frame(width: 225, height: 225)
                            .padding(30)
                    
                        TextField("Correo o ID", text: $displayName) .padding()
                            .overlay(RoundedRectangle(cornerRadius: 30).stroke(Color.gray, lineWidth: 1.0))
                            .scaleEffect(0.85)
                            .disableAutocorrection(true)
                            .autocapitalization(.none)

                        TextField("Contraseña", text: $email) .padding()
                            .overlay(RoundedRectangle(cornerRadius: 30).stroke(Color.gray, lineWidth: 1.0))
                            .scaleEffect(0.85)
                            .disableAutocorrection(true)
                            .autocapitalization(.none)
                    //MARK: - Sign up Handling
                                
                        if (error) {
                            Text("unable to sign up")
                        }
                    }
                    .padding()
                            
                //MARK: - Sign up Options
                    
                    VStack(spacing: 20) {
                        
                        Button(action: signUp) {
                            
                            Text("Iniciar Sesion")
                                .frame(width: 320, height: 50)
                                .background(Color.blue)
                                .foregroundColor(.white)
                                .cornerRadius(14)
                            
                            NavigationLink(destination: Home(), isActive: $isRegisterViewActive) {
                                EmptyView()
                            }
                                
                        }
                        
                        Button(action: { register() }) {
                            
                            
                            Text("Registrate")
                                .frame(width: 320, height: 50)
                                .overlay(RoundedRectangle(cornerRadius: 14).stroke(Color.blue, lineWidth: 1.0))
                                .autocapitalization(.none)
                            
                            NavigationLink(destination: RegisterScreen(), isActive: $isActive) {
                                EmptyView()
                            }
                                
                        }
                        
                        Button(action: { resetPassword() }) {
                            Text("Recuperar contreseña")
                                .underline()
                        }
                        .font(.system(.subheadline))
                        
                        Button(action: { continueWithoutRegistering() }) {
                            Text("Continuar sin registrarse")
                                .underline()
                        }
                        .font(.system(.subheadline))
                      
                        VStack(spacing: 10) {
                            Button(action: { facebookLogIn() }) {
                                
                                Text("Ingresa con Facebook")
                                    .frame(width: 335, height: 50)
                                    .background(Color(red: 60 / 255, green: 90 / 255, blue: 153 / 255))
                                    .foregroundColor(.white)
                                    .cornerRadius(15.0)
                                    .overlay(Image("FacebookLogo").resizable().frame(width: 50, height: 50).position(x: 35, y: 25))
                                    
                            }
                        
                            NavigationLink(destination: LoginScreen(), isActive: $isActive) {
                                EmptyView()
                            }
                                    
                            Button(action: { googleLogIn() }) {
                                
                                
                                Text("Ingresa con Google")
                                    .frame(width: 335, height: 50)
                                    .background(Color(.white))
                                    .foregroundColor(Color(.darkGray))
                                    .cornerRadius(15.0)
                                    .overlay(Image("GoogleLogo").resizable().frame(width: 40, height: 40).position(x: 40, y: 25))
                                    .shadow(radius: 3)
                                
                                }
                            NavigationLink(destination: LoginScreen(), isActive: $isActive) {
                                EmptyView()
                            }
                        }
                        
                    }
                }
            }
            .navigationBarTitle("")
            .navigationBarHidden(true)
        }

    }
        
}

struct LoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreen()
    }
}
