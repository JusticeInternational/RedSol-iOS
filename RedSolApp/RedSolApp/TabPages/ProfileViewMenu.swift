//
//  ProfileMenuView.swift
//  RedSolApp
//
//  Created by Ashley Raigosa on 6/15/21.
//

import SwiftUI

struct ProfileViewMenu: View {
    
    var firstName: String = "Nombre"
    var lastName: String = "Apellido"
    var email: String = "correo@correo.com"
    var blueColor: Color = Color(red: 82 / 255, green: 130 / 255, blue: 240 / 255)
    
    var body: some View {
        
        VStack(alignment: .leading) {
            HStack {
                Image(systemName: "person.fill")
                    .foregroundColor(blueColor)
                    .imageScale(.large)
                Text("Profile")
                    .foregroundColor(.gray)
                    .font(.headline)
            }
            .padding(.top, 100)
            HStack {
                Image(systemName: "envelope")
                    .foregroundColor(.gray)
                    .imageScale(.large)
                Text("Messages")
                    .foregroundColor(.gray)
                    .font(.headline)
            }
                .padding(.top, 30)
            HStack {
                Image(systemName: "gear")
                    .foregroundColor(.gray)
                    .imageScale(.large)
                Text("Settings")
                    .foregroundColor(.gray)
                    .font(.headline)
            }
            .padding(.top, 30)
            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .edgesIgnoringSafeArea(.all)
    }
}

struct ProfileViewMenu_Previews: PreviewProvider {
    static var previews: some View {
        ProfileViewMenu()
    }
}
