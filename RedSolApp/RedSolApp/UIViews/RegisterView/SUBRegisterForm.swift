//
//  SUBRegisterForm.swift
//  RedSolApp
//
//  Created by Ashley Raigosa on 6/11/21.
//

import SwiftUI

struct SUBRegisterForm: View {
    
//    @ObservedObject var presentationMode: Binding<PresentationMode>
    
    // check box variables
    @State private var checkedTermsAndConditions = false
    @State private var checkedPrivacyPolicy = false
    
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
                    .offset(y: -15)     // space from button
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
                    
                    VStack(alignment: .leading, spacing: 20) {
                        HStack(spacing: 0) {
                            CheckBoxView(checked: $checkedTermsAndConditions)
                            Text("He leido y acepto")
                            
                            Link(" Terminos y Condiciones", destination: URL(string: "https://gmail.com")!)
                        }
                        
                        
                        HStack(spacing: 0) {
                            CheckBoxView(checked: $checkedPrivacyPolicy)
                            Text("Entiendo y acepto las")
                            Link(" Politicas de Privacidad", destination: URL(string: "https://gmail.com")!)
                        }

                    }
                    .padding()
                    .scaleEffect(0.95)
                    

                    Button {
                        //
                    }
                    label: {
                        Text("Ya tienes una cuenta?").underline()
                            .font(.custom("Roboto-Light", size: 16)) + Text(" Inicia Sesion").underline()
                            .font(.custom("Roboto-Medium", size: 16))
                        
                    
                        NavigationLink(destination: LoginView(), isActive: $isLoginViewActive) {
                            EmptyView()
                        }

                    }

                    .padding(20)
                    
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
