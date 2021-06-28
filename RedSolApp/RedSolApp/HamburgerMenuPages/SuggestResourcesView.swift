//
//  SuggestResources.swift
//  RedSolApp
//
//  Created by Ashley Raigosa on 6/21/21.
//

import SwiftUI

struct SuggestResourcesView: View {
    
    @State var organizationName: String = ""
    @State var webPage: String = ""
    @State var location: String = ""        // note this needs to be fixed to take state, address etc.
    @State var telephoneNumber: String = ""
    @State var description: String = ""
    
    func sendInformation() {
        print("sending information...")
    }
    
    func cancel() {
        print("cancel!")
    }
    
    var body: some View {
        VStack(spacing: 30) {
            
            VStack(alignment: .leading) {
                Text("Nombre de la organización")
                    .font(.custom("Roboto-Regular", size: 18))
                    .foregroundColor(Color.gray)
                TextField("", text: $organizationName)
                    .padding()
                    .overlay(RoundedRectangle(cornerRadius: 30).stroke(Color.gray, lineWidth: 1.0))
                    .disableAutocorrection(true)
                    .autocapitalization(.none)

            }
            
            VStack(alignment: .leading) {
                Text("Página Web")
                    .font(.custom("Roboto-Regular", size: 18))
                    .foregroundColor(Color.gray)

                TextField("", text: $webPage)
                    .padding()
                    .overlay(RoundedRectangle(cornerRadius: 30).stroke(Color.gray, lineWidth: 1.0))
                    .disableAutocorrection(true)
                    .autocapitalization(.none)

            }
            
            VStack(alignment: .leading) {
                Text("Ubicación")
                    .font(.custom("Roboto-Regular", size: 18))
                    .foregroundColor(Color.gray)

                TextField("", text: $location)
                    .padding()
                    .overlay(RoundedRectangle(cornerRadius: 30).stroke(Color.gray, lineWidth: 1.0))
                    .disableAutocorrection(true)
                    .autocapitalization(.none)

            }
                    
            VStack(alignment: .leading) {
                Text("Teléfono")
                    .font(.custom("Roboto-Regular", size: 18))
                    .foregroundColor(Color.gray)

                TextField("", text: $telephoneNumber)
                    .padding()
                    .overlay(RoundedRectangle(cornerRadius: 30).stroke(Color.gray, lineWidth: 1.0))
                    .disableAutocorrection(true)
                    .autocapitalization(.none)

            }
            
            VStack(alignment: .leading) {
                Text("Descripción")
                    .font(.custom("Roboto-Regular", size: 18))
                    .foregroundColor(Color.gray)

                TextField("", text: $description)
                    .frame(height: 100)
                    .padding()
                    .overlay(RoundedRectangle(cornerRadius: 30).stroke(Color.gray, lineWidth: 1.0))
                    .disableAutocorrection(true)
                    .autocapitalization(.none)
                    

            }
            
            HStack(spacing: 2) {
                Button(action: { sendInformation() }) {
                    Text("Enviar")
                        .frame(width: 200, height: 50)
                        .overlay(RoundedRectangle(cornerRadius: 14).stroke(Color.blue, lineWidth: 1.0))
                        .autocapitalization(.none)
                        .foregroundColor(customBlue)
                    
                }
                
                Button(action: { cancel() }) {
                    Text("Cancelar")
                        .frame(width: 200, height: 50)
                        .overlay(RoundedRectangle(cornerRadius: 14).stroke(Color.blue, lineWidth: 1.0))
                        .autocapitalization(.none)
                }
            }
        }
        .padding()
        
        
        
    }
}

struct SuggestResourcesView_Previews: PreviewProvider {
    static var previews: some View {
        SuggestResourcesView()
    }
}
