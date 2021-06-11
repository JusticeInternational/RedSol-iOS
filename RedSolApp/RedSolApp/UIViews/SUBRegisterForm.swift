//
//  SUBRegisterForm.swift
//  RedSolApp
//
//  Created by Ashley Raigosa on 6/11/21.
//

import SwiftUI

struct SUBRegisterForm: View {
    
    @State var fullName = ""
    @State var email = ""
    @State var password = ""
    @State var passwordCopy = ""        // password to be checked against password
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10).foregroundColor(.white)
            
            VStack {
                Text("Registrate").font(.title3).bold().foregroundColor(.blue)
                
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
        }
        
    }
}

struct SUBRegisterForm_Previews: PreviewProvider {
    static var previews: some View {
        SUBRegisterForm()
    }
}
