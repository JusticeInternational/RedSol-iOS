//
//  SUBRegisterForm.swift
//  RedSolApp
//
//  Created by Ashley Raigosa on 6/11/21.
//

import SwiftUI

struct SUBRegisterForm: View {
    
    @State var fullName = ""
    
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10).foregroundColor(.white)
            
            VStack {
                Text("Registrate").font(.title3).bold().foregroundColor(.blue)
                
                Text("Nombre y Apellido")
                TextField("ej: Nombre y Apellido", text: $fullName) .padding()
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
