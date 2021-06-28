//
//  SUBRegisterForm.swift
//  RedSolApp
//
//  Created by Ashley Raigosa on 6/11/21.
//

import SwiftUI

struct SUBRegisterForm: View {
    
//    @ObservedObject var presentationMode: Binding<PresentationMode>
    
    @State private var isHomeViewActive: Bool = false
    @State private var isOrganizationNavigationViewActive: Bool = false

    @State private var isLoginViewActive: Bool = false

    @State var fullName = ""
    @State var email = ""
    @State var password = ""
    @State var passwordCopy = ""        // password to be checked against password
    
    // finalize registration
    func register() {
        isOrganizationNavigationViewActive.toggle()
        
    }
    
    
    var body: some View {
            ZStack {

                RoundedRectangle(cornerRadius: 10).foregroundColor(.white).frame(width: 375, height: 600)
                    .offset(y: -10)
                
                VStack {
                    VStack(spacing: 20) {
                        Text("Registrate")
                            .font(.custom("Roboto-Bold", size: 20))
                            .bold()
                            .foregroundColor(.blue)
                            .padding()
                        
                        // MARK: - Contents to fill out for form
                        TextField("Nombre y Apellido", text: $fullName) .padding()
                            .font(.custom("Roboto-Regular", size: 17))
                            .overlay(RoundedRectangle(cornerRadius: 30).stroke(Color.gray, lineWidth: 1.0))
                            .scaleEffect(0.85)
                            .disableAutocorrection(true)
                            .autocapitalization(.none)
                        
                        TextField("Correo Electronico", text: $email) .padding()
                            .font(.custom("Roboto-Regular", size: 17))
                            .overlay(RoundedRectangle(cornerRadius: 30).stroke(Color.gray, lineWidth: 1.0))
                            .scaleEffect(0.85)
                            .disableAutocorrection(true)
                            .autocapitalization(.none)
                        
                        SecureField("Contraseña", text: $password) .padding()
                            .font(.custom("Roboto-Regular", size: 17))
                            .overlay(RoundedRectangle(cornerRadius: 30).stroke(Color.gray, lineWidth: 1.0))
                            .scaleEffect(0.85)
                            .disableAutocorrection(true)
                            .autocapitalization(.none)
                            
                        
                        SecureField("Confirmar Contraseña", text: $passwordCopy) .padding()
                            .font(.custom("Roboto-Regular", size: 17))
                            .overlay(RoundedRectangle(cornerRadius: 30).stroke(Color.gray, lineWidth: 1.0))
                            .scaleEffect(0.85)
                            .disableAutocorrection(true)
                            .autocapitalization(.none)
                    }
                    .offset(y: -25)     // space from button
                    .padding()          // adjust to size of button
                    Button(action: { register() }) {
                        Text("Iniciar Sesion")
                            .font(.custom("Roboto-Bold", size: 20))
                            .frame(width: 320, height: 50)
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(14)
                        
                        NavigationLink(destination: OrganizationNavigationView(), isActive: $isOrganizationNavigationViewActive) {
                            EmptyView()
                        }
                    
                    }
                    
                    
                    Button {
                        //
                    }
                    label: {
                        Text("Ya tienes una cuenta?").underline()
                            .font(.custom("Roboto-Light", size: 18)) + Text(" Inicia Sesion").underline()
                            .font(.custom("Roboto-Medium", size: 18))
                        
                    
                        NavigationLink(destination: LoginView(), isActive: $isLoginViewActive) {
                            EmptyView()
                        }

                    }

                    .padding(50)
                    
                }
                
                
            }
            .navigationBarTitle("")
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)


        }
        
            
}

struct SUBRegisterForm_Previews: PreviewProvider {
    static var previews: some View {
        SUBRegisterForm()
    }
}