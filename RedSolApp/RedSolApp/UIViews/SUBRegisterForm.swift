//
//  SUBRegisterForm.swift
//  RedSolApp
//
//  Created by Ashley Raigosa on 6/11/21.
//

import SwiftUI

struct SUBRegisterForm: View {
    
    @State private var isActive: Bool = false
    
    @State var fullName = ""
    @State var email = ""
    @State var password = ""
    @State var passwordCopy = ""        // password to be checked against password
    
    // finalize registration
    func Register() {
        
    }
    
    
    var body: some View {
        ZStack {

            RoundedRectangle(cornerRadius: 10).foregroundColor(.white).frame(width: 375, height: 570)
                .offset(y: -10)
            
            VStack {
                VStack(spacing: 20) {
                    Text("Registrate").font(.title3).bold().foregroundColor(.blue)
                        .padding()
                    
                    // MARK: - Contents to fill out for form
                    TextField("Nombre y Apellido", text: $fullName) .padding()
                        .overlay(RoundedRectangle(cornerRadius: 30).stroke(Color.gray, lineWidth: 1.0))
                        .scaleEffect(0.85)
                        .disableAutocorrection(true)
                        .autocapitalization(.none)
                    
                    TextField("Correo Electronico", text: $email) .padding()
                        .overlay(RoundedRectangle(cornerRadius: 30).stroke(Color.gray, lineWidth: 1.0))
                        .scaleEffect(0.85)
                        .disableAutocorrection(true)
                        .autocapitalization(.none)
                    
                    SecureField("Contraseña", text: $password) .padding()
                        .overlay(RoundedRectangle(cornerRadius: 30).stroke(Color.gray, lineWidth: 1.0))
                        .scaleEffect(0.85)
                        .disableAutocorrection(true)
                        .autocapitalization(.none)
                        
                    
                    SecureField("Confirmar Contraseña", text: $passwordCopy) .padding()
                        .overlay(RoundedRectangle(cornerRadius: 30).stroke(Color.gray, lineWidth: 1.0))
                        .scaleEffect(0.85)
                        .disableAutocorrection(true)
                        .autocapitalization(.none)
                }
                .offset(y: -25)     // space from button
                .padding()          // adjust to size of button
                Button(action: { Register() }) {
                    Text("Iniciar Sesion")
                        .frame(width: 320, height: 50)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(14)
                    
                    NavigationLink(destination: Home(), isActive: $isActive) {
                        EmptyView()
                    }
                
                }
                
                
                Button {
                    print("Login screen")
                } label: {
                    Text("Ya tienes una cuenta? Inicia Sesion").underline()
                    
                    NavigationLink(destination: LoginScreen(), isActive: $isActive) {
                        EmptyView()
                    }
                }
                .padding(50)
                
            }
            
        }
        
    }
}

struct SUBRegisterForm_Previews: PreviewProvider {
    static var previews: some View {
        SUBRegisterForm()
    }
}
